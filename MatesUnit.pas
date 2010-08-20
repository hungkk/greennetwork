unit MatesUnit;

interface

 uses 
      SysUtils,
      cStrings,
      
      BF2ServerInfo,
      
      MUnit,
      Options;

 type
  TCompareBy = (fpPrefix, fpName, fpClantag, fpAll);
  TGPriority = (pStars, pBolds, pNotes, pAll);//(pFull, pFast);

             (*
               43: {1,2,3,4}     -Stars
               43: [12]          -Bolds  BoldText
               43: (5)           -Noted  Italic
               43: {10},[12],(5)    none, Bold, Italic


              *)
  TGetOut    = (sHtml_Stars, sHtml_Bolds, sHtml_Notes, sHtml_All);

  const
  CTAG_POS_BEFORE = 1;
  CTAG_POS_AFTER  = 2;
  CTAG_POS_INSIDE = 3;
  CTAG_POS_ANY    = 4;
  CTAG_POS_ALL    = 10;

  NON_MATE   = -1;

  STARS_GOLD   = 0;
  STARS_BLACK  = 1;
  STARS_SILVER = 2;
  STARS_RED    = 3;
  STARS_GREEN  = 4;
  STARS_BLUE   = 5;
  STARS_NOSTAR = 6;
  STARS_NONE   = 7; //7

  C_GOLD   = '#C9A007';//$0007A0C9;
  C_BLACK  = '#000000';//$000D0D0D;
  C_SILVER = '#808080';//$00808080;
  C_RED    = '#990101';//$00010199;
  C_GREEN  = '#266113';//$00136126;
  C_BLUE   = '#3896EA';//$00EA9638;

 Type
  PMInfo = ^TMInfo;

  TMInfo = packed record
    OutText  : string[99];
    HasMates : Boolean;
  end;

  TMParams = packed record
   Mate : Shortint;
   Star : Shortint;
   NameBold : Boolean;
   PrefBold : Boolean;
   TagBold  : Boolean;
   TagIndex : Integer;
   Note     : string[255];
  end;

 //Wide - 43 [1,2,7,9]
 Procedure GetMatesCout(const Item: TBF2ServerInfoItem; var Info: TMInfo; const G: TGetOut);
 //Simple - 43 {12}
//+ Procedure GetMatesCoutHtmlOut(const Item: TBF2ServerInfoItem; var Info: TMInfo);


 Procedure GetMateParameters(const  Name: string; Priority: TGPriority; var Params : TMParams );

 function GetMateIndex(SrcName: String; CompareParam: TCompareBy; const cTAGindex : Integer = CTAG_POS_ALL ): Integer;

 function IsBold(INDEX: Integer; CompareParam: TCompareBy): Boolean;
 function isStar(INDEX: Integer; CompareParam: TCompareBy): Integer;
 function isNote(INDEX: Integer; CompareParam: TCompareBy): String;
// function ExtractPrefix(PName: string):string;
// function ExtractName(PName: string): string;
// function AdvPos(const F, S: AnsiString; const CaseSensitive: Boolean = False): Integer;
 //function S7(const MainStr, NewStr: String):string;
 function GetOut : TGetOut;

 //function FormatPlayerName(nameB, tagB: Boolean; TagStr, PName: string):String;
 
// function AdvCasePosEx(const F, S: AnsiString; const CaseSensitive: Boolean = False; Offset: integer= 1): Integer;

 function FormatPlayerName(nameB, tagB: Boolean; Tagindex:Integer; PName: string): String;
 function FormatPlayerPrefix(prefixB: Boolean; PName: String): String;
 function GetQuotedTagName(Index: integer; Name: String): string;

 procedure AdvGetMateParameters(const  Bots : string; Player: TPlayerInfo; Priority: TGPriority; var Params : TMParams );


