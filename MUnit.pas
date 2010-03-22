unit MUnit;

interface

uses  Options, Menus, ShellApi, ColListb, Forms, ShlObj, 
      BF2ServerInfo, Clipbrd, ComCtrls, StdCtrls, Graphics, cStrings, Unit1,
      Windows, Messages, SysUtils, Variants, Classes, TB2Item, GeoIP, LanguageUnit, ALfcnString;

 const
   gALL = 0;
   gNoFormNoGrids = 1;
  // cPPos: array[0..3] of String = ('at the beginning', 'at the end', 'inside name', 'any where');
   PREFIX_FILE  = 'prefix.cfg';
   NAME_FILE    = 'names.cfg';
   CLANTAG_FILE = 'clantag.cfg';
   SERVERS_FILE = 'servers.cfg';

   inHost = 3;
   inName = 2;
   inPrefix = 1;

       PLAYER_REAL = 0;
       PLAYER_BOT  = 1;
       PLAYER_UNKNOWN = -1;



  type
   TFavServerInfo = packed record
    NoteText  : string[255];
    FavIndex  : SHORT;
  end;





{
type
  TCompareBy = (fpPrefix, fpName, fpClantag, fpAll);
 }



{ Routine Functions }

function AdvCasePos(const F, S: AnsiString; const CaseSensitive: Boolean = False): Integer;
function AdvCasePosEx(const F, S: AnsiString; const CaseSensitive: Boolean = False; Offset: integer = 1):Integer;


function ExtractPrefix(PName: string):string;
function ExtractName(PName: string): string;
function SafeStr2Int(Str: String):integer;

function GetOs(S : String): Integer;
function IsPassworded(S: String) : Integer;
function IsPb(S: String) : Integer;
function IsPR(S: String) : Integer;


{ Util Functions }
//function GetFavServerNote(i:Integer):string;
function ServerInFavorites(Str: String ):Integer;
function GetDefLangFile:string;
procedure ExtractRes(OutFile, ResName: string; ResType: PChar );
function RunDosAndWait(const CommandLine: AnsiString; var OutSrings: AnsiString): boolean;

{ GeoIP }

function GeoIPGetCountryName( IP: string ): string;
procedure LoadGeoIPdbFromRes(GIP: TGeoIP);


procedure SaveOptions;
procedure LoadOptions(InxType: Integer = gALL);


procedure RichEditAddColored(RE: TRichEdit; AText, BText: string; AColor, BColor: Integer);
procedure CopySelectedFromColumnListBox(Lbox: TColumnlistBox);
procedure CopySelectedFromListBox(Lbox: TlistBox);
procedure SendToClipBrd(Str: AnsiString);

procedure UpdateJoinServerList( Item: TMenuItem; Action: integer  ); overload;

procedure UpdateJoinServerList( item: TTBCustomItem ); overload;


procedure JoinToServer(ServerIP, GamePort, ServerPassword: string; AccountIndex: integer);


//procedure LoadGameSpyServers(var List: TStringList);

function GetPRExe: string;
function GetCSIDLPath( CSIDL_: Byte ):AnsiString;
function GetBF2ProfilesDir: string;
procedure WriteCustomPrefix(Prefix: string);

/////////////////////
function GetMatesCountStr(Item: TBF2ServerInfoItem ): string;
function GetMatesCountHTML(Item: TBF2ServerInfoItem ): string;
//function GetMateIndex(SrcName: String; CompareParam: TCompareBy; const cTAGindex : Integer = 10 ): Integer;
function GetMatesCount(Item: TBF2ServerInfoItem):Integer;

function IsBoldPrefix(INDEX: Integer): Boolean;
function IsBoldName(INDEX: Integer): Boolean;
function IsBoldCtag(INDEX: Integer): Boolean;

function PrefixInMates(Name: String):Integer;
function NameInMates(Name: String):Integer;


function AdvIsMate(Name: String):Variant;
function isMate(Name: String):Integer;
function isBot(P: TPlayerInfo ):Integer;
function GetPOImageIndex(Index: integer): Integer;

procedure eAddPrefix(PrefixName: String);
procedure eAddPName(PName: String);
procedure sDeletePrefix(PrefixName: String);
procedure sDeletePName(PName: String);


procedure WriteAdvServerInfo(Item: TBF2ServerInfoItem);
function MatchSearchRequest(const SrcFor: string; item: TBF2ServerInfoItem; SearchIn : integer; StartFrom : Integer = 0 ): Integer;

function GameSpyFilterQueryStr(inx: integer):string;
Function GetGSSList(const Param : Integer; var OutServers: AnsiString): integer;
Function Dos2Win(CmdLine:String; var OutText: String): boolean;

function HasInvalidChars(S: string):Boolean;

procedure UpdateDetailedInfo( RV: TRichEdit; Item: TBF2ServerInfoItem; const NameColor: integer = clNavy; ValueColor: integer = clBlack{; Note: string = ''});
procedure LoadLanguageFilesList(LLFL: TStrings);

function GetFavServer(Str: String) : TFavServerInfo;
function GetEntryValueS(Str: string; EntryIndex: Integer; const Separator : string = ';'): String;
function GetEntryValueI(Str: string; EntryIndex: Integer; const Separator : string = ';'): Integer;

implementation

uses KOLTrans, MatesUnit, UnitGrid{, GeoIP};

         {
function GetFavServerNote(i:Integer):string;
begin
  OptionsForm.
end;    }

function GetFavServer(Str: String) : TFavServerInfo;
var i: Integer;
begin
  GetFavServer.NoteText := '';
  with OptionsForm do
  begin
    i:= GridCOLStrExists(NextGridFavServers, Str, 1, False);
    if i > -1 then GetFavServer.FavIndex:= 1 else GetFavServer.FavIndex:= i;
    if i > -1 then GetFavServer.NoteText :=  NextGridFavServers.Cells[2, i];
  end;
end;



 //   1 - YEs -1 - no
function ServerInFavorites(Str:String):Integer;
var i: Integer;
begin
  with OptionsForm do
  begin
    Result:= 1;
     if GridCOLStrExists(NextGridFavServers, Str, 1, False) > -1 then Exit;
    Result:= -1;
  end;
end;


function AdvCasePos(const F, S: AnsiString; const CaseSensitive: Boolean = False): Integer;
begin
  if CaseSensitive then
   AdvCasePos := ALPos( ALLowerCase(F), ALLowerCase(S) ) else
   AdvCasePos := ALPos( F, S );
end;

function AdvCasePosEx(const F, S: AnsiString; const CaseSensitive: Boolean = False; Offset: integer = 1):integer;
begin
  if CaseSensitive then
     AdvCasePosEx:= ALPosEx( ALLowerCase(F), ALLowerCase(S), Offset ) else
     AdvCasePosEx:= ALPosEx( F, S, Offset );
end;
  

function GetDefLangFile:string;
var Path: string;
begin
   Path := ExtractFilePath(Application.ExeName)+'Lang';
   Windows.CreateDirectory( PAnsiChar(Path), nil);
   ExtractRes( Path + '\Default.lng', 'DEFLANG' ,'DAT' );
   Result:= Path + '\Default.lng';
end;

procedure ExtractRes(OutFile, ResName: string; ResType: PChar );
var
  tmpStream: TResourceStream;
begin
  tmpStream := TResourceStream.Create( HInstance, ResName, ResType );
  try
    tmpStream.SaveToFile( OutFile );
  finally
    tmpStream.Free;
  end;
end;




procedure LoadGeoIPdbFromRes(GIP: TGeoIP);
var
  tmpStream: TResourceStream;
begin
  tmpStream := TResourceStream.Create( HInstance, 'GEOIP', 'DAT' );
  try
    GIP.LoadFromStream( tmpStream );
  finally
    tmpStream.Free;
  end;
end;




procedure WriteAdvServerInfo(Item: TBF2ServerInfoItem);
begin


//
end;


function GetPOImageIndex(Index: integer): Integer;
begin
   case Index of
    0 : Result:= 2;
    1 : Result:= 1;
    2 : Result:= 0
   end;
