unit UnitGrid;

interface

uses
  SysUtils, Classes, Controls,  Windows,
  NxColumns, NxCustomGridControl, MatesUnit, cStrings,
  NxGrid, BF2ServerInfo, Unit1, StrUtils, LanguageUnit;

{$I defs.inc}
//lifeline.ru
    //SaveToFile
    //LoadFromFile
    //AddServerInfo
    //DeleteServerInfo
    //UpdateServerInfo
      procedure GridAddPlayerInfo(NG: TNextGrid; item: TPlayerInfo; MateIndex: Single{Integer});
      procedure GridAddServerInfo(NG: TNextGrid; Item: TBF2ServerInfoItem; UpdateIndex: Integer = -1);
      Function GridGetAvaiableServers(NG: TNextGrid):integer;
      procedure ModifyGridPingValue(NG: TNextGrid; Index: Integer; item: TBF2ServerInfoItem{PingVal: Integer});
     // procedure GridUpdateServerInfo(NG: TNextGrid; item: TBF2ServerInfoItem; Index: Integer);
      procedure GridAddPlayersOnline(NG: TNextGrid; Item: TBF2ServerInfoItem);
      procedure GridDeleteSelected(NG: TNextGrid);
      Function GridGetSelectedAsList(NG: TNextGrid; ACOL: Integer):AnsiString;

      function GridCopyTwoColsFromSelRow(const NG: TNextGrid; Col1: Integer = 1; Col2: Integer = 2; Separator : string = ' ' ) : string;
      function GridCopyColFromSelRow(const NG: TNextGrid; Col: Integer ) : string;
      procedure SaveToHtml(const NG: TNextGrid; FileName: WideString; SaveSettings: TNxHtmlSaveSettings);

      procedure ProcessPlayers(PGrid, MGrid : TNextGrid; Item: TBF2ServerInfoItem);
      procedure GridAddPlayerInfoW(NG: TNextGrid; Item: TPlayerInfo; P: TMParams; pID: Integer);
      function GridCOLStrExists(NG: TNextGrid; S: string; ACOL: Integer; ExcludeSelectedRow: Boolean = True): Integer;

      procedure GridPOReplaceFavIndex(NG: TNextGrid; IdValue, newValue : Integer);
      procedure GridPlayersMatesSilentMIndexUpdate(NG1, NG2, NG3: TNextGrid; Slist: TBF2ServerSList );
      procedure GridSilentUpdateMatesCount(NG : TNextGrid);
      procedure GridPOSilentUpdateMates(NG : TNextGrid);
   

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
       H_HIGHLIGHT   = 15;
       H_VIS_COL_CMD = 15;
       C_PO_PREFIX   = 1;
       C_PO_NAME     = 2;
       C_PO_CMD      = 15;
       C_NOTE        = 16;
       C_COUNTRYFLAG = 17;




       COLTAG_OS   = 1;
       COLTAG_PB   = 2;
       COLTAG_VOIP = 3;
       COLTAG_PW   = 4;
       COLTAG_M    = 5;

       PLAYER_REAL = 0;
       PLAYER_BOT  = 1;
       PLAYER_UNKNOWN = -1;



       Entry_FAVINDEX = 1;
       Entry_MATEINDEX = 2;
       Entry_PLAYERINDEX = 3;



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



    procedure GridAddPlayerInfo(NG: TNextGrid; item: TPlayerInfo; MateIndex: Single{Integer});
    var R: Integer;
    begin

     if item.Name = '' then Exit;

      R:= NG.AddRow();
      NG.BeginUpdate;
      NG.Cells[1, R]:= ExtractPrefix(item.Name);
      NG.Cells[2, R]:= ExtractName(item.Name);

      NG.Cells[8, R]:= item.Team;
     { }
      NG.Cell[3, R].AsInteger:= SafeStr2Int(item.Score);
      NG.Cell[4, R].AsInteger:= SafeStr2Int(item.Ping);
      NG.Cell[5, R].AsInteger:= SafeStr2Int(item.Deaths);
      NG.Cell[6, R].AsInteger:= SafeStr2Int(item.Pid);
      NG.Cell[7, R].AsInteger:= SafeStr2Int(item.Skill);

      NG.Cell[9, R].AsFloat:= MateIndex;

     // NG.Cell[10, NG.RowCount-1].AsInteger :=
    //  NG.Cells[11, NG.RowCount-1]          :=



      NG.EndUpdate;
    end;



    procedure GridAddServerInfo(NG: TNextGrid; Item: TBF2ServerInfoItem; UpdateIndex: Integer = -1);
    var RowIndex: integer; Info: TMInfo;  LostName: string;
    begin

       if UpdateIndex > -1 then
       begin
            for RowIndex:=0 to NG.RowCount-1 do
            if  NG.Cell[H_ITEMID,   RowIndex].AsInteger  = UpdateIndex then Break;
       end
       else
        RowIndex:= NG.AddRow();

       NG.BeginUpdate;
       { }
       if Item.ErrorCode = -1 then
       begin

         NG.Cell[C_OS,        RowIndex].AsInteger:= 5;
         NG.Cell[C_PB,        RowIndex].AsBoolean:= false;
         NG.Cell[C_VOIP,      RowIndex].AsBoolean:= false;
         NG.Cell[C_PW,        RowIndex].AsInteger:= 5;
         NG.Cell[C_MOD,       RowIndex].AsInteger:= 5;
         NG.Cells[C_PING,     RowIndex]:= '';
         

         case Item.LastWSockError of
          ERC_ABORT   : NG.Cells[C_SERVER,   RowIndex]:=  GetWORD(167);  //Send request cancelled by user
          ERC_SNDFAIL : NG.Cells[C_SERVER,   RowIndex]:=  GetWORD(168); //Send request failed!
          ERC_TIMEOUT :  begin
                          {}  LostName:= Form1.GetLastknown(Item.ServerIP + ':' + item.ServerQueryPort);
                            if LostName <> '' then
                            NG.Cells[C_SERVER,   RowIndex]:= LostName
                            else NG.Cells[C_SERVER,   RowIndex]:=  GetWORD(133);
                         end;
         end;

         NG.Cell[C_COUNTRYFLAG,   RowIndex].AsInteger:= Form1.GetCountryIndex(GeoIPGetCountryCode(Item.ServerIP));
         NG.Cells[C_COUNTRY,  RowIndex]:=  GeoIPGetCountryName( Item.ServerIP );
         NG.Cells[C_SINFO,    RowIndex]:=  Item.ServerIP + ':' + item.ServerQueryPort;
         NG.Cell[H_ITEMID,    RowIndex].AsInteger:= Item.Index; //-1;

         with GetFavServer(Item.ServerIP + ':' + item.ServerQueryPort) do
         begin
           NG.Cell[H_VIS_COL_CMD,   RowIndex].AsInteger := FavIndex;
           NG.Cells[C_NOTE,         RowIndex]     := NoteText;
         end;


         NG.Cells[C_PLAYERS, RowIndex]:=    '';
         NG.Cells[C_MAPNAME, RowIndex]:=    '';
         NG.Cells[C_TYPE,    RowIndex]:=    '';
         NG.Cell[C_MATES,   RowIndex].AsString := '';

         NG.RowVisible[RowIndex] := Form1.SetRowVisibility(Item);
         NG.EndUpdate;
         Exit;
       end;

       if Item.ErrorCode = -2 then
       begin



         NG.Cell[C_OS,    RowIndex].AsInteger:= GetOs(Item.bf2_os);
         NG.Cell[C_PB,    RowIndex].AsBoolean:= (Item.bf2_anticheat = '1'); //IsPb(Item.bf2_anticheat);
         NG.Cell[C_VOIP,  RowIndex].AsBoolean:= (Item.bf2_voip = '1');
         NG.Cell[C_PW,    RowIndex].AsInteger:= IsPassworded(Item.password);
         NG.Cell[C_MOD,   RowIndex].AsInteger:= IsPR(Item.gamevariant);
         NG.Cells[C_SERVER,  RowIndex]:=  Item.hostname ;        //     SInfo.ValueFromIndex[HOSTNAME];
         NG.Cells[C_PLAYERS, RowIndex]:=  Item.numplayers + '/' + Item.maxplayers + ' (' + Item.bf2_reservedslots + ')';
         NG.Cells[C_MAPNAME, RowIndex]:=  Item.mapname;
         NG.Cells[C_TYPE,    RowIndex]:=  Item.gametype;
         NG.Cells[C_COUNTRY, RowIndex]:=  GeoIPGetCountryName( Item.ServerIP );
         NG.Cells[C_SINFO,   RowIndex]:=  Item.ServerIP + ':' + Item.hostport + ':' + item.ServerQueryPort;
         NG.Cells[C_PING,    RowIndex]:=  '2500';
         GetMatesCout(Item, Info,  GetOut {sHtml_All} );
         NG.Cell[C_MATES,   RowIndex].AsString := Info.OutText;                                       //
         with GetFavServer(Item.ServerIP + ':' + item.ServerQueryPort) do
         begin
            NG.Cell[C_PO_CMD,        RowIndex].AsInteger := FavIndex;
            NG.Cells[C_NOTE,         RowIndex]           := NoteText;
         end;
         NG.Cell[H_ITEMID,  RowIndex].AsInteger     := Item.Index;
         NG.RowVisible[RowIndex]                    := Form1.SetRowVisibility(Item);
         NG.Cell[C_COUNTRYFLAG, RowIndex].AsInteger := Form1.GetCountryIndex(GeoIPGetCountryCode(Item.ServerIP));

         NG.EndUpdate;
         Exit;
       end;



       NG.Cell[C_OS,    RowIndex].AsInteger:= GetOs(Item.bf2_os);
       NG.Cell[C_PB,    RowIndex].AsBoolean:= (Item.bf2_anticheat = '1'); //IsPb(Item.bf2_anticheat);
       NG.Cell[C_VOIP,  RowIndex].AsBoolean:= (Item.bf2_voip = '1');
       NG.Cell[C_PW,    RowIndex].AsInteger:= IsPassworded(Item.password);
       NG.Cell[C_MOD,   RowIndex].AsInteger:= IsPR(Item.gamevariant);
       NG.Cells[C_SERVER,  RowIndex]:=  Item.hostname ;        //     SInfo.ValueFromIndex[HOSTNAME];
       NG.Cells[C_PLAYERS, RowIndex]:=  Item.numplayers + '/' + Item.maxplayers + ' (' + Item.bf2_reservedslots + ')';
       NG.Cells[C_MAPNAME, RowIndex]:=  Item.mapname;
       NG.Cells[C_TYPE,    RowIndex]:=  Item.gametype;
       NG.Cells[C_COUNTRY, RowIndex]:=  GeoIPGetCountryName( Item.ServerIP );
       NG.Cells[C_SINFO,   RowIndex]:=  Item.ServerIP + ':' + Item.hostport + ':' + item.ServerQueryPort;


       NG.Cells[C_PING,    RowIndex]:= ''; //.AsInteger:= 0;
       GetMatesCout(Item, Info,  GetOut {sHtml_All} );


       NG.Cell[C_MATES,   RowIndex].AsString := Info.OutText;
                                               //
      with GetFavServer(Item.ServerIP + ':' + item.ServerQueryPort) do
      begin
       NG.Cell[C_PO_CMD,        RowIndex].AsInteger := FavIndex;
       NG.Cells[C_NOTE,         RowIndex]           := NoteText;
      end;

       NG.Cell[H_ITEMID,  RowIndex].AsInteger:= Item.Index;

       NG.RowVisible[RowIndex] := Form1.SetRowVisibility(Item);

       NG.Cell[C_COUNTRYFLAG,         RowIndex].AsInteger:= Form1.GetCountryIndex(GeoIPGetCountryCode(Item.ServerIP));

       NG.EndUpdate;
    end;


    procedure GridAddPlayersOnline(NG: TNextGrid; Item: TBF2ServerInfoItem);
               // /InFavorites(1,-1)/MateIndex/PlayerIndex
          function FormatCmdIndex(F, M, P : Integer):string;
          begin
              Result:= Format('/%d/%d/%d/', [F,M,P]);
          end;

    var RowIndex, i : integer;

         iCountry, prefix, name  : string;

        iPW : Integer;
        iAC : Boolean;


        Params   : TMParams;
        Info     : TMInfo;
        FsInfo   : TFavServerInfo;
    begin
     
      if Item.ErrorCode = -1 then Exit;
      if Item.TotalPlayersCount <= 0 then Exit;
      NG.BeginUpdate;

      iCountry    :=   GeoIPGetCountryName( Item.ServerIP );
      iAC         :=   (Item.bf2_anticheat = '1');
      iPW         :=   IsPassworded(Item.password);
      FsInfo      :=   GetFavServer(Item.ServerIP + ':' + item.ServerQueryPort);

      GetMatesCout(Item, Info,  GetOut {sHtml_All} );

      for i:=0 to Item.TotalPlayersCount-1 do
      begin
       if item.BF2Player[i].Name = '' then Continue;
       
       {NEW +}
       AdvGetMateParameters(item.bf2_bots, item.BF2Player[i], pAll, Params);

       {Ôïåñäó áîòîôô}
       if Params.Star = 8 then Continue;

       

       prefix := ExtractPrefix(item.BF2Player[i].Name);
       name   := ExtractName(item.BF2Player[i].Name);
       RowIndex:= NG.AddRow();

       {NEW +}     //  Params.Note;  //  Params.Star;
       NG.Cells[C_PO_PREFIX,RowIndex]:= FormatPlayerPrefix(Params.PrefBold, prefix );
       NG.Cells[C_PO_NAME,  RowIndex]:= FormatPlayerName(Params.NameBold, Params.TagBold, Params.TagIndex, name );
       NG.Cells[C_SERVER,   RowIndex]:= Item.hostname;
       NG.Cells[C_PLAYERS,  RowIndex]:= Item.numplayers + '/' + Item.maxplayers + ' (' + Item.bf2_reservedslots + ')';
       NG.Cells[C_MAPNAME,  RowIndex]:= Item.mapname;
       NG.Cells[C_TYPE,     RowIndex]:= Item.gametype;
       NG.Cells[C_COUNTRY,  RowIndex]:= iCountry;
       NG.Cells[C_SINFO,    RowIndex]:= Item.ServerIP + ':' + Item.hostport + ':' + item.ServerQueryPort;
       NG.Cells[C_NOTE,     RowIndex]:= Params.Note;
       NG.Cells[C_PING,     RowIndex]:= '';

       NG.Cell[3,         RowIndex].AsBoolean:= iAC;
       NG.Cell[C_PW,      RowIndex].AsInteger:= iPW;
       NG.Cell[C_MATES,   RowIndex].AsString := Info.OutText;
       NG.Cell[H_ITEMID,  RowIndex].AsInteger:= Item.Index;


        NG.Cell[5,         RowIndex].AsInteger:= Params.Star; //GetPOImageIndex(isMate(item.BF2Player[i].Name));

        NG.Cells[C_PO_CMD,   RowIndex]  := FormatCmdIndex( FsInfo.FavIndex, Params.Mate, i);
        // /InFavorites(1,-1)/MateIndex/PlayerIndex
        NG.RowVisible[RowIndex] := Form1.SetPORowVisibility( NG.Cell[5, NG.RowCount-1 ].AsInteger, Params.Mate) ; //Form1.SetRowVisibility(Item);
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
  Html, Css:    TStringList;
  HtmlFile, CssFile: TextFile;
  S: String;
  CssFileName: string;

  function AnsiToWideString(const AText: AnsiString): WideString;
 	var
 	  BufSize: Integer;
 	begin
 	  Result := '';
 	  BufSize := MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, PAnsiChar(AText), Length(AText), nil, 0);
 	  SetLength(result, BufSize);
 	  MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, PANsiChar(AText), Length(AText), PWideChar(Result), BufSize);
 	end;

  function WideStringToUTF8(const S: WideString): AnsiString;
	var
	  BufSize: Integer;
	begin
	  Result := '';
	  if Length(S) = 0 then Exit;

	  BufSize := WideCharToMultiByte(CP_UTF8, 0, PWideChar(S), Length(S) , nil, 0, nil, nil);
	  SetLength(result, BufSize);
	  WideCharToMultiByte(CP_UTF8, 0, PWideChar(S), Length(S) , PAnsiChar(Result), BufSize, nil, nil);
 end;


  function ExtractName(const FileName: string): string;
  var
    s: string;
  begin
    S := ExtractFileName(FileName);
    Result := LeftStr(S, Length(S) - Length(ExtractFileExt(S)));
  end;
                           {}
  function Content(S: String): WideString;
  begin
    if S = '' then Result := '&nbsp;'  else Result := WideStringToUTF8(AnsiToWideString(S));
  end;