implementation



               // HtmlOutW

        



 Procedure GetMatesCout(const Item: TBF2ServerInfoItem; var Info: TMInfo; const G: TGetOut);

     function PlayerBot(bots, pid, ping : string):Boolean;
     begin

       //
     end;



     function G2P(G: TGetOut): TGPriority;
     begin
       case G of
        sHtml_Stars : G2P:= pStars;
        sHtml_Bolds : G2P:= pBolds;
        sHtml_Notes : G2P:= pNotes;
        sHtml_All   : G2P:= pAll;
       end;
     end;

      function S7(const MainStr, NewStr: String):string;
      begin
       if MainStr = '' then Result:=  NewStr;
       if NewStr = '' then Result:= MainStr;

       if (MainStr <> '') and (NewStr <> '') then
       Result:= MainStr + ',' + NewStr;
      end;

 const  FontColor  = '«font color="%s"»%d«/font»';
        FontItalic = '(%d)';   //«à»   <i> </i>
        FontBold   = '«b»[%d]«/b»';

 var i, CountMates : Integer;
     Params        : TMParams;
     sGold, sBlack, sSilver, sRed, sGreen, sBlue : Integer;
     TmPStr, STARS, BOLDS, NOTES : string;

     tStars, tBolds, tNotes : Integer;


 begin
    CountMates := 0;
    tStars:= 0; tBolds:= 0; tNotes:= 0;
    sGold:= 0; sBlack:= 0; sSilver:= 0; sRed:= 0; sGreen:= 0; sBlue:= 0;
    Info.OutText := '';


   for i:= 0 to Item.TotalPlayersCount -1 do
   begin
       if Item.bf2_bots = '1' then
         if isBot(Item.BF2Player[i]) = PLAYER_BOT then Continue;

       GetMateParameters(Item.BF2Player[i].Name, G2P(G), Params );

       

       
       if Params.Mate > 0 then
       begin
        Inc(CountMates);
     
         if Info.HasMates = False Then
         Info.HasMates := True;
       end;



       if G in [sHtml_Stars, sHtml_All] then
       case Params.Star of
        STARS_GOLD   : inc(sGold);
        STARS_BLACK  : inc(sBlack);
        STARS_SILVER : inc(sSilver);
        STARS_RED    : inc(sRed);
        STARS_GREEN  : inc(sGreen);
        STARS_BLUE   : inc(sBlue);
       end;

       if G in [sHtml_Bolds, sHtml_All] then
       if Params.NameBold or Params.PrefBold or Params.TagBold then
       Inc(tBolds);

       if G in [sHtml_Notes, sHtml_All] then
       if Params.Note <> EmptyStr then Inc(tNotes);


   end;
       // (sHtml_Stars, sHtml_Bolds, sHtml_Notes, sHtml_All);

   if (G = sHtml_Stars) and (Info.HasMates)  then
   begin
    if sGold   > 0  then STARS := S7(STARS, Format(FontColor, [C_GOLD, sGold]) );
    if sBlack  > 0  then STARS := S7(STARS, Format(FontColor, [C_BLACK, sBlack]) );
    if sSilver > 0  then STARS := S7(STARS, Format(FontColor, [C_SILVER, sSilver]));
    if sRed    > 0  then STARS := S7(STARS, Format(FontColor, [C_RED, sRed]));
    if sGreen  > 0  then STARS := S7(STARS, Format(FontColor, [C_GREEN, sGreen]));
    if sBlue   > 0  then STARS := S7(STARS, Format(FontColor, [C_BLUE, sBlue]));

    if STARS <> '' then Info.OutText :=  IntToStr(CountMates) + ' : {' + STARS + '}' else
    Info.OutText :=  IntToStr(CountMates);
    Exit;
   end;

   if (G = sHtml_Bolds) and Info.HasMates then
   begin
     if tBolds > 0 then
      Info.OutText :=  IntToStr(CountMates) + ' : ' + Format(FontBold, [tBolds])  else
      Info.OutText :=  IntToStr(CountMates);
     Exit;
   end;

   if (G = sHtml_Notes) and Info.HasMates then
   begin
     if tNotes > 0 then
      Info.OutText :=  IntToStr(CountMates) + ' : ' + Format(FontItalic, [tNotes])  else
      Info.OutText :=  IntToStr(CountMates);
     Exit;
   end;



   if (G = sHtml_All) and Info.HasMates then
   begin

      tStars := sGold + sBlack + sSilver + sRed + sGreen + sBlue;
      if tStars > 0 then
      begin
       STARS :=  '{' +  IntToStr(tStars) + '}';
       TmPStr := S7(TmPStr, STARS);
      end;

      if tBolds > 0  then
      begin
       BOLDS  := Format(FontBold, [tBolds]);
       TmPStr := S7(TmPStr, BOLDS);
      end;

      if tNotes > 0 then
      begin
       NOTES := Format(FontItalic, [tNotes])  ;
       TmPStr := S7(TmPStr, NOTES);
      end;

     // tBolds : tNotes
     if TmPStr <> EmptyStr then
     Info.OutText := IntToStr(CountMates) +  ' : ' + TmPStr else
     Info.OutText := IntToStr(CountMates);
   end;

 end;

 //(pStars, pBolds, pNotes, pAll);
 Procedure GetMateParameters(const  Name: string; Priority: TGPriority; var Params : TMParams );
 var PlayerIndex : Integer;
 begin
 
   with Params do
   begin
    Mate     := 0;
    Star     := STARS_NONE;
    NameBold := False;
    PrefBold := False;
    TagBold  := False;
    Note     := '';
   end;

   PlayerIndex := -1;

    {************** PlayerName ****************}
    PlayerIndex := GetMateIndex( Name, fpName);
    if PlayerIndex > NON_MATE then
    begin
     
     Params.Mate     := 1;

     if Priority in [pBolds, pAll] then
     Params.NameBold := IsBold(PlayerIndex, fpName);

     if Priority in [pStars, pAll] then
     Params.Star := isStar(PlayerIndex, fpName);

    // Form1.Memo1.Lines.Add('N'+IntToStr(Params.Star));

     if Priority in [pNotes, pAll] then
     Params.Note     := isNote(PlayerIndex, fpName);
    end;

    case Priority of
     pBolds : if Params.NameBold = True   then Exit;
     pStars : if Params.Star > STARS_NONE then Exit;
     pNotes : if Params.Note > EmptyStr   then Exit;
    end;

    {***************** Prefix *******************}

    PlayerIndex := GetMateIndex( Name, fpPrefix);
    if PlayerIndex > NON_MATE then
    begin
     Params.Mate     := Params.Mate + 2;
   
     if (Priority in [pBolds, pAll]) and (Params.NameBold = False) then
     Params.PrefBold := IsBold(PlayerIndex, fpPrefix);

     if (Priority in [pStars, pAll]) and (Params.Star >= STARS_NOSTAR{STARS_NONE}) then
     Params.Star     := isStar(PlayerIndex, fpPrefix);

     if (Priority in [pNotes, pAll]) and (Params.Note = EmptyStr) then
     Params.Note     := isNote(PlayerIndex, fpPrefix);
    end;

    case Priority of
     pBolds : if Params.NameBold = True   then Exit;
     pStars : if Params.Star > STARS_NONE then Exit;
     pNotes : if Params.Note > EmptyStr   then Exit;
    end;

    {***************** CLANTAG *******************}
    PlayerIndex := GetMateIndex( Name, fpClantag);
    if PlayerIndex > NON_MATE then
    begin
     Params.TagIndex := PlayerIndex;
     Params.Mate     := Params.Mate + 4;

     if (Priority in [pBolds, pAll])  then
     Params.TagBold  := IsBold(PlayerIndex, fpClantag);

     if (Priority in [pStars, pAll]) and (Params.Star >= STARS_NOSTAR {STARS_NONE}) then
     Params.Star     := isStar(PlayerIndex, fpClantag);

     if (Priority in [pNotes, pAll]) and (Params.Note = EmptyStr) then
     Params.Note     := isNote(PlayerIndex, fpClantag);
    end;

 end;
    {
function AdvCasePosEx(const F, S: AnsiString; const CaseSensitive: Boolean = False; Offset: integer = 1): Integer;
begin
  if CaseSensitive then
     AdvCasePosEx:= ALPosEx( ALLowerCase(F), ALLowerCase(S), Offset ) else
     AdvCasePosEx:= ALPosEx( F, S, Offset );
end; }