end;


{*****************************************************}









// 1 - Bot  ; 0 - Player ; -1 unknown
function isBot(P: TPlayerInfo ):Integer;
begin
 if P.Team <> '' then
 begin
   if ((P.Pid = '0') and (P.Ping = '0')) then Result:= PLAYER_BOT else Result:= PLAYER_REAL;
 end else
  Result:= PLAYER_UNKNOWN;
end;


function IsBoldPrefix(INDEX: Integer): Boolean;
begin
  Result:= OptionsForm.NextGridPrefix.Cell[1, index].AsBoolean;
end;

function IsBoldName(INDEX: Integer): Boolean;
begin
  Result:= OptionsForm.NextGridPname.Cell[1, index].AsBoolean;
end;

function IsBoldCtag(INDEX: Integer): Boolean;
begin
  Result:= OptionsForm.NextGridClantag.Cell[1, index].AsBoolean;
end;


//-1 - Empty, 0 - No, 1-Yes, 2-Yes Bolded
function NameInMates(Name: String):Integer;
var index: Integer;
begin
   Result:= -1;
   if TRim(Name) = '' then Exit;
   Result:= 0;
   index:= GetMateIndex(Name, fpName);
   if index > -1 then
   begin
      Inc(Result);
      if IsBoldName(index) then Inc(Result);
   end;
end;

//-1 - Empty, 0 - No, 1-Yes, 2-Yes Bolded
function PrefixInMates(Name: String):Integer;
var index: Integer;
begin
   Result:= -1;
   if Trim(Name) = '' then Exit;

   Result:= 0;
   index:= GetMateIndex( Name, fpPrefix);
   if index > -1 then
   begin
      Inc(Result);
      if IsBoldPrefix(index) then Inc(Result);
   end;
end;

{
0 Non mate
1 Name mate
2 Prefix mate
3 Both mate
4 Clan tag
6 ClanTag and Prefix
  .1
}


function AdvIsMate(Name: String):Variant;
var index: Integer;
begin
   Result:= 0;

   index:= GetMateIndex(Name, fpName);
   if index > -1 then
   begin
      Inc(Result);// := 1;
      if IsBoldName(index) then Result:= Result + 0.1;
   end;

   index:= GetMateIndex( ExtractPrefix(Name), fpPrefix);
   if index > -1 then
   begin
      Inc(Result, 2);
      if IsBoldPrefix(index) then Result:= Result + 0.1;
   end;

   if (Result = 1) or (Result = 1.1) or (Result = 3) or (Result = 3.1) or (Result = 3.2) then Exit;

   index:= GetMateIndex(Name, fpClantag);
   if index > -1 then
   begin
      Inc(Result, 4);
      if IsBoldCtag(index) then Result:= Result + 0.1;
   end;


end;



// 0 -NonMate ; {1 - mate ; 2 - Bolded mAmte}

function isMate(Name: String):Integer;
var index: Integer;
begin
   Result:= 0;

   index:= GetMateIndex( ExtractPrefix(Name), fpPrefix);
   if index > -1 then
   begin
      Result := 1;
      if IsBoldPrefix(index)  then begin
        Inc(Result);
        Exit;
      end;
   end;


   index:= GetMateIndex(Name, fpName);
   if index > -1 then
   begin
      Result := 1;
      if IsBoldName(index) then begin
       Inc(Result);
       Exit;
      end;
   end;

   if Result = 1 then Exit;

   index:= GetMateIndex(Name, fpClantag);
   if index > -1 then
   begin
      Result := 1;
      if IsBoldCtag(index) then begin
       Inc(Result);
       Exit;
      end;

   end;


end;

                                              {  12(+6)
                                                12(6)
                                                12\6
                                                12/6
                                                12/(6)
                                                12/(+6)
                                                12 [+6]

                                                12[6]   }

function GetMatesCountStr(Item: TBF2ServerInfoItem ): string;
var i: Integer;   mNormal, mBolded : Integer;
begin
   mNormal:= 0;
   mBolded:= 0;

         for i:= 0 to Item.TotalPlayersCount -1 do
         case isMate( Item.BF2Player[i].Name ) of

          1 :  inc(mNormal);
          2 :  inc(mBolded);

         end;

   Result := '0';

   if (mNormal > 0) or (mBolded > 0) then
   Result:=  IntToStr(mNormal + mBolded) ;
   if mBolded > 0 then Result := Result + ' [' + IntToStr(mBolded) + ']' ;


end;

function GetMatesCountHTML(Item: TBF2ServerInfoItem ): string;
var i: Integer;   mNormal, mBolded : Integer;
begin
   mNormal:= 0;
   mBolded:= 0;

         for i:= 0 to Item.TotalPlayersCount -1 do
         case isMate( Item.BF2Player[i].Name ) of

          1 :  inc(mNormal);
          2 :  inc(mBolded);

         end;

   Result := '0';

   if (mNormal > 0) or (mBolded > 0) then
   Result:= '<font color="0000cc">' + IntToStr(mNormal + mBolded) + '</font>';
   if mBolded > 0 then Result := Result + '/<b>' + IntToStr(mBolded) + '</b>';

   Result := '<center>' + Result + '</center>';
end;


function GetMatesCount(Item: TBF2ServerInfoItem ):Integer;
var i: Integer;
begin
   Result:=0;
       for i:= 0 to Item.TotalPlayersCount -1 do {Item.CountPlayers -1 do}
         if GetMateIndex( Item.BF2Player[i].Name, fpAll ) > -1 then Inc(Result);
end;

(*
function GetMateIndex(SrcName: String; CompareParam: TCompareBy; const cTAGindex : Integer = 10 ): Integer;
var tmpName, tmpStr : string;  iPos : Integer;
begin
  Result := -1;
  if Trim(SrcName) = '' then Exit;

   if CompareParam in [fpAll, fpPrefix ] then
   begin

     if CompareParam = fpAll then tmpName:= ExtractPrefix(SrcName) else
     tmpName:= SrcName;
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
       //  
         tmpStr :=   OptionsForm.NextGridClantag.Cells[2, Result];
         if tmpStr = '' then Continue;
         iPos   :=   AdvPos( tmpStr , tmpName, OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean );  // PosStr( tmpStr , tmpName, 1,  OptionsForm.NextGridClantag.Cell[4, Result].AsBoolean );
         if iPos < 1 then Continue;

         {Before}
         if cTAGindex in [10, 0] then    if (iPos = 1) and (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 1 ) then Exit;
         {After}
         if cTAGindex in [10, 1] then    if ( (iPos + Length(tmpStr)-1) = Length(tmpName) ) and  (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 2 ) then Exit;
         {Inside}
         if cTAGindex in [10, 2] then    if ((iPos > 1) and ( (iPos + Length(tmpStr)-1) < Length(tmpName) )) and  (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 3 )  then Exit;
         {Any}
         if cTAGindex in [10, 3] then    if ( iPos >= 1) and  (OptionsForm.NextGridClantag.Cell[3, Result].AsInteger = 4)  then Exit;

      end;
   end;

   Result := -1;
end;

    *)




procedure SaveOptions;
var 
  Path: string;