begin
  Html :=    TStringList.Create;

  with NG do
  begin

  { Save Headers: HTML, HEAD, BODY }
  if hsSaveHeaders in SaveSettings then
  begin
    Html.Add('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"' + #13#10#9 + '"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">');
    Html.Add('<html>');
    Html.Add(#9'<head>');
    Html.Add(#9#9'<title>Report</title>');
    Html.Add(#9#9'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">');
    if hsCreateStyleSheet in SaveSettings then
    begin
      Html.Add(#9#9'<link href="' + 'styles.css" rel="stylesheet" type="text/css" />');
    end;

    Html.Add(#9#9 +
    '		<style type="text/css">' +
		'.style1 {'                  +
		'	white-space: nowrap;'      +
		'}'                          +
		'</style>');

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
  	if Columns.Item[i].Visible then
	  begin
		  Html.Add(#9#9#9#9'<th>' +  Content(Columns.Item[i].Header.Caption) + '</th>');
     // Form1.Memo1.Lines.Add( Columns.PositionItem[i].Header.Caption );
	  end;
  Html.Add(#9#9#9'</tr>');

  { Render Data }
  for j := 0 to RowCount - 1 do
    if RowVisible[j] or (hsAllRows in SaveSettings) then
    begin
      //S:= '';
     // SetActiveRow(j); { move record in NextDBGrid }
      Html.Add(#9#9#9'<tr>');
      for i := 0 to NG.Columns.{Count}VisibleCount {- 1} do


        if Columns.Item[i] { PositionItem[i]}.Visible then
        begin

          case Columns.Item[i].Tag of
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

            COLTAG_M    : begin
                             S:= '';
                            case Cell[i, j].AsInteger of
                              0:  S:='PR';
                              1:  S:='BF2';
                            end;

                          end;

            0           : S := Cells[i, j];


           end;

          S := Content(S);

         


          if Columns.Item[i].StyleClass <> '' then
            Html.Add(#9#9#9#9'<td class="' + Columns.Item[i].StyleClass + '">' + S + '</td>')
          else
            Html.Add(#9#9#9#9'<td class="style1">' + S + '</td>')
        end; { Visible }
      //  end;
      Html.Add(#9#9#9'</tr>');
    end; { Row Visible }


  Html.Add(#9#9'</table>');

  if hsSaveHeaders in SaveSettings then
  begin
    Html.Add(#9'</body>');
    Html.Add('<html>');
  end;

   Html.CommaText:= StrReplace(UTF8Encode('«'), UTF8Encode('<')  , Html.CommaText, False);
   Html.CommaText:= StrReplace(UTF8Encode('»'),  UTF8Encode('>')  , Html.CommaText, False);
          

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
    Css :=  TStringList.Create;

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
      with Columns.Item[i] do
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


 
procedure ProcessPlayers(PGrid, MGrid : TNextGrid; Item: TBF2ServerInfoItem);
var
 Params   : TMParams;
 i: integer;
begin
    MGrid.ClearRows;
    PGrid.ClearRows;

  if Item.ErrorCode = -1 then  Exit;

  with Item do
  begin
     for i:=0 to TotalPlayersCount-1 do
     begin
        AdvGetMateParameters(item.bf2_bots, BF2Player[i], pAll, Params);

        Params.Team1ImxIndex := Form1.GetFractionFlagImageIndexByTeamName(Item.bf2_team1);
        Params.Team2ImxIndex := Form1.GetFractionFlagImageIndexByTeamName(Item.bf2_team2);

        GridAddPlayerInfoW(PGrid, BF2Player[i], Params, i);
        if Params.Mate > 0 then
        GridAddPlayerInfoW(MGrid, BF2Player[i], Params, i);
     end;
  end;

 // Sort


end;


procedure GridAddPlayerInfoW(NG: TNextGrid; Item: TPlayerInfo; P: TMParams; pID: Integer);
var prefix, name : string;  R: Integer;
begin
      if item.Name = '' then Exit;

      R:= NG.AddRow();
      NG.BeginUpdate;

      prefix := ExtractPrefix(item.Name);
      name   := ExtractName(item.Name);

      NG.Cells[1, R]:= FormatPlayerPrefix(P.PrefBold, prefix ); //ExtractPrefix(item.Name);
      NG.Cells[2, R]:= FormatPlayerName(P.NameBold, P.TagBold, P.TagIndex, name );//ExtractName(item.Name);


      NG.Cells[8, R]:= item.Team;

      //if R < 14 then
    //  NG.Cell[13, R].AsInteger := 11;
    
      if Item.Team = '1' then
      NG.Cell[13, R].AsInteger := p.Team1ImxIndex else
      if Item.Team = '2' then
      NG.Cell[13, R].AsInteger:= p.Team2ImxIndex else
       NG.Cell[13, R].AsInteger:= -1;

    { }

      
      NG.Cell[3, R].AsInteger:= SafeStr2Int(item.Score);
      NG.Cell[4, R].AsInteger:= SafeStr2Int(item.Ping);
      NG.Cell[5, R].AsInteger:= SafeStr2Int(item.Deaths);
      NG.Cell[6, R].AsInteger:= SafeStr2Int(item.Pid);
      NG.Cell[7, R].AsInteger:= SafeStr2Int(item.Skill);

      NG.Cell[9,   R].AsFloat    :=  P.Mate;
      NG.Cell[10,  R].AsInteger  :=  P.Star;
      NG.Cells[11, R]            :=  P.Note;

      NG.Cell[12,  R].AsInteger  :=  pID;

      NG.EndUpdate;
end;


{if not Then -1}
function GridCOLStrExists(NG: TNextGrid; S: string; ACOL: Integer; ExcludeSelectedRow: Boolean = True): Integer;
begin
    for Result:=0 to NG.RowCount-1 do
    begin
       if ExcludeSelectedRow and (Result = NG.SelectedRow) then  Continue;
        if StrCompareNoCase(NG.Cells[ACOL, Result],  S)   = 0 then Exit;
    end;
    Result:= -1;
end;

procedure GridPOReplaceFavIndex(NG: TNextGrid; IdValue, newValue : Integer);

          function FormatCmdIndex(F, M, P : Integer):string;
          begin
              Result:= Format('/%d/%d/%d/', [F,M,P]);
          end;

var i: Integer;
begin
   for I:=0 to NG.RowCount-1 do
   begin
      if  NG.Cell[H_ITEMID, I].AsInteger = IdValue then
       NG.Cells[C_PO_CMD, I]:= FormatCmdIndex( newValue, GetEntryValueI( NG.Cells[C_PO_CMD, I] , Entry_MATEINDEX , '/' ), GetEntryValueI( NG.Cells[C_PO_CMD, I] , Entry_PLAYERINDEX , '/' ) ) ;
   end;
end;





procedure GridPlayersMatesSilentMIndexUpdate(NG1, NG2, NG3: TNextGrid; Slist: TBF2ServerSList );
var i: integer; P : TMParams;  FullName, prefix, name: string;  asc: Boolean; Info: TMInfo;
begin
   if NG1.RowCount <= 0 then Exit;

  {PlayersGrid}
   NG2.BeginUpdate;
   for I:= 0 to NG2.RowCount-1 do
   begin
     FullName:= Slist.AnItems[NG1.Cell[14, NG1.SelectedRow ].AsInteger].BF2Player[ NG2.Cell[12, I].asInteger ].Name;

     GetMateParameters( FullName,  pAll, P  );

     prefix := ExtractPrefix(FullName);
     name   := ExtractName(FullName);

     NG2.Cell[9,   I].AsFloat     :=  P.Mate;
     NG2.Cells[1,  I]             :=  FormatPlayerPrefix(P.PrefBold, prefix ); //ExtractPrefix(item.Name);
     NG2.Cells[2,  I]             :=  FormatPlayerName(P.NameBold, P.TagBold, P.TagIndex, name );//ExtractName(item.Name);
     NG2.Cell[10,  I].AsInteger   :=  P.Star;
     NG2.Cells[11, I]             :=  P.Note;
   end;

   NG2.Refresh;
 NG2.EndUpdate;

  {MatesGrid}

  NG3.BeginUpdate;

  NG3.ClearRows;
  with Slist.AnItems[NG1.Cell[14, NG1.SelectedRow ].AsInteger] do
  begin
      P.Team1ImxIndex := Form1.GetFractionFlagImageIndexByTeamName(bf2_team1);
      P.Team2ImxIndex := Form1.GetFractionFlagImageIndexByTeamName(bf2_team2);
     for i:=0 to TotalPlayersCount-1 do
     begin
        AdvGetMateParameters(bf2_bots, BF2Player[i], pAll, P);

        

        if P.Mate > 0 then
        GridAddPlayerInfoW(NG3, BF2Player[i], P, i);
     end;
  end;

   if (NG3.SortedColumn <> nil) and (NG3.RowCount > 0) then
   begin
    asc:= NG3.SortedColumn.SortKind = skAscending;
    NG3.SortColumn(NG3.SortedColumn ,  asc );
   end;

   NG3.Refresh;
   NG3.EndUpdate;

end;

procedure GridSilentUpdateMatesCount(NG : TNextGrid);
var i: Integer; Info: TMInfo;
begin
   if NG.RowCount <= 0 then Exit;

  NG.BeginUpdate;
  for i:= 0 to NG.RowCount-1 do
  begin
    GetMatesCout( Form1.GetBF2List(NG.Tag).AnItems[NG.Cell[14, i ].AsInteger], Info,  GetOut  );
    if Info.OutText = '0' then
    NG.Cell[C_MATES,   I].AsString := '' else NG.Cell[C_MATES,   I].AsString := Info.OutText;
  end;

     NG.Refresh;
   NG.EndUpdate;
end;

procedure GridPOSilentUpdateMates(NG : TNextGrid);
          function FormatCmdIndex(F, M, P : Integer):string;
          begin
              Result:= Format('/%d/%d/%d/', [F,M,P]);
          end;

          var 
          M : TMParams;
          i ,F,  P: Integer;   prefix1, name1 : string;
begin
   if NG.RowCount <= 0 then Exit;

    NG.BeginUpdate;
   for i:=0 to NG.RowCount-1 do
   begin
       with Form1.GetBF2List(NG.Tag).AnItems[NG.Cell[14, i ].AsInteger] do
       begin
          P:=  GetEntryValueI( NG.Cells[C_PO_CMD, I], Entry_PLAYERINDEX, '/');
          F:=  GetEntryValueI( NG.Cells[C_PO_CMD, I], Entry_FAVINDEX, '/');
          GetMateParameters( BF2Player[P].Name ,  pAll, M  );
          prefix1 := ExtractPrefix( BF2Player[P].Name);
          name1   := ExtractName(BF2Player[P].Name);
       end;

       NG.Cell[C_PO_CMD,   I].AsString :=  FormatCmdIndex( F, M.Mate, P);
       NG.Cells[1,  I]             :=  FormatPlayerPrefix(M.PrefBold,  prefix1  );
       NG.Cells[2,  I]             :=  FormatPlayerName(M.NameBold, M.TagBold, M.TagIndex, name1 );
       NG.Cell[5,  I].AsInteger    :=  M.Star;
       NG.Cells[16, I]             :=  M.Note;
   end;
      NG.Refresh;
   NG.EndUpdate;
end;


end.