function GetMateIndex(SrcName: String; CompareParam: TCompareBy; const cTAGindex : Integer = CTAG_POS_ALL ): Integer;
var tmpName, tmpStr : string;  iPos : Integer;
begin
  Result := NON_MATE;
  if Trim(SrcName) = '' then Exit;

   if CompareParam in [fpAll, fpPrefix ] then
   begin
     tmpName:= ExtractPrefix(SrcName);
     if tmpName <> '' then
     for Result:=0 to OptionsForm.NextGridPrefix.RowCount-1 do
     if StrCompareNoCase(tmpName, OptionsForm.NextGridPrefix.Cells[2, Result]) = 0 then Exit; //           {PrefixListBox.Items.Strings[Result]} ) = 0 then Exit;
   end;

   if CompareParam in [fpAll, fpName] then
   begin
     tmpName:= ExtractName(SrcName);
     if tmpName <> '' then
     for Result:=0 to OptionsForm.NextGridPname.RowCount-1 do
     if StrCompareNoCase(tmpName, OptionsForm.NextGridPname.Cells[2, Result] ) = 0 then Exit;
   end;


   if CompareParam in [fpClantag, fpAll] then
   begin
      tmpName:= ExtractName(SrcName);
      if tmpName <> '' then
      for Result:=0 to OptionsForm.NextGridClantag.RowCount -1 do
      begin
       // {TAGNAME}
         tmpStr :=   OptionsForm.NextGridClantag.Cells[2, Result];
       //  Form1.Memo1.Lines.Add(tmpName + ':' +tmpStr);
         if tmpStr = '' then Continue;

         {Before}
          if OptionsForm.NextGridClantag.Cell[3, Result].AsInteger in [CTAG_POS_ALL, CTAG_POS_BEFORE] then
            if AdvCasePos( tmpStr , tmpName, OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean ) = 1 then
            Exit else Continue;

         {After}
          if OptionsForm.NextGridClantag.Cell[3, Result].AsInteger in [CTAG_POS_ALL,  CTAG_POS_AFTER] then
          begin
           iPos:= cStrings.PosStrRev(tmpStr , tmpName, 1, OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean ); // =
            if (iPos > 0) and (iPos = Length(tmpName) - Length(tmpStr) +1) then Exit else Continue;
          end;

         {Inside}
          if OptionsForm.NextGridClantag.Cell[3, Result].AsInteger in [CTAG_POS_ALL, CTAG_POS_INSIDE] then
          begin
            iPos := AdvCasePosEx(tmpStr , tmpName, OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean, 2);
            if (iPos > 1) and (iPos < Length(tmpName) - Length(tmpStr)-1) then  Exit else Continue;
          end;

         {Any}
          if OptionsForm.NextGridClantag.Cell[3, Result].AsInteger in [CTAG_POS_ALL, CTAG_POS_ANY ] then
          begin
            if AdvCasePos( tmpStr , tmpName, OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean ) > 0 then
            Exit else Continue;
          end;
         end;



         (*
         iPos   :=   AdvPos( tmpStr , tmpName, OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean );  // PosStr( tmpStr , tmpName, 1,  OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean );
         if iPos < 1 then Continue;

         {Before}
         if cTAGindex in [CTAG_POS_ALL, CTAG_POS_BEFORE] then
           if (iPos = 1) and (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 1 ) then Exit;
         {After}
         if cTAGindex in [CTAG_POS_ALL, CTAG_POS_AFTER] then
           if ( (iPos + Length(tmpStr)-1) = Length(tmpName) ) and  (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 2 ) then Exit;
         {Inside}
         if cTAGindex in [CTAG_POS_ALL, CTAG_POS_INSIDE] then
           if ((iPos > 1) and ( (iPos + Length(tmpStr)-1) < Length(tmpName) )) and  (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 3 )  then Exit;
         {Any}
         if cTAGindex in [CTAG_POS_ALL, CTAG_POS_ANY] then
           if ( iPos >= 1) and  (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 4)  then Exit;
           *)
      end;
  // end;

   Result := NON_MATE;
