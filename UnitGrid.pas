unit UnitGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumns, NxCustomGridControl, KOLTrans,
  NxGrid, ExtCtrls, Menus, BF2ServerInfo, Unit1, StrUtils, LanguageUnit;

{$I defs.inc}
//lifeline.ru
    //SaveToFile
    //LoadFromFile
    //AddServerInfo
    //DeleteServerInfo
    //UpdateServerInfo
      procedure GridAddPlayerInfo(NG: TNextGrid; item: TPlayerInfo; MateIndex: Integer);
      procedure GridAddServerInfo(NG: TNextGrid; Item: TBF2ServerInfoItem);
      Function GridGetAvaiableServers(NG: TNextGrid):integer;
      procedure ModifyGridPingValue(NG: TNextGrid; Index: Integer; item: TBF2ServerInfoItem{PingVal: Integer});
      procedure GridUpdateServerInfo(NG: TNextGrid; item: TBF2ServerInfoItem; Index: Integer);
      procedure GridAddPlayersOnline(NG: TNextGrid; Item: TBF2ServerInfoItem);
      procedure GridDeleteSelected(NG: TNextGrid);
      Function GridGetSelectedAsList(NG: TNextGrid; ACOL: Integer):AnsiString;

      function GridCopyTwoColsFromSelRow(const NG: TNextGrid; Col1: Integer = 1; Col2: Integer = 2; Separator : string = ' ' ) : string;
      function GridCopyColFromSelRow(const NG: TNextGrid; Col: Integer ) : string;
      procedure SaveToHtml(const NG: TNextGrid; FileName: WideString; SaveSettings: TNxHtmlSaveSettings);

      procedure GridAddNewsEvents(NG: TNextGrid; Date: TDateTime; Caption, Msg, Url: AnsiString; Ico: integer);
      Function GridStrExists(NG: TNextGrid; ACOL: Integer; Str: String):Boolean;
      procedure UpdatePlayersMatesList(PGrid, MGrid : TNextGrid; Item: TBF2ServerInfoItem);


    const
       C_OS      =  1;
       C_PB      =  2;
       C_VOIP    =  3;
       C_PW      =  4;
       C_MOD     =  5;
       C_SERVER  =  6;
       C_PING    =  7;
       C_PLAYERS =  8;
       C_MAPNAME =  9;
       C_TYPE    =  10;
       C_MATES   =  11;
       C_COUNTRY =  12;
       C_SINFO   =  13;
       H_ITEMID  =  14;
       H_PLAYERS =  15;


       COLTAG_OS   = 1;
       COLTAG_PB   = 2;
       COLTAG_VOIP = 3;
       COLTAG_PW   = 4;

       PLAYER_REAL = 0;
       PLAYER_BOT  = 1;
       PLAYER_UNKNOWN = -1;



implementation