begin
  Path:= ExtractFilePath(Application.ExeName);

   with OptionsForm do begin
     {Mates}
     
     NextGridPrefix.SaveToTextFile(Path  + PREFIX_FILE, ',',  #19);
     NextGridPname.SaveToTextFile(Path   + NAME_FILE, ',',    #19);
     NextGridClantag.SaveToTextFile(Path + CLANTAG_FILE, ',', #19);

     {servers list}
    //  ServersListBox.Items.SaveToFile(Path + 'servers.txt');

     NextGridFavServers.SaveToTextFile(Path + SERVERS_FILE, ',', #19);

     {General settings}
     jvpnflstrg1.WriteInteger('THREADS', threads.Value );
     jvpnflstrg1.WriteInteger('TIMEOUT', TimeOutSpin.value);
   //  jvpnflstrg1.WriteBoolean('TERMAPP', TerminateOnJoinCheckBox.Checked);
     jvpnflstrg1.WriteInteger('HIGHPLAYER', MatesColorPicker.SelectedColor );
     jvpnflstrg1.WriteInteger('HIGHSERVER', ServersColorPicker.SelectedColor);
     jvpnflstrg1.WriteInteger('FRETRYCNT', updRetrySpin.value);
     jvpnflstrg1.WriteInteger('SKIN', SkinCb.ItemIndex);
     jvpnflstrg1.WriteInteger('ONJOIN', JoinserverComboBoxActions.ItemIndex);
     jvpnflstrg1.WriteInteger('ONSTARTAPP', StartAppComboBoxActions.ItemIndex);
     jvpnflstrg1.WriteString('LANGNAME', LangNameComboBox.text);
     jvpnflstrg1.WriteInteger('VMFORMAT', ShowMatesStyle.ItemIndex);
     jvpnflstrg1.WriteBoolean('CFUPD', CheckUpdatescb.Checked);

     //jvpnflstrg1.WriteBoolean('HIDEUNA', HideInactiveCheckBox.Checked);
     {Filter}
     jvpnflstrg1.WriteBoolean('CUSTFILTER', customfiltercb.Checked);
                                                            {

     jvpnflstrg1.WriteBoolean('P64', FilterListBox.Checked[0]);
     jvpnflstrg1.WriteBoolean('P32', FilterListBox.Checked[1]);
     jvpnflstrg1.WriteBoolean('P16', FilterListBox.Checked[2]);   }

     jvpnflstrg1.WriteBoolean('M64', FilterListBox.Checked[0]);
     jvpnflstrg1.WriteBoolean('M32', FilterListBox.Checked[1]);
     jvpnflstrg1.WriteBoolean('M16', FilterListBox.Checked[2]);

     jvpnflstrg1.WriteBoolean('gpm_insurgency', FilterListBox.Checked[3]);
     jvpnflstrg1.WriteBoolean('gpm_cq',         FilterListBox.Checked[4]);
     jvpnflstrg1.WriteBoolean('gpm_skirmish',   FilterListBox.Checked[5]);
     jvpnflstrg1.WriteBoolean('gpm_training',   FilterListBox.Checked[6]);

     jvpnflstrg1.ReadBoolean('gmp_coop',        FilterListBox.Checked[7]);
     jvpnflstrg1.ReadBoolean('gmp_vehicles',    FilterListBox.Checked[8]);

     jvpnflstrg1.WriteBoolean('PB_ON',          FilterListBox.Checked[9]);
     jvpnflstrg1.WriteBoolean('POPULATED',      FilterListBox.Checked[10]);
     jvpnflstrg1.WriteBoolean('VOIP_ON',        FilterListBox.Checked[11]);
     jvpnflstrg1.WriteBoolean('NOTFULL',        FilterListBox.Checked[12]);
     jvpnflstrg1.WriteBoolean('PASSWORD',       FilterListBox.Checked[13]);


     {Accounts}
      jvpnflstrg1.DeleteValue('OAC');
      jvpnflstrg1.DeleteSubTree('OAC');
      jvpnflstrg1.WriteCollection('OAC',ColumnListBox1.ListBoxItems );

     {PR Execution}
     jvpnflstrg1.WriteString('PRPATH',     PrPAthEdit.text);
     jvpnflstrg1.WriteString('EXECPARAMS', ExecPAramsEdit.text);

    
     {********* EXECUTION ***********}
     {Update }
   //  UpdateJoinServerList(Form1.Joinnow1, 0);
   //  UpdateJoinServerList(Form1.Joinnow2, 0);
     UpdateJoinServerList(Form1.TBSubmenuItem5);
     UpdateJoinServerList(Form1.TBSubmenuItem6);
     UpdateJoinServerList(Form1.TBSubmenuItem1);
   //  UpdateJoinServerList(Form1.Joinserveras1, 0);
  end;

end;
//-----------------------
procedure LoadOptions(InxType: Integer = gALL);
var Path: string; Strs: TStringList;
begin
  Path:= ExtractFilePath(Application.ExeName);

 //{DEBUG}  Form1.NxTabSheet5.TabVisible := False;

  with OptionsForm do
  begin
     {Mates}
     if FileExists(  Path + PREFIX_FILE  ) then
      NextGridPrefix.LoadFromTextFile(Path + PREFIX_FILE, ',', #19);
     if FileExists( Path + NAME_FILE  ) then
     NextGridPname.LoadFromTextFile(Path + NAME_FILE, ',', #19);
     if FileExists( Path + CLANTAG_FILE  ) then
     NextGridClantag.LoadFromTextFile(Path + CLANTAG_FILE, ',', #19);
     if FileExists( Path + SERVERS_FILE  ) then
     NextGridFavServers.LoadFromTextFile(Path + SERVERS_FILE, ',', #19);
     {NOTE}
     NxAutoCompletionNote.Strings.CommaText := OptionsForm.jvpnflstrg1.ReadString('MRURECENTNOTE', '' );
     NoteComboBox.Items.CommaText := NxAutoCompletionNote.Strings.CommaText;


     {General settings}
     threads.Value                    := jvpnflstrg1.ReadInteger('THREADS',    10);
     TimeOutSpin.value                := jvpnflstrg1.ReadInteger('TIMEOUT',    1);
     MatesColorPicker.SelectedColor   := jvpnflstrg1.ReadInteger('HIGHPLAYER', 65484 );
     ServersColorPicker.SelectedColor := jvpnflstrg1.ReadInteger('HIGHSERVER', 10092492);
     updRetrySpin.value               := jvpnflstrg1.ReadInteger('FRETRYCNT', 0);

     SkinCb.ItemIndex                 := jvpnflstrg1.ReadInteger('SKIN', 0);
     Form1.SkinData1.Active:= jvpnflstrg1.ReadInteger('SKIN', 0) = 1;

     JoinserverComboBoxActions.ItemIndex := jvpnflstrg1.ReadInteger('ONJOIN', 2);
     StartAppComboBoxActions.ItemIndex   := jvpnflstrg1.ReadInteger('ONSTARTAPP', 0);

     ShowMatesStyle.ItemIndex := jvpnflstrg1.ReadInteger('VMFORMAT', 3);


     CheckUpdatescb.Checked:= jvpnflstrg1.ReadBoolean('CFUPD',False);



     with  LangNameComboBox do
     begin
       Items.Clear;
       Items.Add('Default');

       LoadLanguageFilesList( Items );
       ItemIndex := Items.IndexOf( jvpnflstrg1.ReadString('LANGNAME', '') );
       if ItemIndex = -1 then ItemIndex:= 0;


       ReadLng(Path + 'Lang\' + Text );
     end;

     {Filter}
     customfiltercb.Checked := jvpnflstrg1.ReadBoolean('CUSTFILTER', False);

    
                                                                   {
    FilterListBox.Checked[0]:= jvpnflstrg1.ReadBoolean('P64', True);
    FilterListBox.Checked[1]:= jvpnflstrg1.ReadBoolean('P32', False);
    FilterListBox.Checked[2]:= jvpnflstrg1.ReadBoolean('P16', False); }

    FilterListBox.Checked[0]:= jvpnflstrg1.ReadBoolean('M64', True);
    FilterListBox.Checked[1]:= jvpnflstrg1.ReadBoolean('M32', False);
    FilterListBox.Checked[2]:= jvpnflstrg1.ReadBoolean('M16', False);

    FilterListBox.Checked[3]:=  jvpnflstrg1.ReadBoolean('gpm_insurgency', True);
    FilterListBox.Checked[4]:=  jvpnflstrg1.ReadBoolean('gpm_cq',         True);
    FilterListBox.Checked[5]:=  jvpnflstrg1.ReadBoolean('gpm_skirmish',   True);
    FilterListBox.Checked[6]:=  jvpnflstrg1.ReadBoolean('gpm_training',   False);
    FilterListBox.Checked[7]:=  jvpnflstrg1.ReadBoolean('gmp_coop',       True);
    FilterListBox.Checked[8]:=  jvpnflstrg1.ReadBoolean('gmp_vehicles',   True);

    FilterListBox.Checked[9]:=   jvpnflstrg1.ReadBoolean('PB_ON',       True   );
    FilterListBox.Checked[10]:=  jvpnflstrg1.ReadBoolean('POPULATED',   True   );
    FilterListBox.Checked[11]:=  jvpnflstrg1.ReadBoolean('VOIP_ON',     True   );
    FilterListBox.Checked[12]:=  jvpnflstrg1.ReadBoolean('NOTFULL',     False   );
    FilterListBox.Checked[13]:=  jvpnflstrg1.ReadBoolean('PASSWORD',    False   );

    FilterListBox.Enabled := customfiltercb.Checked;

     {Accounts}
     jvpnflstrg1.ReadCollection('OAC',ColumnListBox1.ListBoxItems );


     {PR Execution}
     OptionsForm.PrPAthEdit.text     := OptionsForm.jvpnflstrg1.ReadString('PRPATH',    GetPRExe );
     OptionsForm.ExecPAramsEdit.text := OptionsForm.jvpnflstrg1.ReadString('EXECPARAMS', '+menu 1 +fullscreen 1');

     {Grids}
     if InxType <> gNoFormNoGrids then
     begin
       Form1.GlobalServersGrid.LoadFromIni(path + 'Settings.ini', 'FGRID' );
       Form1.GameSpyGrid.LoadFromIni( path + 'Settings.ini', 'GSGRID');
       Form1.PlayersGrid.LoadFromIni( path + 'Settings.ini', 'PGRID');
       Form1.MatestGrid.LoadFromIni( path + 'Settings.ini', 'MGRID');
       Form1.PROnlinePlayersGrid.LoadFromIni( path + 'Settings.ini', 'OPGRID');

      {DEBUG  }
       Form1.PROnlinePlayersGrid.Columns.Item[15].Visible := False;
       Form1.GameSpyGrid.Columns.Item[15].Visible := False;
       Form1.GlobalServersGrid.Columns.Item[15].Visible := False;

       Form1.PROnlinePlayersGrid.Columns.Item[14].Visible := False;
       Form1.GlobalServersGrid.Columns.Item[14].Visible := False;
       Form1.GameSpyGrid.Columns.Item[14].Visible := False;
       Form1.PlayersGrid.Columns.Item[9].Visible := False;
       Form1.MatestGrid.Columns.Item[9].Visible := False;
       Form1.MatestGrid.Columns.Item[12].Visible := False;
       Form1.PlayersGrid.Columns.Item[12].Visible := False;
      
     {FORM POS}


      Form1.Width := jvpnflstrg1.ReadInteger( 'FORMWIDTH',  757);
      Form1.Height:= jvpnflstrg1.ReadInteger( 'FORMHEIGHT', 543);

   //   if jvpnflstrg1.ReadBoolean ( 'FORVAXIMIZED', False) then Form1.WindowState := wsMaximized;

         with Form1{.TBToolbar2} do //Items[2].Items[2]  do
         begin
          TBShowServers.Items[0].Checked:= jvpnflstrg1.ReadBoolean('VS0', True);
          TBShowServers.Items[1].Checked:= jvpnflstrg1.ReadBoolean('VS1', True);
          TBShowServers.Items[2].Checked:= jvpnflstrg1.ReadBoolean('VS2', True);
          TBShowServers.Items[3].Checked:= jvpnflstrg1.ReadBoolean('VS3', True);
          TBShowServers.Items[4].Checked:= jvpnflstrg1.ReadBoolean('VS4', True);

          TBShowPlayersOnline.Items[0].Checked:= jvpnflstrg1.ReadBoolean('PO0', True);
          TBShowPlayersOnline.Items[1].Checked:= jvpnflstrg1.ReadBoolean('PO1', True);
          TBShowPlayersOnline.Items[2].Checked:= jvpnflstrg1.ReadBoolean('PO2', True);
          TBShowPlayersOnline.Items[3].Checked:= jvpnflstrg1.ReadBoolean('PO3', True);
          TBShowPlayersOnline.Items[4].Checked:= jvpnflstrg1.ReadBoolean('PO4', True);
          TBShowPlayersOnline.Items[5].Checked:= jvpnflstrg1.ReadBoolean('PO5', True);
          TBShowPlayersOnline.Items[6].Checked:= jvpnflstrg1.ReadBoolean('PO6', True);
          TBShowPlayersOnline.Items[7].Checked:= jvpnflstrg1.ReadBoolean('PO7', True);


            TBItemToolBar.Checked   := OptionsForm.jvpnflstrg1.ReadBoolean('TBAR', True);
            TBItemSearchBar.Checked := OptionsForm.jvpnflstrg1.ReadBoolean('SBAR', FAlse );
            TBItemFilterBar.Checked := OptionsForm.jvpnflstrg1.ReadBoolean('FBAR', FAlse );

            TBToolbar1.Visible      :=  TBItemToolBar.Checked;
            TBsearchToolbar.Visible := TBItemSearchBar.Checked;
            TBItemShowHideSearchBar.Checked := TBItemSearchBar.Checked;
            TBFilterlbar.Visible        :=   TBItemFilterBar.Checked;
            TBitemHideFilterBar.Checked := TBItemFilterBar.Checked;



            NxAutoCompletion1.Strings.CommaText := OptionsForm.jvpnflstrg1.ReadString('MRURECENT', '' );
            SearchComboBox.Items.CommaText := NxAutoCompletion1.Strings.CommaText;


         end;

     end;
      {********* EXECUTION ***********}
     {Update }
    //  UpdateJoinServerList(Form1.Joinnow1, 0);
    //  UpdateJoinServerList(Form1.Joinnow2, 0);
       UpdateJoinServerList(Form1.TBSubmenuItem5);
       UpdateJoinServerList(Form1.TBSubmenuItem6);
       UpdateJoinServerList(Form1.TBSubmenuItem1);
    //  UpdateJoinServerList(Form1.Joinserveras1, 0);

   end;
end;
//-----------------------
function GeoIPGetCountryName( IP: string ): string;
var
 //  GeoIP: TGeoIP;
   GeoIPCountry: TGeoIPCountry;
begin
       {
  GeoIP := TGeoIP.Create(ExtractFilePath(Application.ExeName)+'GeoIP.dat');
  try     }
    if not Assigned(Form1.GeoIP) then Exit;
    if Form1.GeoIP.GetCountry( IP , GeoIPCountry) = GEOIP_SUCCESS then
    begin
     // GeoIPCountry.CountryCode
      Result := GeoIPCountry.CountryName;
    end
    else
    begin
      Result := 'ERROR';
    end;
 { finally
    GeoIP.Free;
  end;      }
end;

function GetOs(S : String): Integer;
begin
  if s = 'win32'    then result:= 3;
  if s = 'linux'    then result:= 4;
  if s = 'linux-64' then result:= 2;
end;

function IsPassworded(S: String) : Integer;
begin
   if S = '1' then Result:=0 else Result:= 5;
end;

function IsPb(S: String) : Integer;
begin
   if S = '1' then Result:=1 else Result:= 5;
end;

function IsPR(S: String) : Integer;
begin
   if S = 'pr' then Result:=0 else
   if S = 'bf2' then Result:=1 else Result:= 5;
end;

function ExtractPrefix(PName: string):string;
begin
  result:= StrBefore(PName, ' ', False );
end;

function ExtractName(PName: string): string;
begin
  result := StrAfter( PName, ' ', True);
  if Trim(Result) = '' then result:= PName;
end;

function SafeStr2Int(Str: String):integer;
begin
  result:= KOLTrans.Str2Int(Str);
end;


procedure RichEditAddColored(RE: TRichEdit; AText, BText: string; AColor, BColor: Integer);
begin
  RE.Lines.Add(AText + BText );
  RE.SelStart := Length(RE.Lines.Text) - Length(AText + BText)-2;
  RE.SelLength:= Length(AText);
  RE.SelAttributes.Color := AColor;
  RE.SelStart := RE.SelStart + Length(AText);
  RE.SelLength:= Length(BText);
  RE.SelAttributes.Color := BColor;
  RE.SelAttributes.Style := [fsBold];
end;

procedure CopySelectedFromColumnListBox(Lbox: TColumnlistBox);
var i: Integer; s: AnsiString;
begin
     for i:=0 to Lbox.Count-1 do
      if Lbox.Selected[i] then
         s:= s + Lbox.ColumnItems[i,0] + #13#10;
  SendToClipBrd( Trim(s)); 
end;

procedure CopySelectedFromListBox(Lbox: TlistBox);
var i: Integer; s: AnsiString;
begin

  for i:=0 to Lbox.items.Count-1 do
    if Lbox.Selected[i] then
      s:= s + Lbox.Items.Strings[i] + #13#10;

 SendToClipBrd( Trim(s));
end;

procedure SendToClipBrd(Str: AnsiString);
var ClipBrd : TClipboard;
begin
  ClipBrd := TClipboard.Create;
  ClipBrd.Clear;
  ClipBrd.SetTextBuf( PAnsiChar(Str)  );
  ClipBrd.Free;
end;


procedure UpdateJoinServerList( item: TTBCustomItem );
var Titem :  TTBCustomItem; i : Integer;
begin
       for i:=item.Count -1 downto 0 do
       item.Items[i].Destroy;

    // For I:=0 to Form9.NextGrid1.RowCount-1 do
   //  begin
     for i:= 0 to OptionsForm.ColumnListBox1.Count-1 do
     begin
      Titem            := TTBCustomItem.Create(nil);
      Titem.Caption    := OptionsForm.ColumnListBox1.ColumnItems[i, 0] + ' ' + OptionsForm.ColumnListBox1.ColumnItems[i, 1];
      //Titem.Images     := Form9.ImageList1;
      Titem.ImageIndex := i;
      Titem.OnClick    := Form1.PopupActionsEnt;
      Titem.Tag        := JOINSERVER;
      item.Add(Titem); //item.Add
     end;


end;



procedure UpdateJoinServerList( Item: TMenuItem; Action: integer  );
var   mit : TMenuItem;
      i : Integer;
begin

  item.Clear;

  for i:= 0 to OptionsForm.ColumnListBox1.Count-1 do
  begin
    mit := TMenuItem.Create(item);
    mit.OnClick := Form1.PopupActionsEnt;
    mit.tag     := JOINSERVER;
    mit.ImageIndex := i;
    mit.Caption := OptionsForm.ColumnListBox1.ColumnItems[i, 0] + ' ' + OptionsForm.ColumnListBox1.ColumnItems[i, 1];
    item.Add(mit);

  end;

end;

procedure JoinToServer(ServerIP, GamePort, ServerPassword: string; AccountIndex: integer);
var s, brPath : string;
begin

   // "C:\Games\Battlefield 2\BF2.exe" +menu 1 +fullscreen 1 +modPath mods/AIX2 +joinServer 172.18.0.100 +port 16500 +PlayerPrefix ??????? +playerName ??????????????????? +playerPassword ???????????????????????
 with  OptionsForm do
 begin
   s:=  ExecParamsEdit.text  +
       ' +joinServer '    +  ServerIP  +
       ' +port '          +  GamePort  +
       ' +PlayerPrefix '  +  ColumnListBox1.ColumnItems[AccountIndex,0] +
       ' +playerName '    +  ColumnListBox1.ColumnItems[AccountIndex,1] +
       ' +playerPassword '+  ColumnListBox1.ColumnItems[AccountIndex,2];

   if Length(ServerPassword) > 0 then s:= s + ' +password ' + ServerPassword;

   brPath := PrPAthEdit.Text;

   WriteCustomPrefix(ColumnListBox1.ColumnItems[AccountIndex,0]);
 end;
 
 ShellExecute(0,'open', pChar(brPath), pChar(s), NIL, SW_SHOWNORMAL);

 case OptionsForm.JoinserverComboBoxActions.ItemIndex of
  0 : Exit;
  1 : Application.Terminate;
  2 : Application.Minimize;
  3 : Form1.JvTrayIcon1.HideApplication;
 end;

 //if OptionsForm.TerminateOnJoinCheckBox.Checked then Application.Terminate else Application.Minimize;
                                                                   //  JvTrayIcon1.HideApplication;
end;



Function Dos2Win(CmdLine:String; var OutText: String): boolean;
const BUFSIZE = 2000;
var SecAttr    : TSecurityAttributes;
    hReadPipe,
    hWritePipe : THandle;
    StartupInfo: TStartUpInfo;
    ProcessInfo: TProcessInformation;
    Buffer     : Pchar;
    WaitReason,
    BytesRead  : DWord;
    ExitCode: Cardinal;
begin
 Result := False;
 with SecAttr do
 begin
   nlength              := SizeOf(TSecurityAttributes);
   binherithandle       := true;
   lpsecuritydescriptor := nil;
 end;
 // Creazione della pipe
 if Createpipe (hReadPipe, hWritePipe, @SecAttr, 0) then
 begin
   Buffer  := AllocMem(BUFSIZE + 1);    // Allochiamo un buffer di dimensioni BUFSIZE+1
   FillChar(StartupInfo, Sizeof(StartupInfo), #0);
   StartupInfo.cb          := SizeOf(StartupInfo);
   StartupInfo.hStdOutput  := hWritePipe;
   StartupInfo.hStdInput   := hReadPipe;
   StartupInfo.dwFlags     := STARTF_USESTDHANDLES +
                              STARTF_USESHOWWINDOW;
   StartupInfo.wShowWindow := SW_HIDE;

   if CreateProcess(nil,
      PChar(CmdLine),
      @SecAttr,
      @SecAttr,
      true,
      NORMAL_PRIORITY_CLASS,
      nil,
      nil,
      StartupInfo,
      ProcessInfo) then
     begin
       // Attendiamo la fine dell'esecuzione del processo

       {
       repeat
         WaitReason := WaitForSingleObject( ProcessInfo.hProcess,100);
         Application.ProcessMessages;
       until (WaitReason <> WAIT_TIMEOUT);
       }

       repeat
         Application.ProcessMessages;
         GetExitCodeProcess(ProcessInfo.hProcess, ExitCode);
       until (ExitCode <> STILL_ACTIVE);

       repeat
         WaitReason := WaitForSingleObject( ProcessInfo.hProcess,100);
         Application.ProcessMessages;
       until (WaitReason <> WAIT_TIMEOUT);




       // Leggiamo la pipe
       Repeat
         BytesRead := 0;
         // Leggiamo "BUFSIZE" bytes dalla pipe
         ReadFile(hReadPipe, Buffer[0], BUFSIZE, BytesRead, nil);
         // Convertiamo in una stringa "\0 terminated"
         Buffer[BytesRead]:= #0;
         // Convertiamo i caratteri da DOS ad ANSI
         OemToAnsi(Buffer,Buffer);
         // Scriviamo nell' "OutMemo" l'output ricevuto tramite pipe
         OutText := OutText + String(Buffer);
       until (BytesRead < BUFSIZE);
     end;
   FreeMem(Buffer);
   CloseHandle(ProcessInfo.hProcess);
   CloseHandle(ProcessInfo.hThread);
   CloseHandle(hReadPipe);
   CloseHandle(hWritePipe);
 end;
   Result:= True;
end;






function RunDosAndWait(const CommandLine: AnsiString; var OutSrings: AnsiString): boolean;
const
  BuffSize = 1024;
var
  SecurityAttributes: TSecurityAttributes;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  tRead, cWrite, dwRead, dwAvail: Cardinal;
  Buffer: PChar;
  ExitCode: Cardinal;
begin
  Result := false;
  Application.ProcessMessages;
  Buffer := AllocMem(BuffSize);
  ZeroMemory(@SecurityAttributes, SizeOf(TSecurityAttributes));
  SecurityAttributes.nLength := SizeOf(TSecurityAttributes);
  SecurityAttributes.bInheritHandle := true;
  SecurityAttributes.lpSecurityDescriptor := nil;

  if not CreatePipe(tRead, cWrite, @SecurityAttributes, 0) then
  begin
    FreeMem(Buffer);
    Exit;
  end;

  ZeroMemory(@StartupInfo, SizeOf(TStartupInfo));
  with StartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    dwFlags := STARTF_USESTDHANDLES or STARTF_USESHOWWINDOW;
    wShowWindow := SW_HIDE;
    hStdError := cWrite;
  end;

         //For D2009 PWCHAR(WideString(CommandLine))
  if CreateProcessA(nil, PAnsiChar(CommandLine), nil, nil, true, 0, nil, nil, StartupInfo, ProcessInfo) then
  begin
    repeat
      Application.ProcessMessages;
      PeekNamedPipe(tRead, Buffer, BuffSize, @dwRead, @dwAvail, nil);
      while (dwRead > 0) do
      begin
        ZeroMemory(Buffer, BuffSize);
        ReadFile(tRead, Buffer[0], BuffSize, dwRead, nil);
        if dwRead > 0 then
        begin
          OutSrings  := OutSrings  + Buffer;
          PeekNamedPipe(tRead, Buffer, BuffSize, @dwRead, @dwAvail, nil);
        end;
      end;
      GetExitCodeProcess(ProcessInfo.hProcess, ExitCode);
    until (ExitCode <> STILL_ACTIVE);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
    Result:= True;
  end;

  FreeMem(Buffer);
  CloseHandle(tRead);
  CloseHandle(cWrite);
  CloseHandle(dwRead);
  CloseHandle(dwAvail);
 // else
 //   Raise Exception.Create('Ошибка создания процесса');
end;

                   {   
procedure LoadGameSpyServers(var List: TStringList);
var i: Integer;  str: string;
begin
  List.LoadFromFile( ExtractFilePath(Application.ExeName) + 'gslist-out.gsl' );
  for i:= 0 to list.Count-1 do
  begin
     str:= List.Strings[i];
     if Trim(str) <> '' then
     List.Strings[i]:= Trim(Copy(str, 0, Pos(' ', str)-1 ));
  end;
end;
      }





function GameSpyFilterQueryStr(inx: integer):string;

function GetGameTypes( gt: array of boolean): string;
const
 CONST_COUNT = 6;
 const_value : array [0..CONST_COUNT] of string = (
'gametype not like ''%gpm_insurgency%''',
'gametype not like ''%gpm_cq%''',
'gametype not like ''%gpm_skirmish%''',
'gametype not like ''%gpm_cnc%''',
'gametype not like ''%gpm_training%''',
'gametype not like ''%gmp_coop%''',
'gametype not like ''%gmp_vehicles'''
);

 var i, cnt, cnt2 : Integer;
begin
  cnt:= 0;

  for i:=0 to CONST_COUNT do if not gt[i] then Inc(cnt);
  if cnt = 0 then Exit;

  if cnt = 1 then
  Begin
     for i:=0 to CONST_COUNT do if not gt[i] then Result:= const_value[i];
  end
  else
  Begin
      Result:= '(';
      cnt2 := 0;
        for i:=0 to CONST_COUNT do
        begin
          if not gt[i] then
          begin
             Inc(cnt2);
             Result:= Result + const_value[i];
             if cnt2 < cnt then Result:= Result + ' and ';
          end;
        end;
      Result:= Result +  ')';
  end;

end;


function GetMapSizes( gt: array of boolean): string;
const
 CONST_COUNT = 2;
 const_value : array [0..CONST_COUNT] of string = (
 'bf2_mapsize = 64',
 'bf2_mapsize = 32',
 'bf2_mapsize = 16');

 var i, cnt, cnt2 : Integer;
begin
  cnt:= 0;

  for i:=0 to CONST_COUNT do if gt[i] then Inc(cnt);
  if cnt = 0 then Exit;

  if cnt = 1 then
  Begin
     for i:=0 to CONST_COUNT do if gt[i] then Result:= const_value[i];
  end
  else
  Begin
      Result:= '(';
      cnt2 := 0;
        for i:=0 to CONST_COUNT do
        begin
          if gt[i] then
          begin
             Inc(cnt2);
             Result:= Result + const_value[i];
             if cnt2 < cnt then Result:= Result + ' or ';
          end;
        end;
      Result:= Result +  ')';
  end;

end;

           {
function GetMaxPlayers( gt: array of boolean): string;
const
 CONST_COUNT = 2;
 const_value : array [0..CONST_COUNT] of string = (
 'maxpalyers = 64',
 'maxplayers = 32',
 'maxplayers = 16');

 var i, cnt, cnt2 : Integer;
begin
  cnt:= 0;

  for i:=0 to CONST_COUNT do if gt[i] then Inc(cnt);
  if cnt = 0 then Exit;

  if cnt = 1 then
  Begin
     for i:=0 to CONST_COUNT do if gt[i] then Result:= const_value[i];
  end
  else
  Begin
      Result:= '(';
      cnt2 := 0;
        for i:=0 to CONST_COUNT do
        begin
          if gt[i] then
          begin
             Inc(cnt2);
             Result:= Result + const_value[i];
             if cnt2 < cnt then Result:= Result + ' or ';
          end;
        end;
      Result:= Result +  ')';
  end;

end;         }

var Bools : array of Boolean;
    Str: string;
begin


       with OptionsForm do
       begin

             {For Players online}
             if Inx = 1 then
             begin     {(bf2_anticheat = 1 or bf2_anticheat = 0) and (bf2_mapsize = 16 or bf2_mapsize = 32 or bf2_mapsize = 64) and }
              result:= 'numplayers > 0 and gamever = ''1.5.3153-802.0'' and gamevariant = ''pr''';
              Exit;
             end;

             {Default Without Filter}
             if not customfiltercb.checked then
             begin
                result:= '(bf2_anticheat = 1 or bf2_anticheat = 0) and (bf2_mapsize = 16 or bf2_mapsize = 32 or bf2_mapsize = 64) and gamever = ''1.5.3153-802.0'' and gamevariant = ''pr'' and gametype not like ''%gpm_training%''';
              //  result:= '(bf2_anticheat = 1 or bf2_anticheat = 0) and (bf2_mapsize = 16 or bf2_mapsize = 32 or bf2_mapsize = 64) and gamever = ''1.5.3153-802.0''';
                Exit;
             end; { }

                          



             {with filter}

              {
             Bools[0] := FilterListBox.Checked[0];
             Bools[1] := FilterListBox.Checked[1];
             Bools[2] := FilterListBox.Checked[2];
             Str := Str + GetMaxPlayers(Bools);
             if Str <> '' then Result:= Str  + ' and ';
                }

             SetLength(Bools, 3);
             Str := '';
             Bools[0] := FilterListBox.Checked[0];
             Bools[1] := FilterListBox.Checked[1];
             Bools[2] := FilterListBox.Checked[2];
             Str := Str + GetMapSizes(Bools);
             if Str <> '' then Result:=  Str + ' and ';

             Str := '';
             SetLength(Bools, 7);
             Bools[0] := FilterListBox.Checked[3];
             Bools[1] := FilterListBox.Checked[4];
             Bools[2] := FilterListBox.Checked[5];
             Bools[3] := FilterListBox.Checked[6];
             Bools[4] := FilterListBox.Checked[7];
             Bools[5] := FilterListBox.Checked[8];
             Bools[6] := FilterListBox.Checked[9];
             Str := Str + GetGameTypes(Bools);
             if Str <> '' then Result:= Result + Str + ' and ';

             {+++++++++++++++++++++}

             if FilterListBox.Checked[10] then
             Result:= Result + 'bf2_anticheat = 1' + ' and ';

             if FilterListBox.Checked[11] then
             Result:= Result + 'numplayers > 0' + ' and ';

             if FilterListBox.Checked[12] then
             Result:= Result + 'bf2_voip = 1' + ' and ';

             if FilterListBox.Checked[13] then
             Result:= Result + 'numplayers < maxplayers' + ' and ';

             if FilterListBox.Checked[14] then
             Result:= Result + 'password = 0' + ' and ';


             Result:= Result +  'gamever = ''1.5.3153-802.0'' and gamevariant = ''pr''';

             //Result:= '"' + Result + '"';

       end;
end;

function GetPRExe: string;
var key : HKey;
begin

  Key:= RegKeyOpenRead(HKEY_LOCAL_MACHINE,'SOFTWARE\Electronic Arts\EA Games\Battlefield 2');
  Result:= RegKeyGetStr(Key, 'InstallDir');
  if Result <> '' then
   if FileExists( Result + '\mods\pr\pr.exe' ) then Result:= Result + '\mods\pr\pr.exe' else Result:= '';
end;


procedure WriteCustomPrefix(Prefix: string);
var StrList: TStringList;  i: Integer; b: Boolean;
begin

  if FileExists(GetBF2ProfilesDir + '\Global.con') then
  begin
   StrList := TStringList.Create;
   StrList.Clear;
    StrList.LoadFromFile(GetBF2ProfilesDir + '\Global.con');
    for i:=0 to StrList.Count-1 do
      if cStrings.PosStr('GlobalSettings.setNamePrefix', StrList.Strings[i], 1, false) = 1 then
      begin
          StrList.Strings[i] := 'GlobalSettings.setNamePrefix "' + Prefix + '"';
          b:= True;
      end;

    if not b then StrList.Add( 'GlobalSettings.setNamePrefix "' + Prefix + '"' );

   StrList.SaveToFile(GetBF2ProfilesDir + '\Global.con');
   StrList.Free;
  end;

end;


function GetBF2ProfilesDir: string;
begin
   Result:= PChar( GetCSIDLPath( CSIDL_PERSONAL )) + '\Battlefield 2\Profiles' ;
end;

function GetCSIDLPath( CSIDL_: Byte ):AnsiString;
var s : AnsiString;
begin
 SetLength(s, MAX_PATH);
 SHGetSpecialFolderPathA(0, PAnsiChar(s), CSIDL_, false);
 Result:=s;
end;


procedure eAddPrefix(PrefixName: String);
begin
     if Trim(PrefixName) = '' then Exit;
     if GetMateIndex(PrefixName, fpPrefix) > -1 then Exit;
   with OptionsForm do begin
    NextGridPrefix.AddRow();
    NextGridPrefix.Cells[2, NextGridPrefix.RowCount-1] := PrefixName;
    NextGridPrefix.Cell[4, NextGridPrefix.RowCount-1].AsInteger := 6;
    NextGridPrefix.SaveToTextFile(ExtractFilePath(Application.ExeName)  + PREFIX_FILE,  ',', 'ы');
   end;
end;

procedure eAddPName(PName: String);
begin
     if Trim(PName) = '' then Exit;
     if GetMateIndex(PName, fpName) > -1 then Exit;
   with OptionsForm do begin
    NextGridPname.AddRow();
    NextGridPname.Cells[2, NextGridPname.RowCount-1] := PName;
    NextGridPname.Cell[4, NextGridPname.RowCount-1].AsInteger := 6;  
    NextGridPname.SaveToTextFile(ExtractFilePath(Application.ExeName)  + NAME_FILE,  ',', 'ы');
   end;
end;


procedure sDeletePrefix(PrefixName: String);
var i: Integer;
begin
    if Trim(PrefixName) = '' then Exit;
    i:= GetMateIndex(PrefixName, fpPrefix);  if I = -1 then Exit;
    with OptionsForm do begin
      NextGridPrefix.DeleteRow( I );
      NextGridPrefix.SaveToTextFile(ExtractFilePath(Application.ExeName)  + PREFIX_FILE,  ',', 'ы');
    end;
end;

procedure sDeletePName(PName: String);
var i: Integer;
begin
       if Trim(PName) = '' then Exit;
       i:= GetMateIndex(PName, fpName); if i = -1 then Exit;
          with OptionsForm do begin
             NextGridPname.DeleteRow( I );
             NextGridPname.SaveToTextFile(ExtractFilePath(Application.ExeName)  + NAME_FILE,  ',', 'ы');
          end;
end;


// Result = -1 if not found;
function MatchSearchRequest(const SrcFor: string; item: TBF2ServerInfoItem; SearchIn : integer; StartFrom : Integer = 0 ): Integer;
var i: Integer;
begin
 Result := -1;
 if item.ErrorCode = -1 then Exit;
 

 case SearchIn of
  inHost :  begin
               Result:= AdvCasePos(SrcFor, item.hostname, False); // PosStr(SrcFor, item.hostname, 1, False);
               if Result = 0 then Result:= -1;
               Exit;
            end;

  inName : begin
             if StartFrom >= item.TotalPlayersCount{CountPlayers} then Exit;

             for Result:= StartFrom to item.TotalPlayersCount-1{CountPlayers-1} do
             if AdvCasePos(SrcFor, ExtractName(item.BF2Player[Result].Name), False) > 0 then Exit;
             //if PosStr(SrcFor, ExtractName(item.BF2Player[Result].Name),1,False) > 0 then Exit;

           end;

  inPrefix : begin
                if StartFrom >= item.TotalPlayersCount{CountPlayers} then Exit;

                for Result:= StartFrom to item.TotalPlayersCount-1{CountPlayers-1} do
                  if AdvCasePos(SrcFor, ExtractPrefix(item.BF2Player[Result].Name), False) > 0 then Exit;
                 // if PosStr(SrcFor, ExtractPrefix(item.BF2Player[Result].Name),1,False) > 0 then Exit;

            end;
 end;

  Result:= -1;

end;

{
0 = All Ok
1 = All Ok but empty list
-1, -2 = Connection Error
-3     = DosExecution error
-4 Error in send params
}

Function GetGSSList(const Param : Integer; var OutServers: AnsiString) : integer;

 function rnd: string;
 var  x : Integer;
 begin
   Result:= 'glist';
  // Randomize; //  97 -122
  // for x:= 1 to 6 do Result:= Result + Chr( (Random(25)+97) );
 end;

//label  Retry;

var  GS     : TGameSpy;
     str    : AnsiString;
     TmpFile: string;
     List   : TStringList;

begin

   str        := '';
   OutServers := '';
   GS         := TGameSpy.Create( GameSpyFilterQueryStr(Param) );

   Result     := GS.GetServersList;
 //DEBUG  Form1.Memo1.lines.add( IntToStr(Result ) );

   if Result > 0 then
   begin
      TmpFile := rnd+'.tmp';
      GS.SaveToFile( ExtractFilePath(Application.ExeName) + TmpFile );

      Result:= -3; // unnable invoke Doscommand

    //DEBUG  Form1.Memo1.lines.add('Val: ' + GS.ValidateStr );

     if  Dos2Win(  ExtractFilePath(Application.ExeName) + 'xdec.exe' +  ' -v "' + GS.ValidateStr + '" -g "Xn221z" -o "' + '~'+TmpFile + '" -L x '+ TmpFile, Str)
       then
       begin
        //DEBUG  Form1.Memo1.Lines.Add( 'Dos2Win = True' );
         //  while not FileExists(ExtractFilePath(Application.ExeName) + '~'+TmpFile) do  Sleep(50);

           if Pos('done', Str) > 0 then
           begin
             List:= TStringList.Create;
             List.LoadFromFile( ExtractFilePath(Application.ExeName) + '~'+TmpFile );
             OutServers := List.Text;
             List.Free;
             if Length(OutServers) > 10 then  Result:= 0 else Result:= 1;  // 0 - Ok  1 - nothing
           end
            else Result:= -4;

       end;

      // SysUtils.DeleteFile( ExtractFilePath(Application.ExeName) + '~' + TmpFile );
      // SysUtils.DeleteFile( ExtractFilePath(Application.ExeName) + TmpFile );
   end else
   if Result = 0 then Result := 1;

  //DEBUG Form1.Memo1.lines.add('Final: ' + IntToStr(Result ) );
  //DEBUG Form1.Memo1.lines.add('Str: ' + Str );




  //DEBUG  if Result = -4 then  Form1.Timer1.Enabled := False;


   GS.Destroy;
end;


function HasInvalidChars(S: string):Boolean;
var i, d: Integer;
begin
  Result:= False;
  for i:=1 to Length(S) do
  begin
     d:= Integer(Byte(S[i]));
     if not (d in [33, 35..43, 45..91, 93..125]) then
     Begin
      Result:= True;
      Exit;
     end;
  end;
end;

 (*
  { Dialog Box Command IDs }
  IDOK = 1;          ID_OK = IDOK;
  IDCANCEL = 2;      ID_CANCEL = IDCANCEL;
  IDABORT = 3;       ID_ABORT = IDABORT;
  IDRETRY = 4;       ID_RETRY = IDRETRY;
  IDIGNORE = 5;      ID_IGNORE = IDIGNORE;
  IDYES = 6;         ID_YES = IDYES;
  IDNO = 7;          ID_NO = IDNO;
  IDCLOSE = 8;       ID_CLOSE = IDCLOSE;
  IDHELP = 9;        ID_HELP = IDHELP;
  IDTRYAGAIN = 10;
  IDCONTINUE = 11;
  ======
  MB_OK = $00000000;
  MB_OKCANCEL = $00000001;
  MB_ABORTRETRYIGNORE = $00000002;
  MB_YESNOCANCEL = $00000003;
  MB_YESNO = $00000004;
  MB_RETRYCANCEL = $00000005;
*)

Function Msg(zMsg: string; zCpt: integer; zBtn: integer):Longint;
begin
 // Msg := messagebox(0,pchar(zMsg),pchar(captconst[zCpt]),(zCpt*16) or zBtn or MB_TOPMOST);
end;




procedure UpdateDetailedInfo( RV: TRichEdit; Item: TBF2ServerInfoItem; const NameColor: integer = clNavy; ValueColor: integer = clBlack{; Note: string = ''});
var  F: TFavServerInfo;
begin
 RV.Clear;

 if Item.ErrorCode <= -1 then  Exit;

 with Item do
 begin

     F := GetFavServer( ServerIP + ':' +  ServerQueryPort);
     if F.NoteText <> '' then
     RichEditAddColored(RV, 'custom server note: ' , F.NoteText , NameColor, ValueColor );

     RichEditAddColored(RV, 'ip:queryport: ' , ServerIP +':'+ ServerQueryPort  , NameColor, ValueColor );
     RichEditAddColored(RV, 'hostname: ' , hostname              , NameColor, ValueColor );
     RichEditAddColored(RV, 'gamename: ' , gamename              , NameColor, ValueColor );
     RichEditAddColored(RV, 'gamever: '  , gamever               , NameColor, ValueColor);
     RichEditAddColored(RV, 'mapname: '  , mapname               , NameColor, ValueColor);
     RichEditAddColored(RV, 'gametype: ' , gametype              , NameColor, ValueColor);
     RichEditAddColored(RV, 'gamevariant: ' , gamevariant        , NameColor, ValueColor);
     RichEditAddColored(RV, 'numplayers: '  , numplayers         , NameColor, ValueColor);
     RichEditAddColored(RV, 'maxplayers: '  , maxplayers         , NameColor, ValueColor);
     RichEditAddColored(RV, 'gamemode: '  , gamemode             , NameColor, ValueColor);
     RichEditAddColored(RV, 'password: '  , password             , NameColor, ValueColor);
     RichEditAddColored(RV, 'timelimit: ' , timelimit            , NameColor, ValueColor);
     RichEditAddColored(RV, 'roundtime: ' , roundtime            , NameColor, ValueColor);
     RichEditAddColored(RV, 'hostport: '  , hostport             , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_dedicated: '   ,   bf2_dedicated, NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_ranked: '      ,   bf2_ranked   , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_anticheat: '   ,   bf2_anticheat, NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_os: '          ,   bf2_os       , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_autorec: '     ,   bf2_autorec  , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_d_idx: '       ,   bf2_d_idx    , NameColor, ValueColor  );
     RichEditAddColored(RV, 'bf2_d_dl: '        ,   bf2_d_dl     , NameColor, ValueColor  );
     RichEditAddColored(RV, 'bf2_voip: '        ,   bf2_voip     , NameColor, ValueColor  );
     RichEditAddColored(RV, 'bf2_autobalanced: ',  bf2_autobalanced  , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_friendlyfire: ',  bf2_friendlyfire  , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_tkmode: '      ,   bf2_tkmode       , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_startdelay: '  ,   bf2_startdelay   , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_spawntime: '   ,   bf2_spawntime    , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_sponsortext: ' ,   bf2_sponsortext  , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_sponsorlogo_url: '   ,   bf2_sponsorlogo_url  , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_communitylogo_url: ' ,  bf2_communitylogo_url , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_scorelimit: '    ,   bf2_scorelimit   , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_ticketratio: '   ,   bf2_ticketratio  , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_teamratio: '     ,   bf2_teamratio    , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_team1: '         ,   bf2_team1        , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_team2: '         ,   bf2_team2        , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_bots: '          ,   bf2_bots         , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_pure: '          ,   bf2_pure         , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_mapsize: '       ,   bf2_mapsize      , NameColor, ValueColor );
     RichEditAddColored(RV, 'bf2_globalunlocks: ' ,   bf2_globalunlocks , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_fps: '           ,   bf2_fps           , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_plasma: '        ,   bf2_plasma        , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_reservedslots: ' ,   bf2_reservedslots , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_coopbotratio: '  ,   bf2_coopbotratio  , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_coopbotcount: '  ,   bf2_coopbotcount  , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_coopbotdiff: '   ,   bf2_coopbotdiff   , NameColor, ValueColor);
     RichEditAddColored(RV, 'bf2_novehicles: '    ,   bf2_novehicles    , NameColor, ValueColor);

     RV.SelStart := 0;
     SendMessage(RV.handle, EM_SCROLLCARET,0,0);
 end;

end;


procedure LoadLanguageFilesList(LLFL: TStrings);
var
  FindHandle:THandle;
  SearchRec:TWIN32FindData;
  Path : string;
begin

   Path:= ExtractFilePath(Application.ExeName) + 'Lang\';

   try
    FindHandle := FindFirstFile( pchar(Path+'*.ini'), SearchRec);
    if FindHandle <> INVALID_HANDLE_VALUE then
    repeat
     // if SearchRec.cFileName <> '.' or
      if SearchRec.dwFileAttributes <> faDirectory then
      LLFL.Add( SearchRec.cFileName );
    until FindNextFile(FindHandle,SearchRec)=false;
    finally
     Windows.FindClose(FindHandle);
    end;

end;




{  - 111 if failed }
function GetEntryValueS(Str: string; EntryIndex: Integer; const Separator : string = ';'): String;
var  lpos, sPos, ePos, e : Integer;
begin
   lpos := 0;
   e    := 0;
   sPos := 0;
   ePos := 0;

  repeat
   lpos:= AdvCasePosEx(Separator, Str, False, Succ(lpos));
   if lpos > 0 then inc(e);
   if e = EntryIndex then sPos:= lpos;
   if (e > EntryIndex) and (sPos > 0) then
    begin
     ePos:= lpos;
     Break;
    end;
  until (lpos = 0);

   if lpos = 0 then
   begin
    Result:= '';
    Exit;
   end;

    if ePos = 0 then
     Result:= Copy(Str, Succ(sPos), Pred(Length(Str) - sPos )) else
        Result:= Copy(Str,  Succ(sPos),  Pred(ePos - sPos));
end;


function GetEntryValueI(Str: string; EntryIndex: Integer; const Separator : string = ';'): Integer;
var s: string;
begin
  s:=  GetEntryValueS(Str, EntryIndex, Separator) ;
  if s = '' then result:= -111 else result:=StrToInt(s);
end;





end.