end;



function IsBold(INDEX: Integer; CompareParam: TCompareBy): Boolean;
begin
  case CompareParam of
   fpPrefix   : Result:= OptionsForm.NextGridPrefix.Cell[1, index].AsBoolean;
   fpName     : Result:= OptionsForm.NextGridPname.Cell[1, index].AsBoolean;
   fpClantag  : Result:= OptionsForm.NextGridClantag.Cell[1, index].AsBoolean;
  end;
end;

function isStar(INDEX: Integer; CompareParam: TCompareBy): Integer;
begin
  case CompareParam of
   fpPrefix   : Result:= OptionsForm.NextGridPrefix.Cell[4, index].AsInteger;
   fpName     : Result:= OptionsForm.NextGridPname.Cell[4, index].AsInteger;
   fpClantag  : Result:= OptionsForm.NextGridClantag.Cell[5, index].AsInteger;
  end;
end;

function isNote(INDEX: Integer; CompareParam: TCompareBy): String;
begin
  case CompareParam of
   fpPrefix   : Result:= OptionsForm.NextGridPrefix.Cells[3, index];
   fpName     : Result:= OptionsForm.NextGridPname.Cells[3, index];
   fpClantag  : Result:= OptionsForm.NextGridClantag.Cells[6, index];
  end;
end;