uses MUnit;

    function GridCopyColFromSelRow(const NG: TNextGrid; Col: Integer ) : string;
    begin
      if (NG.RowCount <= 0) or (NG.SelectedRow <= -1) then Exit;
      Result:= Trim(NG.Cell[Col,  NG.SelectedRow].AsString);
    end;


    function GridCopyTwoColsFromSelRow(const NG: TNextGrid; Col1: Integer = 1; Col2: Integer = 2; Separator : string = ' ' ) : string;
    begin
      if (NG.RowCount <= 0) or (NG.SelectedRow <= -1) then Exit;
      Result:= Trim(NG.Cell[Col1,  NG.SelectedRow].AsString + Separator + NG.Cell[Col2,  NG.SelectedRow].AsString);
    end;



    procedure GridAddPlayerInfo(NG: TNextGrid; item: TPlayerInfo; MateIndex: Integer);
    begin

     if item.Name = '' then Exit;

      NG.AddRow();
      NG.BeginUpdate;
      NG.Cells[1, NG.RowCount-1]:= ExtractPrefix(item.Name);
      NG.Cells[2, NG.RowCount-1]:= ExtractName(item.Name);

       NG.Cells[8, NG.RowCount-1]:= item.Team;
     { }
      NG.Cell[3, NG.RowCount-1].AsInteger:= SafeStr2Int(item.Score);
      NG.Cell[4, NG.RowCount-1].AsInteger:= SafeStr2Int(item.Ping);
      NG.Cell[5, NG.RowCount-1].AsInteger:= SafeStr2Int(item.Deaths);
      NG.Cell[6, NG.RowCount-1].AsInteger:= SafeStr2Int(item.Pid);
      NG.Cell[7, NG.RowCount-1].AsInteger:= SafeStr2Int(item.Skill);

      NG.Cell[9, NG.RowCount-1].AsInteger:= MateIndex;
      NG.EndUpdate;
    end;



    procedure GridAddServerInfo(NG: TNextGrid; Item: TBF2ServerInfoItem);
    var RowIndex : integer;
    begin

       RowIndex:= NG.AddRow();
       NG.BeginUpdate;
        {   }
       if Item.ErrorCode = -1 then
       begin
        // if OptionsForm.HideInactiveCheckBox.Checked then Exit;

      //   NG.AddRow();
         NG.Cell[C_OS,       NG.RowCount-1].AsInteger:= 5;
         NG.Cell[C_PB,       NG.RowCount-1].AsBoolean:= false;
         NG.Cell[C_VOIP,     NG.RowCount-1].AsBoolean:= false;
         NG.Cell[C_PW,       NG.RowCount-1].AsInteger:= 5;
         NG.Cell[C_MOD,      NG.RowCount-1].AsInteger:= 5;
         NG.Cells[C_PING,     NG.RowCount-1]:= ''; //1000;
         NG.Cells[C_SERVER,  NG.RowCount-1]:= GetWORD(133);//'^Unavaiable ...';
         NG.Cells[C_COUNTRY, NG.RowCount-1]:=  GeoIPGetCountryName( Item.ServerIP );
         NG.Cells[C_SINFO,   NG.RowCount-1]:=  Item.ServerIP + ':' + item.ServerQueryPort;
         NG.Cell[H_ITEMID,   NG.RowCount-1].AsInteger:= Item.Index; //-1;
         NG.RowVisible[RowIndex] := Form1.SetRowVisibility(Item);
         NG.EndUpdate;
         Exit;
       end;


     //  NG.AddRow();
       NG.Cell[C_OS,    NG.RowCount-1].AsInteger:= GetOs(Item.bf2_os);
       NG.Cell[C_PB,    NG.RowCount-1].AsBoolean:= (Item.bf2_anticheat = '1'); //IsPb(Item.bf2_anticheat);
       NG.Cell[C_VOIP,  NG.RowCount-1].AsBoolean:= (Item.bf2_voip = '1');
       NG.Cell[C_PW,    NG.RowCount-1].AsInteger:= IsPassworded(Item.password);
       NG.Cell[C_MOD,   NG.RowCount-1].AsInteger:= IsPR(Item.gamevariant);
       NG.Cells[C_SERVER,  NG.RowCount-1]:=  Item.hostname ;        //     SInfo.ValueFromIndex[HOSTNAME];
       NG.Cells[C_PLAYERS, NG.RowCount-1]:=  Item.numplayers + '/' + Item.maxplayers + ' (' + Item.bf2_reservedslots + ')';
       NG.Cells[C_MAPNAME, NG.RowCount-1]:=  Item.mapname;
       NG.Cells[C_TYPE,    NG.RowCount-1]:=  Item.gametype;
       NG.Cells[C_COUNTRY, NG.RowCount-1]:=  GeoIPGetCountryName( Item.ServerIP );
       NG.Cells[C_SINFO,   NG.RowCount-1]:=  Item.ServerIP + ':' + Item.hostport + ':' + item.ServerQueryPort;

       NG.Cells[C_PING,    NG.RowCount-1]:= ''; //.AsInteger:= 0;
    //OLD   NG.Cell[C_MATES,   NG.RowCount-1].AsInteger:= GetMatesCount(Item); //CountFriendlyNames( Item );

       NG.Cell[C_MATES,   NG.RowCount-1].AsString := GetMatesCountStr(Item);


       NG.Cell[H_ITEMID,  NG.RowCount-1].AsInteger:= Item.Index;
       NG.RowVisible[RowIndex] := Form1.SetRowVisibility(Item);

       NG.EndUpdate;

      // NG.Cell[H_PLAYERS, NG.RowCount-1].AsInteger:= Item.CountPlayers;

    end;

    procedure GridAddPlayersOnline(NG: TNextGrid; Item: TBF2ServerInfoItem);
    var RowIndex, i : integer;

        iMatesCount, iCountry  : string;
        
        iPW : Integer;
        iAC : Boolean;

        BotCheck : Integer;
    begin
      BotCheck := PLAYER_REAL;
      if Item.ErrorCode = -1 then Exit;
      if Item.TotalPlayersCount <= 0 then Exit;
      NG.BeginUpdate;

      iCountry    :=   GeoIPGetCountryName( Item.ServerIP );
      iMatesCount :=   GetMatesCountStr(Item); //GetMatesCount(Item);//CountFriendlyNames( Item );
      iAC         :=   (Item.bf2_anticheat = '1');
      iPW         :=   IsPassworded(Item.password);
      for i:=0 to Item.TotalPlayersCount-1 do
      begin
       if item.BF2Player[i].Name = '' then Continue;
       RowIndex:= NG.AddRow();
       

       NG.Cells[1,  NG.RowCount-1]:= ExtractPrefix(item.BF2Player[i].Name);
       NG.Cells[2,  NG.RowCount-1]:= ExtractName(item.BF2Player[i].Name);
       NG.Cells[C_SERVER,   NG.RowCount-1]:= Item.hostname;
       NG.Cells[C_PLAYERS,  NG.RowCount-1]:= Item.numplayers + '/' + Item.maxplayers + ' (' + Item.bf2_reservedslots + ')';
       NG.Cells[C_MAPNAME,  NG.RowCount-1]:= Item.mapname;
       NG.Cells[C_TYPE,     NG.RowCount-1]:= Item.gametype;
       NG.Cells[C_COUNTRY,  NG.RowCount-1]:= iCountry;
       NG.Cells[C_SINFO,    NG.RowCount-1]:= Item.ServerIP + ':' + Item.hostport + ':' + item.ServerQueryPort;

       NG.Cell[3,         NG.RowCount-1].AsBoolean:= iAC;
       NG.Cell[C_PW,      NG.RowCount-1].AsInteger:= iPW;
       NG.Cells[C_PING,    NG.RowCount-1]:= ''; //.AsInteger:= 0;
       NG.Cell[C_MATES,   NG.RowCount-1].AsString:= iMatesCount;
       NG.Cell[H_ITEMID,  NG.RowCount-1].AsInteger:= Item.Index;

       if item.bf2_bots = '1' then BotCheck:= isBot(item.BF2Player[i]);

       if BotCheck = PLAYER_BOT then
        NG.Cell[5,         NG.RowCount-1].AsInteger:= 3 else
        NG.Cell[5,         NG.RowCount-1].AsInteger:= GetPOImageIndex(isMate(item.BF2Player[i].Name));

        NG.RowVisible[RowIndex] := Form1.SetPORowVisibility( NG.Cell[5, NG.RowCount-1].AsInteger) ; //Form1.SetRowVisibility(Item);
      end;


      NG.EndUpdate;
    end;





    Function GridGetAvaiableServers(NG: TNextGrid):Integer;
    var i: Integer;
    begin
     Result:=0;
     for i:=0 to NG.RowCount-1 do
     if NG.cells[C_PING, i] <> ''  then Inc(Result);
    end;

    //Function AvGr


    procedure ModifyGridPingValue(NG: TNextGrid; Index: Integer; item: TBF2ServerInfoItem{PingVal: Integer});
    var i: Integer;
    begin
              for i:=0 to NG.RowCount-1 do  begin
               if NG.cell[H_ITEMID, i].AsInteger = Index  then
               begin
                 if item.Ping < 9999   then
                  if item.Ping > -1 then NG.Cells[C_PING, i]:=   IntToStr(item.Ping) else  NG.Cells[C_PING, i]:=   IntToStr(item.Ping * -1) 
                  else
                    NG.Cells[C_PING, i]:= '~' + IntToStr(item.ApproxPing );
                  

                 if NG.Tag <> S_PRPONLINE then
                 NG.RowVisible[i]             := Form1.SetRowVisibility(Item);
               end;
              end;
    end;

    procedure GridUpdateServerInfo(NG: TNextGrid; item: TBF2ServerInfoItem; Index: Integer);
    var i: Integer;
    begin
     NG.BeginUpdate;
      for i:=0 to Ng.RowCount-1 do
       if  NG.Cell[H_ITEMID,   i].AsInteger  = Index then Break;
            
        {   }
       if Item.ErrorCode = -1 then
       begin
        // if OptionsForm.HideInactiveCheckBox.Checked then Exit;

        // NG.AddRow();
         NG.Cell[C_OS,       i].AsInteger:= 5;
         NG.Cell[C_PB,       i].AsBoolean:= False;
         NG.Cell[C_VOIP,     i].AsBoolean:= false;
         NG.Cell[C_PW,       i].AsInteger:= 5;
         NG.Cell[C_MOD,      i].AsInteger:= 5;
         NG.Cells[C_PING,     i]:= '';
         NG.Cells[C_PLAYERS,  i]:= '';
         NG.Cells[C_MAPNAME,  i]:= '';
         NG.Cells[C_MATES,    i]:= '';
         NG.Cells[C_TYPE,     i]:= '';
         NG.Cells[C_SERVER,  i]:= GetWORD(133);//'^Unavaiable ...';
         NG.Cells[C_COUNTRY, i]:=  GeoIPGetCountryName( Item.ServerIP );
         NG.Cells[C_SINFO,   i]:=  Item.ServerIP + ':' + item.ServerQueryPort;
        // NG.Cell[H_ITEMID,   i].AsInteger:= Item.Index; //-1;
         NG.SelectedRow := i;
         NG.RowVisible[i] := Form1.SetRowVisibility(Item);
         NG.EndUpdate;
         Exit;
       end;


     //  NG.AddRow();
       NG.Cell[C_OS,    i].AsInteger:= GetOs(Item.bf2_os);
       NG.Cell[C_PB,    i].AsBoolean:= (Item.bf2_anticheat = '1'); //IsPb(Item.bf2_anticheat);
       NG.Cell[C_VOIP,  i].AsBoolean:= (Item.bf2_voip = '1');
       NG.Cell[C_PW,    i].AsInteger:= IsPassworded(Item.password);
       NG.Cell[C_MOD,   i].AsInteger:= IsPR(Item.gamevariant);
       NG.Cells[C_SERVER,  i]:=  Item.hostname;       //     SInfo.ValueFromIndex[HOSTNAME];
       NG.Cells[C_PLAYERS, i]:=  Item.numplayers + '/' + Item.maxplayers + ' (' + Item.bf2_reservedslots + ')';
       NG.Cells[C_MAPNAME, i]:=  Item.mapname;
       NG.Cells[C_TYPE,    i]:=  Item.gametype;
       NG.Cells[C_COUNTRY, i]:=  GeoIPGetCountryName( Item.ServerIP );
       NG.Cells[C_SINFO,   i]:=  Item.ServerIP + ':' + Item.hostport + ':' + item.ServerQueryPort;

       NG.Cells[C_PING,    i] := '0';

       NG.Cell[C_MATES,   i].AsString:= GetMatesCountStr( Item );//GetMatesCount( Item );

       NG.SelectedRow := i;
       NG.RowVisible[i] := Form1.SetRowVisibility(Item);
       NG.EndUpdate;
      // NG.Cell[H_ITEMID,  i].AsInteger:= Item.Index;

    end;


    procedure GridDeleteSelected(NG: TNextGrid);
    var i: Integer;
    begin
      for i:= NG.RowCount-1 downto 0 do
       if NG.Selected[i] then NG.DeleteRow(i);
    end;

    Function GridGetSelectedAsList(NG: TNextGrid; ACOL: Integer):AnsiString;
    var i: Integer;
    begin
      for i:=0  to  NG.RowCount-1 do
       if NG.Selected[i] then Result:= Result + NG.Cells[ACOL, i] + #13#10;

      Result:= Trim(REsult);

    end;


    {******************************}
    {******************************}
    {******************************}
    {******************************}





