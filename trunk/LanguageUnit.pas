unit LanguageUnit;

interface

uses
  Unit1, Options, AdvaddBListFrmUnit, About, ServerPassUnit, TntIniFiles, SysUtils, FavAddFrm;


procedure ReadLng(LFile: String);
procedure SetLanguage();
function GetWORD(Index: Integer) : AnsiString;

implementation

uses MUnit;

//const
//   WordsCount = 133;

var
  WORDS : array [0..195] of string;

function GetWORD(Index: Integer) : AnsiString;
begin
  Result:= WORDS[index];
end;

procedure ReadLng(LFile: String);
var   ini: TTntIniFile;
      i: Integer;
begin

  if not  FileExists( LFile ) then
    LFile:= GetDefLangFile;

   ini := TTntIniFile.Create(LFile);

   for i:= 1 to Length(WORDS)-1 do //WordsCount-1 do
   WORDS[i] := ini.ReadString('app', intToStr(i),'');


   ini.Free;
   SetLanguage;
end;


procedure SetLanguage();
var i: Integer;
begin
 with Form1 do
 begin
  TBSubmenuItem2.Caption := WORDS[1];
  TBSubmenuItem3.Caption := WORDS[2];

  {Join server as}
  TBSubmenuItem5.Caption := WORDS[3];
  TBSubmenuItem6.Caption := WORDS[3];
  TBSubmenuItem1.Caption := WORDS[3];

  {Update favorites list}
  TBItem11.Caption := WORDS[4];
  TBItem1.Hint :=     WORDS[4];

  {Update gamespy list}
  TBItem10.Caption := WORDS[5];
  TBItem2.Hint :=     WORDS[5];

  {Update players online list}
  TBItem20.Caption := WORDS[6];
  TBItem3.Hint :=     WORDS[6];

  {Add server to favorites}
  Add2Fav2.Caption        := WORDS[7];
  Add2fav.Caption         := WORDS[7];