{
function ExtractPrefix(PName: string):string;
begin
  result:= StrBefore(PName, ' ', False );
end;

function ExtractName(PName: string): string;
begin
  result := StrAfter( PName, ' ', True);
  if Trim(Result) = '' then result:= PName;
end;

function AdvPos(const F, S: AnsiString; const CaseSensitive: Boolean = False): Integer;
begin
  if CaseSensitive then
   AdvPos := ALPos( ALLowerCase(F), ALLowerCase(S) ) else
   AdvPos := ALPos( F, S );
end;
}


 function GetOut : TGetOut;
 begin
    case OptionsForm.ShowMatesStyle.itemIndex of
    0: Result:= sHtml_Stars;
    1: Result:= sHtml_Bolds;
    2: Result:= sHtml_Notes;
    3: Result:= sHtml_All;
    end;
 end;

 function FormatPlayerPrefix(prefixB: Boolean; PName: String):String;
 const bold = '«b»%s«/b»';
 begin
   Result := PName;
   if (Result <> '') and prefixB then
   Result:=  Format(Bold, [Result]);
 end;

 function FormatPlayerName(nameB, tagB: Boolean; Tagindex:Integer; PName: string):String;
 const bold = '«b»[%s]«/b»';
 var s: string;
 begin
   Result := PName;
   if (Result <> '') then
   begin
     if nameB then
     begin
       Result:=  Format(Bold, [Result]);
       Exit;
     end;

     if tagB then
       Result:= GetQuotedTagName(Tagindex, Result);

   end;


 end;




 function GetQuotedTagName(Index: integer; Name: String): string;
 const B_OPEN = '«b»'; B_CLOSE = '«/b»';
 var   tStr: string; iPos: Integer;
 begin
         tStr   :=   OptionsForm.NextGridClantag.Cells[2, Index];
         Result := Name;
  
              (* *)
          {Before}
          if OptionsForm.NextGridClantag.Cell[3, Index].AsInteger in [CTAG_POS_ALL, CTAG_POS_BEFORE] then
          if AdvCasePos( tStr , Name, OptionsForm.NextGridClantag.Cell[4, Index].AsBoolean ) = 1 then
          begin
              Insert(B_OPEN,  Result, 0 );
              Insert(B_CLOSE, Result, Length(tStr) + Length(B_OPEN) + 1 );
              Exit;
          end;

         {After}
          if OptionsForm.NextGridClantag.Cell[3, Index].AsInteger in [CTAG_POS_ALL,  CTAG_POS_AFTER] then
          begin
           iPos:= cStrings.PosStrRev(tStr , Name, 1, OptionsForm.NextGridClantag.Cell[4, Index].AsBoolean ); // =
           if (iPos > 0) and (iPos = Length(Name) - Length(tStr)) then
           begin
              Insert(B_OPEN,  Result, iPos-1 );
              Insert(B_CLOSE, Result, Length(Name) + Length(B_OPEN) + 1 );   Exit;
           end;
          end;
           
         {Inside}
          if OptionsForm.NextGridClantag.Cell[3, Index].AsInteger in [CTAG_POS_ALL, CTAG_POS_INSIDE] then
          begin
            iPos := AdvCasePosEx(tStr , Name, OptionsForm.NextGridClantag.Cell[4, Index].AsBoolean, 2);
            if (iPos > 1) and (iPos < Length(tStr) - Length(tStr)) then
            begin
              Insert(B_OPEN,  Result, iPos-1 );     //  Result
              Insert(B_CLOSE,  Result, iPos + Length(tStr)  + Length(B_OPEN) + 1 );  Exit;
            end;
          end; 

           {Any}
            if OptionsForm.NextGridClantag.Cell[3, Index].AsInteger in [CTAG_POS_ALL, CTAG_POS_ANY ] then
            iPos := AdvCasePos( tStr , Name, OptionsForm.NextGridClantag.Cell[4, Index].AsBoolean );
            if iPos > 0 then
            begin
               Insert(B_OPEN,   Result, iPos );
               Insert(B_CLOSE,  Result, iPos + Length(tStr)  + Length(B_OPEN)   );  Exit;
            end;


 end;


 procedure AdvGetMateParameters(const  Bots : string; Player: TPlayerInfo; Priority: TGPriority; var Params : TMParams );
 begin
         if Bots = '1' then
         if isBot(Player) = PLAYER_BOT then
         begin
          Params.Mate := 0;
          Params.Star := 8;
          Params.Note := '';
          Params.NameBold := False;
          Params.PrefBold := False;
          Params.TagBold  := False;

          Exit;
         end;

         GetMateParameters(Player.Name, Priority, Params);
 end;



end.