procedure SaveToHtml(const NG: TNextGrid; FileName: WideString; SaveSettings: TNxHtmlSaveSettings);
var
	i, j: Integer;
  Html, Css: TStringList;
  HtmlFile, CssFile: TextFile;
  S: WideString;
  CssFileName: string;

  function ExtractName(const FileName: string): string;
  var
    s: string;
  begin
    S := ExtractFileName(FileName);
    Result := LeftStr(S, Length(S) - Length(ExtractFileExt(S)));
  end;

  function Content(S: WideString): WideString;
  begin
    if S = '' then Result := '&nbsp;'  else Result := Trim(S);
  end;
begin
  Html := TStringList.Create;

  with NG do
  begin

  { Save Headers: HTML, HEAD, BODY }
  if hsSaveHeaders in SaveSettings then
  begin
    Html.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"' + #13#10#9 + '"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">');
    Html.Add('<html>');
    Html.Add(#9'<head>');
    Html.Add(#9#9'<title>Report</title>');
    Html.Add(#9#9'<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
    if hsCreateStyleSheet in SaveSettings then
    begin
      Html.Add(#9#9'<link href="' + 'styles.css" rel="stylesheet" type="text/css" />');
    end;
    Html.Add(#9'</head>');
    Html.Add(#9'<body>');
  end;

  Html.Add(#9#9'<table>');

  { Save Caption }
  if hsSaveCaption in SaveSettings then
    Html.Add(#9#9#9'<caption>' + 'Caption' + '</caption>');

  { Render Headers }
  Html.Add(#9#9#9'<tr>');
  for i := 0 to NG.Columns.Count - 1 do
  	if Columns.PositionItem[i].Visible then
	  begin
		  Html.Add(#9#9#9#9'<th>' + Content(Columns.PositionItem[i].Header.Caption) + '</th>');
	  end;
  Html.Add(#9#9#9'</tr>');

  { Render Data }
  for j := 0 to RowCount - 1 do
    if RowVisible[j] or (hsAllRows in SaveSettings) then
    begin
      //S:= '';
     // SetActiveRow(j); { move record in NextDBGrid }
      Html.Add(#9#9#9'<tr>');
      for i := 0 to NG.Columns.VisibleCount - 1 do
        if Columns.PositionItem[i].Visible then
        begin

          case Columns.PositionItem[i].Tag of
            COLTAG_OS   :  case Cell[i, j].AsInteger of
                            4     :  S:= 'linux';
                            3     :  S:= 'win32';
                            2     :  S:= 'linux64';
                            -1, 5 :  S:= '';
                           end;


            COLTAG_PB   :  if Cell[i, j].AsBoolean then
                            S := 'Enabled' else S := 'Disabled';


            COLTAG_VOIP : if Cell[i, j].AsBoolean then
                            S := 'Enabled' else S := 'Disabled';

            COLTAG_PW   : if Cell[i, j].AsInteger = 0 then S:= 'Yes' else S:='';

            0           : S := Cell[i, j].AsString;
           end;
         

               {            
          S := Columns.PositionItem[i].GetDrawText(GetCellInfo(i, j));     }
          S := Content(S); 

         


          if Columns.PositionItem[i].StyleClass <> '' then
            Html.Add(#9#9#9#9'<td class="' + Columns.PositionItem[i].StyleClass + '">' + S + '</td>')
          else
            Html.Add(#9#9#9#9'<td>' + S + '</td>')
        end; { Visible }
      //  end;
      Html.Add(#9#9#9'</tr>');
    end; { Row Visible }

  { SaveFooter }   {
  if hsSaveFooter in SaveSettings then
  begin
    Html.Add(#9#9#9'<tr class="footer">');
    for i := 0 to Columns.VisibleCount - 1 do
      with Columns.PositionItem[i] do
        if Visible then
        begin
          if Footer.FormatMask <> '' then
          begin
            case Footer.FormatMaskKind of
              mkText: S := FormatMaskText(Footer.FormatMask, Footer.Caption);
              mkFloat: S := FormatFloat(Footer.FormatMask, StrToFloatDef(Footer.Caption, 0));
            end;
          end else S := Footer.Caption;
          S := Concat(Footer.TextBefore, S, Footer.TextAfter);
          Html.Add(#9#9#9#9'<td>' + Content(S) + '</td>');
        end;
    Html.Add(#9#9#9'</tr>');
  end;      }
  Html.Add(#9#9'</table>');

  if hsSaveHeaders in SaveSettings then
  begin
    Html.Add(#9'</body>');
    Html.Add('<html>');
  end;

  { Finish writing .htm file }
  try
    AssignFile(HtmlFile, FileName);
    Rewrite(HtmlFile);
    Writeln(HtmlFile, Html.text);
  finally
    CloseFile(HtmlFile);
    FreeAndNil(Html);
  end;

  if hsCreateStyleSheet in SaveSettings then
  begin
    Css := TStringList.Create;

    Css.Add('body, table {');
    Css.Add(#9'font-family: Verdana, Arial, Helvetica, sans-serif;');
    Css.Add(#9'font-size: small;');
    Css.Add('}');

    Css.Add('');

    Css.Add('table {');
    Css.Add(#9'border: 1px #CCC;');
    Css.Add(#9'border-collapse: collapse;');
    Css.Add('}');

    Css.Add('');

    Css.Add('table caption {');
    Css.Add(#9'color: #999;');
    Css.Add(#9'font-style: italic;');
    Css.Add('}');

    Css.Add('');

    Css.Add('td, th {');
    Css.Add(#9'padding: 2px;');
    Css.Add(#9'border: 1px solid #CCC;');
    Css.Add('}');

    Css.Add('');

    Css.Add('th {');
    Css.Add(#9'background-color: #CCC;');
    Css.Add(#9'border-bottom: 1px solid black;');
    Css.Add(#9'border-right: 1px solid black;');
    Css.Add('}');

    Css.Add('');

    Css.Add('tr.footer { border-top: 2px solid black; }');

    Css.Add('');

    { Add custom classes }
    for i := 0 to Columns.VisibleCount - 1 do
      with Columns.PositionItem[i] do
        if Visible and (StyleClass <> '') then
          Css.Add('td.' + StyleClass + ' { }');


    { Finish writing .css file }
    try
      CssFileName := ExtractFilePath(FileName) { + ExtractName(FileName) }+ 'styles.css';
      AssignFile(CssFile, CssFileName);
      Rewrite(CssFile);
      Writeln(CssFile, Css.Text);
    finally
      CloseFile(CssFile);
      FreeAndNil(Css);
    end;
  end;

 end;
end;



Function GridStrExists(NG: TNextGrid; ACOL: Integer; Str: String):Boolean;
var i: Integer;
begin

    for i:=0 to NG.RowCount-1 do
    begin
 //    Result:= cStrings.StrCompareNoCase( NG.Cell[ACOL, i], str) = 0;
     if Result then Break;
    end;

end;

procedure UpdatePlayersMatesList(PGrid, MGrid : TNextGrid; Item: TBF2ServerInfoItem);
var i, MateIndex: integer;
begin
  MGrid.ClearRows;
  PGrid.ClearRows;

  if Item.ErrorCode <= -1 then  Exit;
  with Item do
  begin
     for i:=0 to TotalPlayersCount-1 do
     begin
         MateIndex  := isMate(BF2Player[i].Name);
         GridAddPlayerInfo(PGrid, BF2Player[i], MateIndex);
         if MateIndex > 0 then
         GridAddPlayerInfo(MGrid, BF2Player[i], MateIndex);
     end;
  end;
end;



procedure GridUpdateMateStatus(NG: TNextGrid; ACOL: Integer; Value: string);
begin
   

    //+++++++//
end;

procedure GridAddNewsEvents(NG: TNextGrid; Date: TDateTime; Caption, Msg, Url: AnsiString; Ico: integer);
begin
  
  NG.AddRow();
  NG.BeginUpdate;
  NG.Cell[1, NG.RowCount  -1].AsInteger := Ico;
  NG.Cell[2, NG.RowCount -1].AsDateTime := Date;
  NG.Cells[3, NG.RowCount -1] :=  Caption;
  NG.Cells[4, NG.RowCount -1] :=  Msg;
  NG.EndUpdate;
end;


end.
 