//  TBItemAddToFav3.Caption := WORDS[7];
  TBItem4.Hint            := WORDS[7];

  {Remove server from favorites}
  TBItem5.Hint            :=  WORDS[8];
  Rem4Fav2.Caption        :=  WORDS[8];
  Rem4Fav.Caption         :=  WORDS[8];
 // TBItem29.Caption        :=  WORDS[8];

  //Export to HTML
  TBSubmenuItem4.Caption  := WORDS[9];
  TBItem25.Caption  := WORDS[130];
  TBItem24.Caption  := WORDS[131];
  TBItem23.Caption  := WORDS[132];

  //Options ...
  TBItem19.Caption  := WORDS[10];
  TBItem6.Hint      := WORDS[10];

  //About
  TBItem22.Caption  := WORDS[11];
  //Exit
  TBItem12.Caption  := WORDS[12];

  //Favorites
  NxTabSheet2.Caption := Format( WORDS[13], [NxTabSheet2.tag] );
  //GameSpy
  NxTabSheet6.Caption := Format( WORDS[14], [NxTabSheet6.tag] );
  //PlayersOnline
  NxTabSheet7.Caption := Format( WORDS[15], [NxTabSheet7.tag] );
  TBShowPlayersOnline.Caption := WORDS[117];

  //Players
  NxTabSheet3.Caption           :=  WORDS[16];
  NxTextColumn2.Header.Caption  :=  WORDS[16];
  NxTextColumn13.Header.Caption :=  WORDS[16];
  NxTextColumn19.Header.Caption :=  WORDS[16];
  Label7.Caption                :=  WORDS[35];
  TBItem13.Caption              :=  WORDS[16];

  // Mates
  NxNumberColumn18.Header.Caption :=  WORDS[17];
  NxNumberColumn15.Header.Caption :=  WORDS[17];
  NxNumberColumn2.Header.Caption  :=  WORDS[17];
  NxTabSheet1.Caption             :=  WORDS[17];
  TBItem26.Caption                :=  WORDS[17];

  //Tool bar
  TBItemToolBar.Caption             :=  WORDS[18];
  //Search bar
  TBItemSearchBar.Caption           :=  WORDS[19];
  //Filter
  TBItemFilterBar.Caption           :=  WORDS[20];
  //Show servers
  TBShowServers.Caption             :=  WORDS[21];
  TBItem17.Caption                  :=  WORDS[22];
  TBItem16.Caption                  :=  WORDS[23];
  TBItem15.Caption                  :=  WORDS[24];
  TBItem14.Caption                  :=  WORDS[25];
  TBItem18.Caption                  :=  WORDS[26];

 // TBShowPlayersOnline.Caption       :=
   TBItem8.Caption     :=  WORDS[27];
   TBItem9.Caption     :=  WORDS[28];
   TBItem27.Caption    :=  WORDS[29];
  // TBItem28.Caption    :=  WORDS[30];
   TBItem44.Caption    :=  WORDS[152];
   TBItem45.Caption    :=  WORDS[154];
   TBItem43.Caption    :=  WORDS[153];
   TBItem42.Caption    :=  WORDS[155];


   //Show\Hide search bar
   TBItemShowHideSearchBar.Hint := WORDS[31];
   TBitemHideFilterBar.Hint := WORDS[32];

   // Server name
   NxTextColumn1.Header.Caption  :=  WORDS[33];
   NxTextColumn12.Header.Caption :=  WORDS[33];
   NxTextColumn18.Header.Caption :=  WORDS[33];
   //Copy Server name - PopMenu
   TBItem35.Caption :=  WORDS[33];

   //Ping
   NxNumberColumn1.Header.Caption  :=  WORDS[34];
   NxNumberColumn9.Header.Caption  :=  WORDS[34];
   NxNumberColumn17.Header.Caption :=  WORDS[34];
   NxNumberColumn4.Header.Caption :=  WORDS[34];
   NxNumberColumn11.Header.Caption :=  WORDS[34];
   Label4.Caption :=  WORDS[34] + ' <=';
   //[35 - OUT]

   //MApname
   NxTextColumn3.Header.Caption :=  WORDS[36];
   NxTextColumn14.Header.Caption := WORDS[36];
   NxTextColumn20.Header.Caption := WORDS[36];

   //Type
   NxTextColumn21.Header.Caption := WORDS[37];
   NxTextColumn15.Header.Caption := WORDS[37];
   NxTextColumn4.Header.Caption := WORDS[37];

   //Mates
   NxNumberColumn2.Header.Caption := WORDS[38];
   NxNumberColumn15.Header.Caption := WORDS[38];
   NxNumberColumn18.Header.Caption := WORDS[38];

   //Country
   NxTextColumn22.Header.Caption := WORDS[39];
   NxTextColumn16.Header.Caption := WORDS[39];
   NxImageColumn6.Header.Caption := WORDS[39];

   //List empty. If you have favorites servers in the list, press Alt+F to update information about them.

   GlobalServersGrid.Caption:= WORDS[40];
   GameSpyGrid.Caption:= WORDS[41];
   PROnlinePlayersGrid.Caption:= WORDS[42];

   //Detailed info
   NxTabSheet4.Caption := WORDS[43];

   //Prefix
   NxTextColumn8.Header.Caption := WORDS[44];
   NxTextColumn5.Header.Caption := WORDS[44];
   NxTextColumn24.Header.Caption := WORDS[44];

   //Player name
   NxTextColumn25.Header.Caption := WORDS[45];

   //Name
   NxTextColumn6.Header.Caption := WORDS[46];
   NxTextColumn9.Header.Caption := WORDS[46];

   //Score
   NxNumberColumn10.Header.Caption := WORDS[47];
   NxNumberColumn3.Header.Caption  := WORDS[47];

   //48=Deaths
    NxNumberColumn5.Header.Caption := WORDS[48];
    NxNumberColumn12.Header.Caption := WORDS[48];
  //49=Pid
   NxNumberColumn6.Header.Caption := WORDS[49];
   NxNumberColumn13.Header.Caption := WORDS[49];

 //50=Kills
 NxNumberColumn7.Header.Caption := WORDS[50];
 NxNumberColumn14.Header.Caption := WORDS[50];


 //51=Team
 NxTextColumn7.Header.Caption := WORDS[51];
 NxTextColumn10.Header.Caption := WORDS[51];

//52=Update selected server
  TBItem7.Hint          := WORDS[52];
  TBItemRefresh.Caption := WORDS[52];


  //53=Copy player
   CopyPlayer.Caption := WORDS[53];
 //  TBItemOPCopyPlayers.Caption := WORDS[53];

  //54=Add prefix to buddy list
   Addprefix2buddy.Caption   := WORDS[54];
 //  TBItemOPAddPrefix.Caption := WORDS[54];
  //55=Add name to buddy list
     addname2buddy.Caption   := WORDS[55];
 //    TBItemOPAddname.Caption := WORDS[55];
  //56=Remove prefix from buddy list
 // TBItemOPremPrefix.Caption  := WORDS[56];
  remprefix.Caption          := WORDS[56];
  //57=Remove name from buddy list
 // TBItemOPRemname.Caption    := WORDS[57];
  remname.Caption            := WORDS[57];




  //150=Copy player note
  CopyPlayerNote.Caption     := WORDS[150];
//  OPCopyPlayerNote.Caption   := WORDS[150];
  //151=Copy server note
  TBItem34.Caption     := WORDS[151];

  //148=Player note
  NxTextColumn30.Header.Caption := WORDS[148];

  //149=Server note
  NxTextColumn29.Header.Caption    := WORDS[149];
  NxTextColumn28.Header.Caption    := WORDS[149];
  //Note
  NxTextColumn26.Header.Caption    := WORDS[141];
  NxTextColumn27.Header.Caption    := WORDS[141];

  //58=Copy
  TBDTinfoCopy.Caption       := WORDS[58];
  //59=Select all
  TBDTinfoSelAll.Caption     := WORDS[59];
  //67=Show application
  Showapplication1.Caption := WORDS[67];

    //111=FILTER BY:
  Label6.Caption := WORDS[111];
  //112=Server name
  Label3.Caption := WORDS[112];
  //113=Map name
  Label5.Caption := WORDS[113];
  //114=Text
  Label1.Caption := WORDS[114];

  //116=look in:
 // Label2.Caption := WORDS[116];
  (*
  //118=server name       {
         // Label8.Caption := WORDS[118];
  RadioButtonServerName.Caption := WORDS[118];
  //119=player name
        // Label9.Caption := WORDS[119];
  RadioButtonPlayerName.Caption := WORDS[119];
  //120=prefix
        //Label10.Caption := WORDS[120];
  RadioButtonPrefix(.Caption := WORDS[120];
                   *)
   RadioButtonServerName.Caption := WORDS[118];
   RadioButtonPlayerName.Caption := WORDS[119];
   RadioButtonPrefix.Caption := WORDS[120];

    //115=Search
 // TBItem21.Caption := WORDS[115];
  TBSubmenuItem8.Caption := WORDS[115];

   for i:=0 to TBSubmenuItem8.Count-1 do
    if TBSubmenuItem8.Items[i].Checked then
    TBSubmenuItem8.Caption :=  TBSubmenuItem8.Caption + ': ' + TBSubmenuItem8.Items[i].Caption;
  {}





  //165=Click-update
  TBClickUpdate.Hint := WORDS[165];

  //166 166=Map preview
  TBItemMapPreview.Caption := WORDS[166];

  //
   CancelButton.Caption := WORDS[169];



   {TBItemAdToBodyList \ Add to buddy list \ Добавить в список друзей
CopyTextItem \ Copy text \ Копировать \
 TBItemCopyCell \ Selected cell \ Текст выбранной ячейки
 TBItemCopyname \ Player name \ Имя игрока
 TBItemPlayerNote \ Note \ Текст заметки
PrefixesItem \ Prefixes \ Префиксы
 TBItemPrfixA \ Add selected ... \ Добавить из выделенного
 TBItemPrfixE \ Edit selectd ... \ Редактировать выделенный
 TBItemPrfixD \ Delete \ Удалить
NamesItem \ Names \ Имена
 TBItemNameA \ Add selected ... \ Добавить из выделенного
 TBItemNameE \ Edit selectd ... \ Редактировать выделенный
 TBItemNameD
TagsItem \ Tags \ Тэги
 TBItemTagsA \ Add selected ... \ Добавить из выделенного
 TBItemTagsE \ Edit selectd ... \ Редактировать выделенный
 TBItemTagsD \ Delete \ Удалить}


   //Copy Cell text
   TBItem33.Caption       := WORDS[175];
   TBSubmenuItem7.Caption := WORDS[174];

   TBItemAdToBodyList.Caption:= WORDS[173];//\ Add to buddy list \ Добавить в список друзей
   CopyTextItem.Caption      := WORDS[174]; //\ Copy text \ Копировать \
   TBItemCopyCell.Caption    := WORDS[175]; //\ Selected cell \ Текст выбранной ячейки
   TBItemCopyname.Caption    := WORDS[176]; //\ Player name \ Имя игрока
   TBItemPlayerNote.Caption  := WORDS[177]; //\ Note \ Текст заметки

   PrefixesItem.Caption      := WORDS[178]; //\ Prefixes \ Префиксы
   TBItemPrfixA.Caption      := WORDS[179]; //\ Add selected ... \ Добавить из выделенного
   TBItemPrefixE.Caption     := WORDS[180]; //\ Edit selectd ... \ Редактировать выделенный
   TBItemPrefixD.Caption     := WORDS[181]; //\ Delete \ Удалить

   NamesItem.Caption         := WORDS[182]; //\ Names \ Имена
   TBItemNameA.Caption       := WORDS[179]; //\ Add selected ... \ Добавить из выделенного
   TBItemNameE.Caption       := WORDS[180]; //\ Edit selectd ... \ Редактировать выделенный
   TBItemNameD.Caption       := WORDS[181];  //

   TagsItem.Caption          := WORDS[183]; //\ Tags \ Тэги
   TBItemTagsA.Caption       := WORDS[179]; //\ Add selected ... \ Добавить из выделенного
   TBItemTagsE.Caption       := WORDS[180]; //\ Edit selectd ... \ Редактировать выделенный
   TBItemTagsD.Caption       := WORDS[181]; // \ Delete \ Удалить

   {PO}
   TBItemAdToBodyListPO.Caption:= WORDS[173];//\ Add to buddy list \ Добавить в список друзей
   CopyTextItemPO.Caption      := WORDS[174]; //\ Copy text \ Копировать \
   TBItemCopyCellPO.Caption    := WORDS[175]; //\ Selected cell \ Текст выбранной ячейки
   TBItemCopynamePO.Caption    := WORDS[176]; //\ Player name \ Имя игрока
   TBItemPlayerNotePO.Caption  := WORDS[177]; //\ Note \ Текст заметки

   PrefixesItemPO.Caption      := WORDS[178]; //\ Prefixes \ Префиксы
   TBItemPrfixAPO.Caption      := WORDS[179]; //\ Add selected ... \ Добавить из выделенного
   TBItemPrefixEPO.Caption     := WORDS[180]; //\ Edit selectd ... \ Редактировать выделенный
   TBItemPrefixDPO.Caption     := WORDS[181]; //\ Delete \ Удалить

   NamesItemPO.Caption         := WORDS[182]; //\ Names \ Имена
   TBItemNameAPO.Caption       := WORDS[179]; //\ Add selected ... \ Добавить из выделенного
   TBItemNameEPO.Caption       := WORDS[180]; //\ Edit selectd ... \ Редактировать выделенный
   TBItemNameDPO.Caption       := WORDS[181];  //

   TagsItemPO.Caption          := WORDS[183]; //\ Tags \ Тэги
   TBItemTagsAPO.Caption       := WORDS[179]; //\ Add selected ... \ Добавить из выделенного
   TBItemTagsEPO.Caption       := WORDS[180]; //\ Edit selectd ... \ Редактировать выделенный
   TBItemTagsDPO.Caption       := WORDS[181]; // \ Delete \ Удалить












 end;


 with Form3 do
 begin
  Caption:= WORDS[172];
  RadioButton1.Caption:= WORDS[44];   //Prefix
  RadioButton2.Caption:= WORDS[45];   //Name
  RadioButton3.Caption:= WORDS[74];   //Tag
  Label3.Caption:=WORDS[76];          //Tag pos
  Label1.Caption := WORDS[75];//tag case sens
  Label13.Caption:= WORDS[139];// custom note
  Label12.Caption:= WORDS[140]; //star
  CheckBox1.Caption:=  WORDS[138];  //bold
  Button3.Caption:= WORDS[66];
 end;

 With  OptionsForm do
 begin

   //Live Sort
  GroupBox3.Caption := WORDS[194];
  //  130=Favorites
  LiveFavCb.Caption := WORDS[130];
  //131=GameSpy
  liveGSCb.Caption := WORDS[131];
  //132=PlayersOnline
  LivePoCb.Caption := WORDS[132];




   //Import mode rewrite
  CheckBox2.Caption:= WORDS[188];
  CheckBox1.Caption:= WORDS[188];


 //Copy
  Copy3.Caption:= WORDS[58];
  Button19.Caption:= WORDS[58];
  Button16.Caption:= WORDS[58];
  Button13.Caption:= WORDS[58];
  CopyFavServBtn.Caption:= WORDS[58];

  //Prefix
  NxTextColumn1.Header.Caption:= WORDS[44];
  Label17.Caption:= WORDS[44];
  Label9.Caption:= WORDS[44];
  //Player name
  NxTextColumn2.Header.Caption:= WORDS[45];
  Label10.Caption:= WORDS[45];
  Label18.Caption:= WORDS[45];



    //*************************************************************


  //60=Buddy list
  JvPageListTreeView1.Items[0].Text :=      WORDS[60];
  JvGradientHeaderPanel2.LabelCaption:=     WORDS[60];
       {Prefixes}
       JvPageListTreeView1.Items[1].Text := WORDS[69];
       {Pnames}
       JvPageListTreeView1.Items[2].Text := WORDS[70];
       {ClanTAgs}
       JvPageListTreeView1.Items[3].Text := WORDS[71];

  //61=Favorites servers
  JvPageListTreeView1.Items[4].Text:= WORDS[61];
  JvGradientHeaderPanel1.LabelCaption:=    WORDS[61];

  //62=General settings
  JvPageListTreeView1.Items[5].Text:= WORDS[62];
  JvGradientHeaderPanel3.LabelCaption:=    WORDS[62];
       JvPageListTreeView1.Items[6].Text:= WORDS[85];
       JvPageListTreeView1.Items[7].Text:= WORDS[98];

  //63=Join server
  JvPageListTreeView1.Items[8].Text:= WORDS[63];
  JvGradientHeaderPanel4.LabelCaption:=    WORDS[63];

  //64=GameSpy filter
  JvPageListTreeView1.Items[9].Text:= WORDS[64];
  JvGradientHeaderPanel5.LabelCaption:=    WORDS[64];








  //*************************************************************


  //Import
   ImportprefixButton.Caption := WORDS[184];
   ImportNameButton.Caption   := WORDS[185];


  //65=Save
  SaveOptionsButton.Caption := WORDS[65];

  //66=Cancel
  Button2.Caption := WORDS[66];


  //68=Options
  Caption:= WORDS[68];
  //69=Prefixes
  NxTabSheet4.Caption := WORDS[69];
  //70=Players names
  NxTabSheet5.Caption := WORDS[70];
  //71=Clans tags
  NxTabSheet6.Caption := WORDS[71];
  //72=Add
  Button12.Caption := WORDS[72];
  Button15.Caption := WORDS[72];
  Button18.Caption := WORDS[72];
  Button3.Caption  := WORDS[72];
  AddServerButton.Caption := WORDS[72];
  //73=Delete
  Button20.Caption := WORDS[73];
  Button17.Caption := WORDS[73];
  Button14.Caption := WORDS[73];
  Delete3.Caption  := WORDS[73];
  Button4.Caption  := WORDS[73];
  //74=Tag
  Label19.Caption:= WORDS[74];
  NxTextColumn3.Header.Caption:= WORDS[74];
  //75=Case sensetive
  CheckBoxClanTagCaseSens.Caption:= WORDS[75];
  NxCheckBoxColumn4.Header.Caption:=WORDS[75];

  //76=Tag possition in game
  RadioGroupClanTag.Caption:=WORDS[76];
  
  //77=1) at the beginning
  RadioGroupClanTag.Items.Strings[0]:= WORDS[77];
  //78=2) at the end
  RadioGroupClanTag.Items.Strings[1]:= WORDS[78];
  //79=3) inside name
  RadioGroupClanTag.Items.Strings[2]:= WORDS[79];
  //80=4) any where
  RadioGroupClanTag.Items.Strings[3]:= WORDS[80];

  //81=Possition
  NxComboBoxColumn1.Header.Caption:=WORDS[81];
  //82=*Note: In order to get valid server details you must enter QueryPort instead of GamePort, by default GamePort is 16567 and QueryPort is 29900
  //Label3.Caption := WORDS[82];
  NoteMemo1.Text :=  WORDS[82];

  //83=Servers
  Label6.Caption := WORDS[83];
  //84=Delete    OUT
  DelBtnFavServ.Caption := WORDS[181];

  //85=Engine
  EngineNxTabSheet.Caption := WORDS[85];

  //86=Threads
  Label4.Caption := WORDS[86];

  //87=Timeout (sec)
  Label5.Caption := WORDS[87];
  //88=Retry count on update server failure
  Label1.Caption := WORDS[88];
  //89=On action "Join server" do:
  Label16.Caption := WORDS[89];
  //90=On application starts do:
  Label20.Caption := WORDS[90];

  //==========================================
  //91=Nothing
  StartAppComboBoxActions.Tag:=StartAppComboBoxActions.ItemIndex;
  JoinserverComboBoxActions.Tag:=JoinserverComboBoxActions.ItemIndex;

  StartAppComboBoxActions.Items.Strings[0]:= WORDS[91];
  JoinserverComboBoxActions.Items.Strings[0]:= WORDS[91];
  //92=Minimize application
  JoinserverComboBoxActions.Items.Strings[2]:= WORDS[92];
  //93=Terminate application
  JoinserverComboBoxActions.Items.Strings[1]:= WORDS[93];
  //94=Minimize application to try
  JoinserverComboBoxActions.Items.Strings[3]:= WORDS[94];
  //95=Update Favorites
  StartAppComboBoxActions.Items.Strings[1]:= WORDS[95];
  //96=Update GameSpy
  StartAppComboBoxActions.Items.Strings[2]:= WORDS[96];
  //97=Update PlayersOnline
  StartAppComboBoxActions.Items.Strings[3]:= WORDS[97];

  StartAppComboBoxActions.ItemIndex   := StartAppComboBoxActions.Tag;
  JoinserverComboBoxActions.ItemIndex := JoinserverComboBoxActions.Tag;
  //==================================================




  //98=Visual
  VisualNxTabSheet.Caption := WORDS[98];
  //99=Highlight mates
  Label14.Caption        := WORDS[99];
  //100=Highlight server with mates
  Label15.Caption        := WORDS[100];
  //101=Application skin
  Label2.Caption         := WORDS[101];
  //102=Language
  Label7.Caption         := WORDS[102];
  //103=*Note: Your password will be stored in settings file without encryption
  // Label13.Caption        := WORDS[103];
  NoteMemo2.Text         := WORDS[103];

  //104=PR execution
  GroupBox2.Caption      := WORDS[104];
  //105=pr.exe path:
  Label8.Caption         := WORDS[105];
  //106=Browse ...
  Button1.Caption        := WORDS[106];
  //107=Parameters:
  Label11.Caption        := WORDS[107];
  //108=Online accounts
  GroupBox1.Caption      := WORDS[108];
  //109=Password
  Label12.Caption        := WORDS[109];
  //110=Use custom filter
  customfiltercb.Caption := WORDS[110];

  //Edit Button
  Button6.Caption :=  WORDS[137];
  Button5.Caption :=  WORDS[137];
  Button7.Caption :=  WORDS[137];
  AppEditFavServBtn.Caption :=  WORDS[137];

  //Star
  Label25.Caption  :=  WORDS[140];
  Label23.Caption  :=  WORDS[140];
  Label24.Caption  :=  WORDS[140];

  //Bold
  BoldPrefixCb.Caption  :=  WORDS[138];
  BoldNameCb.Caption    :=  WORDS[138];

  //Custom note
  Label21.Caption    :=  WORDS[139];
  Label22.Caption    :=  WORDS[139];
  Label26.Caption    :=  WORDS[139];

  //Note
  NxTextColumn5.Header.Caption :=  WORDS[141];
  NxTextColumn4.Header.Caption :=  WORDS[141];
  NxTextColumn6.Header.Caption :=  WORDS[141];
  NxTextColumn8.Header.Caption :=  WORDS[141];

  //Server ( Format: IP:QPort )
  Label27.Caption := WORDS[142];
  //View mates format
  Label3.Caption := WORDS[143];

  ShowMatesStyle.Tag := ShowMatesStyle.ItemIndex;
  ShowMatesStyle.Items.Strings[0] :=  WORDS[144];
  ShowMatesStyle.Items.Strings[1] :=  WORDS[145];
  ShowMatesStyle.Items.Strings[2] :=  WORDS[146];
  ShowMatesStyle.Items.Strings[3] :=  WORDS[147];
  ShowMatesStyle.ItemIndex        :=  ShowMatesStyle.Tag;
  //156=Check for updates automatically
  CheckUpdatescb.Caption := WORDS[156];

 end;

 with PasswordForm2 do
 begin
   Caption:=         WORDS[135];
   Label1.Caption:=  WORDS[134];
   Button1.Caption:= WORDS[66];

 end;

 with AboutForm do
 begin  
   //158=Close
  Button1.Caption :=  WORDS[158];
  Button2.Caption :=  WORDS[158];
  //157=Check for updates
  Button5.Caption :=  WORDS[157];
  
  //159=Web
  Button3.Caption :=  WORDS[159];
   //164=Скачать
  Button4.Caption :=  WORDS[164];

  
 end;

 with AddToFavForm do
 begin
        Caption        := WORDS[7];
        Label13.Caption:= WORDS[139];
        Button2.Caption:= WORDS[72];
        Button3.Caption:= WORDS[66];

 end;


end;



end.
 