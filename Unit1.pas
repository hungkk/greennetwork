unit Unit1;

//   Дойчлан дойчланд убер алес

interface

uses
  Windows, Messages,
  SysUtils, //Variants,
  Classes,
  Graphics,
  Controls, Forms,

  NxColumnClasses,
  NxColumns,
  NxScrollControl,
  NxCustomGridControl,
  NxCustomGrid,
  NxGrid,
  NxPageControl,

  
  
  NxAutoCompletion,
  NxCells,

  ExtCtrls,
  ComCtrls,
  Menus,
  XPMan,
  StdCtrls,
  ImgList,

  BF2ServerInfo,
  cStrings,
  JvComponentBase,
  JvExComCtrls,
  JvStatusBar,
  GeoIP,
  JvTrayIcon,

  WinSkinData,
  TB2Item,
  TB2Dock,
  TB2Toolbar,
  Spin, Dialogs, Math, PngImageList, OverbyteIcsWndControl,
  OverbyteIcsHttpProt;

{$I defs.inc}

  const
        BuildDate = '2010.03.20';
        VerNo     = '1.0.29';
        VERCOMP   = 1029;



        {NEW$}
        S_GAME_SPY  = 2;
        S_FAVORITES = 1;
        S_PRPONLINE = 3;
        SS_MULTI    = -1;

        P_ALLPLAYERS  = 0;
        P_MATES       = 1;


        SERVERS_POPUP       = 98;
        ONLINEPLAYERS_POPUP = 99;
        PLAYERSINFO_POPUP   = 44;



        GET_GAMESPY      = 1;
        GET_FAVORITES    = 2;
        JOINSERVER       = 3;
        ADDTOFAV         = 4;
        REMOVEFROFAV     = 5;
        ADDPREFIX        = 6;
        DELETEPREFIX     = 7;
        ADDNAME          = 8;
        DELETENAME       = 9;
        UPDATESELECTED   = 10;
        COPYNAME         = 11;
        iOPTIONS         = 12;
        iABOUT           = 13;
        VIEW_SERVERS     = 14;
        GET_ALLPLAYERS   = 15;
        SEARCH_STR       = 16;

        EXPORT_FAVORITES = 17;
        EXPORT_GAMESPY   = 18;
        EXPORT_PROP      = 19;

        EXPORT_PLAYERS   = 20;
        EXPORT_MATES     = 21;

        VIEW_PLAYERSONLINE = 22;

        COPY_NOTE = 23;


type

   TAfterEvent = (eMultiThScann, eSingleThScann);

type
  TForm1 = class(TForm)
    GlobalServersGrid: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxImageColumn1: TNxImageColumn;
    NxTextColumn2: TNxTextColumn;
    NxImageColumn4: TNxImageColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxImageColumn5: TNxImageColumn;
    XPManifest1: TXPManifest;
    BottomPanel: TPanel;
    Splitter1: TSplitter;
    NxPageControl1: TNxPageControl;
    NxTabSheet2: TNxTabSheet;
    NxPageControl2: TNxPageControl;
    NxTabSheet3: TNxTabSheet;
    NxTabSheet4: TNxTabSheet;
    NxTextColumn11: TNxTextColumn;
    NxTabSheet1: TNxTabSheet;
    NxNumberColumn8: TNxNumberColumn;
    NxImageColumn6: TNxTextColumn;
    NxImageColumn3: TNxCheckBoxColumn;
    ImageList2: TImageList;
    MatestGrid: TNextGrid;
    NxIncrementColumn3: TNxIncrementColumn;
    NxNumberColumn10: TNxNumberColumn;
    NxNumberColumn11: TNxNumberColumn;
    NxNumberColumn12: TNxNumberColumn;
    NxNumberColumn13: TNxNumberColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxTextColumn10: TNxTextColumn;
    ServerInfoRich: TRichEdit;
    NxTabSheet5: TNxTabSheet;
    JvStatusBar1: TJvStatusBar;
    ProgressBar1: TProgressBar;
    PlayersGrid: TNextGrid;
    NxIncrementColumn2: TNxIncrementColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxTextColumn7: TNxTextColumn;
    NxTabSheet6: TNxTabSheet;
    GameSpyGrid: TNextGrid;
    NxIncrementColumn4: TNxIncrementColumn;
    NxImageColumn7: TNxImageColumn;
    NxCheckBoxColumn3: TNxCheckBoxColumn;
    NxImageColumn9: TNxImageColumn;
    NxImageColumn10: TNxImageColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxTextColumn17: TNxTextColumn;
    NxNumberColumn16: TNxNumberColumn;
    JvTrayIcon1: TJvTrayIcon;
    NxTabSheet7: TNxTabSheet;
    PROnlinePlayersGrid: TNextGrid;
    NxIncrementColumn5: TNxIncrementColumn;
    NxImageColumn13: TNxImageColumn;
    NxTextColumn18: TNxTextColumn;
    NxTextColumn19: TNxTextColumn;
    NxTextColumn20: TNxTextColumn;
    NxTextColumn21: TNxTextColumn;
    NxTextColumn22: TNxTextColumn;
    NxTextColumn23: TNxTextColumn;
    NxNumberColumn19: TNxNumberColumn;
    NxImageColumn2: TNxCheckBoxColumn;
    NxImageColumn8: TNxCheckBoxColumn;
    NxImageColumn12: TNxCheckBoxColumn;
    SkinData1: TSkinData;
    TBDock1: TTBDock;
    TBToolbar1: TTBToolbar;
    TBItem1: TTBItem;
    TBItem2: TTBItem;
    TBItem3: TTBItem;
    TBSeparatorItem1: TTBSeparatorItem;
    TBItem4: TTBItem;
    TBItem5: TTBItem;
    TBSeparatorItem2: TTBSeparatorItem;
    TBItem6: TTBItem;
    TBSeparatorItem3: TTBSeparatorItem;
    TBItem7: TTBItem;
    TBDock2: TTBDock;
    TBToolbar2: TTBToolbar;
    TBSeparatorItem4: TTBSeparatorItem;
    TBSubmenuItem2: TTBSubmenuItem;
    TBSubmenuItem3: TTBSubmenuItem;
    TBItem10: TTBItem;
    TBItem11: TTBItem;
    TBItem12: TTBItem;
    TBItemToolBar: TTBItem;
    TBShowServers: TTBSubmenuItem;
    TBItem14: TTBItem;
    TBItem15: TTBItem;
    TBItem16: TTBItem;
    TBItem17: TTBItem;
    TBItem18: TTBItem;
    TBSeparatorItem6: TTBSeparatorItem;
    TBSubmenuItem5: TTBSubmenuItem;
    TBSeparatorItem7: TTBSeparatorItem;
    TBSeparatorItem8: TTBSeparatorItem;
    TBSeparatorItem9: TTBSeparatorItem;
    TBItem19: TTBItem;
    TBSeparatorItem10: TTBSeparatorItem;
    TBSeparatorItem11: TTBSeparatorItem;
    Add2Fav2: TTBItem;
    Rem4Fav2: TTBItem;
    TBItem22: TTBItem;
    TBPopupMenu1: TTBPopupMenu;
    TBSubmenuItem6: TTBSubmenuItem;
    TBSeparatorItem12: TTBSeparatorItem;
    TBItemRefresh: TTBItem;
    TBSeparatorItem13: TTBSeparatorItem;
    Rem4Fav: TTBItem;
    Add2fav: TTBItem;
    TBPopupPlayers: TTBPopupMenu;
    remname: TTBItem;
    remprefix: TTBItem;
    addname2buddy: TTBItem;
    Addprefix2buddy: TTBItem;
    CopyPlayer: TTBItem;
    TBSeparatorItem14: TTBSeparatorItem;
    TBSeparatorItem15: TTBSeparatorItem;
    Panel2: TPanel;
    TBItem20: TTBItem;
    NxAutoCompletion1: TNxAutoCompletion;
    TBDock3: TTBDock;
    TBsearchToolbar: TTBToolbar;
    TBControlItem2: TTBControlItem;
    Label1: TLabel;
    SearchComboBox: TComboBox;
    TBControlItem3: TTBControlItem;
    TBSeparatorItem16: TTBSeparatorItem;
    TBSeparatorItem17: TTBSeparatorItem;
    TBSeparatorItem18: TTBSeparatorItem;
    TBControlItem7: TTBControlItem;
    Label2: TLabel;
    TBSeparatorItem19: TTBSeparatorItem;
    TBItemSearchBar: TTBItem;
    TBItem21: TTBItem;
    OnlinePlayersPopupMenu: TTBPopupMenu;
    TBSeparatorItem20: TTBSeparatorItem;
    TBItemOPAddPrefix: TTBItem;
    TBItemOPAddname: TTBItem;
    TBSeparatorItem21: TTBSeparatorItem;
    TBItemOPCopyPlayers: TTBItem;
    TBSeparatorItem22: TTBSeparatorItem;
    TBItemAddToFav3: TTBItem;
    TBSeparatorItem23: TTBSeparatorItem;
    TBItemOPremPrefix: TTBItem;
    TBItemOPRemname: TTBItem;
    NxCheckBoxColumn2: TNxNumberColumn;
    NxCheckBoxColumn1: TNxNumberColumn;
    RadioButtonServerName: TRadioButton;
    TBControlItem1: TTBControlItem;
    RadioButtonPlayerName: TRadioButton;
    TBControlItem4: TTBControlItem;
    RadioButtonPrefix: TRadioButton;
    TBControlItem5: TTBControlItem;
    TBItemShowHideSearchBar: TTBItem;
    TrayPopupMenu1: TPopupMenu;
    Showapplication1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    NxCheckBoxColumn4: TNxImageColumn;
    TBSubmenuItem1: TTBSubmenuItem;
    TBPopupMenuDetailedInfo: TTBPopupMenu;
    TBDTinfoCopy: TTBItem;
    TBSeparatorItem5: TTBSeparatorItem;
    TBDTinfoSelAll: TTBItem;
    TBitemHideFilterBar: TTBItem;
    TBItemFilterBar: TTBItem;
    TBFilterlbar: TTBToolbar;
    FilterServerNameEdit: TEdit;
    TBControlItem8: TTBControlItem;
    TBSeparatorItem24: TTBSeparatorItem;
    TBControlItem6: TTBControlItem;
    Label3: TLabel;
    TBControlItem11: TTBControlItem;
    Label5: TLabel;
    FilterMapNameEdit: TEdit;
    TBControlItem12: TTBControlItem;
    TBSeparatorItem25: TTBSeparatorItem;
    TBSeparatorItem26: TTBSeparatorItem;
    TBSeparatorItem27: TTBSeparatorItem;
    TBSeparatorItem28: TTBSeparatorItem;
    TBControlItem13: TTBControlItem;
    Label6: TLabel;
    TBSeparatorItem29: TTBSeparatorItem;
    TBSubmenuItem4: TTBSubmenuItem;
    TBItem13: TTBItem;
    TBItem23: TTBItem;
    TBItem24: TTBItem;
    TBItem25: TTBItem;
    TBSeparatorItem30: TTBSeparatorItem;
    TBItem26: TTBItem;
    TBControlItem9: TTBControlItem;
    Label4: TLabel;
    FilterPingEdit: TSpinEdit;
    TBControlItem10: TTBControlItem;
    FilterPlayersEdit: TSpinEdit;
    TBControlItem14: TTBControlItem;
    TBControlItem15: TTBControlItem;
    Label7: TLabel;
    TBSeparatorItem31: TTBSeparatorItem;
    TBSeparatorItem32: TTBSeparatorItem;
    ExportDialog: TSaveDialog;
    NxNumberColumn17: TNxTextColumn;
    NxNumberColumn9: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxNumberColumn1: TNxTextColumn;
    TBShowPlayersOnline: TTBSubmenuItem;
    TBItem8: TTBItem;
    TBItem9: TTBItem;
    TBItem27: TTBItem;
    TBItem28: TTBItem;
    TBControlItem16: TTBControlItem;
    Label8: TLabel;
    TBControlItem17: TTBControlItem;
    Label9: TLabel;
    TBControlItem18: TTBControlItem;
    Label10: TLabel;
    TBSeparatorItem33: TTBSeparatorItem;
    TBSeparatorItem34: TTBSeparatorItem;
    Panel1: TPanel;
    TBControlItem19: TTBControlItem;
    TBItem29: TTBItem;
    NxImageColumn11: TNxImageColumn;
    NxTextColumn26: TNxTextColumn;
    NxImageColumn14: TNxImageColumn;
    NxTextColumn27: TNxTextColumn;
    PngImageList1: TPngImageList;
    NxNumberColumn2: TNxHtmlColumn;
    NxNumberColumn15: TNxHtmlColumn;
    NxTextColumn6: TNxHtmlColumn;
    NxTextColumn5: TNxHtmlColumn;
    NxTextColumn8: TNxHtmlColumn;
    NxTextColumn9: TNxHtmlColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxTextColumn24: TNxHtmlColumn;
    NxTextColumn25: TNxHtmlColumn;
    NxTextColumn28: TNxTextColumn;
    NxTextColumn29: TNxTextColumn;
    NxTextColumn30: TNxTextColumn;
    CopyPlayerNote: TTBItem;
    OPCopyPlayerNote: TTBItem;
    NxNumberColumn21: TNxTextColumn;
    NxNumberColumn18: TNxHtmlColumn;
    ToolbarImageList: TPngImageList;
    TBSeparatorItem36: TTBSeparatorItem;
    TBClickUpdate: TTBItem;
    TBItem42: TTBItem;
    TBItem43: TTBItem;
    TBItem44: TTBItem;
    TBItem45: TTBItem;
    Png16ImgList: TPngImageList;
    CopyServerNote: TTBItem;
    TBSeparatorItem37: TTBSeparatorItem;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    TBItem30: TTBItem;
    procedure FormShow(Sender: TObject);
    procedure GlobalServersGridCompare(Sender: TObject; Cell1,
      Cell2: TCell; var Compare: Integer);
    procedure GlobalServersGridCellColoring(Sender: TObject; ACol,
      ARow: Integer; var CellColor, GridColor: TColor;
      CellState: TCellState);
    procedure PlayersGridCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
     procedure ComOnGridSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure GameSpyGridCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure PopupActionsEnt(Sender: TObject);
    procedure OnPopup(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GameSpyGridColumnResize(Sender: TObject; ACol: Integer);
    procedure TBPopupPlayersPopup(Sender: TObject);
    procedure GameSpyGridAfterSort(Sender: TObject; ACol: Integer);
    procedure GlobalServersGridAfterSort(Sender: TObject; ACol: Integer);
    procedure PROnlinePlayersGridCellColoring(Sender: TObject; ACol,
      ARow: Integer; var CellColor, GridColor: TColor;
      CellState: TCellState);
    procedure PROnlinePlayersGridAfterSort(Sender: TObject; ACol: Integer);
    procedure PlayersGridCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure PROnlinePlayersGridCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure MatestGridCellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure GlobalServersGridCellClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure TBsearchToolbarCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TBItemSearchBarClick(Sender: TObject);
    procedure TBItemShowHideSearchBarClick(Sender: TObject);
    procedure Showapplication1Click(Sender: TObject);
    procedure PopupActionsPO(Sender: TObject);
    procedure TBPopupMenuDetailedInfoPopup(Sender: TObject);
    procedure TBDTinfoCopyClick(Sender: TObject);
    procedure TBDTinfoSelAllClick(Sender: TObject);
    procedure TBItemToolBarClick(Sender: TObject);
    procedure TBSubmenuItem2Popup(Sender: TTBCustomItem;
      FromLink: Boolean);
    procedure TBitemHideFilterBarClick(Sender: TObject);
    procedure TBItemFilterBarClick(Sender: TObject);
    procedure OnFilterEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure SearchComboBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure GridColumnResize(Sender: TObject;
      ACol: Integer);
    procedure SkinData1SkinChanged(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure GridCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure TBClickUpdateClick(Sender: TObject);
    procedure ClickUpdate(Sender: TObject);
    procedure PlayersGridSelectCell(Sender: TObject; ACol, ARow: Integer);

  private
    
    { Private declarations }
  public
     GeoIP : TGeoIP;

    procedure StarMultiThreading(Slist: TStrings; const GridIndex: Integer = S_GAME_SPY);
    procedure StartSingleThreading(IP: string; Port: string; GridIndex: Integer; ItemIndex: Integer);
    procedure ExecuteFirstWave;

    procedure CreateQThread(ID: Integer; IP, QPort: string; const RetryCount: Integer = 0);
    procedure OnQThreadTerminate(Sender: TObject);

    procedure CreatePingQThread(ID, Tag: Integer; IP: string);
    procedure OnPingQThreadTerminate(Sender: Tobject);


    function GetGrid(NG: Integer):TNextGRid;
    function GetPInfoGrid(NG: Integer):TNextGRid;

    function GetBF2List( i: Integer): TBF2ServerSList;

    procedure NotifyForEnd( E: TAfterEvent);
    Procedure NotifyForStart;

    procedure GetGameSpyServers;
    Procedure GetPROnlinePlayers;

    procedure SListStart;
    function  SListNextServer(var iIP, iPort : string) : Boolean;

    procedure GridShowHideRows(NG: TNextGrid);
    function ShowRow(const item: TBF2ServerInfoItem; ShowFull, ShowUNA, ShowWOP, ShowWOM, ShowPW : boolean; ServerName, MapName : string; ServerPing, PlayersCount : integer ): boolean;
    Function SetRowVisibility(const item: TBF2ServerInfoItem) : boolean;

    function SetPORowVisibility(Index: Integer; param: integer = 0): Boolean;
    procedure GridShowHideRowsPO(NG: TNextGrid);

    {Вычисляет колл-во качественных серверов и общее число игроков}
    procedure GetCountCollection(const collection: TBF2ServerSList; var GoodServers: Integer; var TotalPlayers: Integer);

    procedure SearchCollection;
    procedure GlobalResetLastPlayerSearchIndex;
    procedure GetUpdates(var DLink: String);
    procedure AutoCheckForUPD;
    { Public declarations }
  end;

  

var
  Form1: TForm1;

  {NEW$}
  ActiveThreading        : Boolean;
  ServerNo, ServersCount : Integer;
  ServersDone            : Integer;
  GridIndexTag           : Integer;
  RowItemIndex           : Integer;
  ServerListBuffer       : TStringList;
  TempGameSpySrvList     : TStringList;
  PRGameSpy, PRFavorites, PRPlayersOnline : TBF2ServerSList;


  LastSearchNamePos, LastLookIn, LastGridIndex : Integer;
  LastTxt : string;
  FHttpCli    : THttpCli;
    mHandle: THandle;    // Mutexhandle
  //FHttpCliBool: Boolean;
  



implementation

uses MUnit, UnitGrid, Options, About, ServerPassUnit, LanguageUnit, MatesUnit, NativeXml, cDateTime;

{$R *.dfm}
{$R 7ip.res}

{
**********************************************************************************
*******************************HELPER UTILS***************************************
**********************************************************************************
}

function TForm1.GetBF2List( i: Integer): TBF2ServerSList;
begin
     case i of
        S_GAME_SPY  : Result := PRGameSpy;
        S_FAVORITES : Result := PRFavorites;
        S_PRPONLINE : Result := PRPlayersOnline;
     end;
end;

function TForm1.GetGrid(NG: Integer):TNextGRid;
begin
  case NG of
    S_GAME_SPY  : Result:= GameSpyGrid;
    S_FAVORITES : Result:= GlobalServersGrid;
    S_PRPONLINE : Result:= PROnlinePlayersGrid;
  end;
end;

function TForm1.GetPInfoGrid(NG: Integer):TNextGRid;
begin
   case NG of
    P_ALLPLAYERS  : Result:= PlayersGrid;
    P_MATES       : Result:= MatestGrid;
   end;
end;

procedure TForm1.GetCountCollection(const collection: TBF2ServerSList; var GoodServers: Integer; var TotalPlayers: Integer);
var i: Integer;
begin
  GoodServers := 0;
  TotalPlayers:= 0;
  for i:= 0 to collection.Count-1 do
  begin
    if collection.AnItems[i].ErrorCode > -1  then
    begin
      Inc(GoodServers);
      TotalPlayers := TotalPlayers + collection.AnItems[i].RealPlayersCount;
    end;
  end;
end;


{------------------------------------------------}


procedure TForm1.PopupActionsPO(Sender: TObject);
begin

 
//
end;


procedure TForm1.PopupActionsEnt(Sender: TObject);
var
    Str               : string;
    ActGridIndex      : Integer;
    iIndex            : Integer;
begin

    if ( (Sender as TComponent{TTBCustomItem}).tag in [GET_GAMESPY, GET_FAVORITES] ) and  ActiveThreading then Exit;
    ActGridIndex       :=   Succ(NxPageControl1.ActivePageindex);// + 1;

    case (Sender as TComponent{TTBCustomItem}).tag of


       GET_GAMESPY   :  begin   
                            if ActiveThreading then Exit;

                            NxPageControl1.ActivePageIndex := 1;
                            GameSpyGrid.ClearRows;
                            PRGameSpy.Clear;
                            MatestGrid.ClearRows;
                            PlayersGrid.ClearRows;
                            ServerInfoRich.Clear;
                            GetGameSpyServers;

                        end ;

       GET_FAVORITES :  begin
                           if ActiveThreading then Exit;
                           
                            NxPageControl1.ActivePageIndex := 0;
                            GlobalServersGrid.ClearRows;
                            PRFavorites.Clear;
                            MatestGrid.ClearRows;
                            PlayersGrid.ClearRows;
                            ServerInfoRich.Clear;


                            if OptionsForm.NextGridFavServers.RowCount > 0 then
                            begin
                             TempGameSpySrvList.Clear;
                             for iIndex:= 0 to OptionsForm.NextGridFavServers.RowCount-1 do
                              TempGameSpySrvList.Add(OptionsForm.NextGridFavServers.Cells[1, iIndex]);

                              StarMultiThreading(TempGameSpySrvList, S_FAVORITES);
                            end;

                        end;


       GET_ALLPLAYERS : begin
                          if ActiveThreading then Exit;
                          NxPageControl1.ActivePageIndex := 2;

                          PROnlinePlayersGrid.ClearRows;
                          PRPlayersOnline.Clear;
                          MatestGrid.ClearRows;
                          PlayersGrid.ClearRows;
                          ServerInfoRich.Clear;

                          GetPROnlinePlayers;
                        end;

       JOINSERVER : begin   {2}
                      {Что-то должно быть выбранно
                       Это должна быть валидная запись
                      }

                       if (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) then Exit;

                       if GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ErrorCode > -1
                       then
                       begin
                         Str := '';
                         PasswordForm2.PasswordEdit.Text := '';
                         if GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].password = '1' then
                         if (PasswordForm2.ShowModal = mrOk) and (length(PasswordForm2.PasswordEdit.Text) > 0) then Str:= PasswordForm2.PasswordEdit.Text else Exit;
                         PasswordForm2.PasswordEdit.Text := '';

                         JoinToServer( GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP,
                                       GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].hostport,
                                       Str,
                                       (Sender as TTBCustomItem).ImageIndex );
                       end;
                     end;


       ADDTOFAV :      begin    {2}
                              if (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) or (ActGridIndex = S_FAVORITES) then Exit;
                              Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP + ':' + GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort;


                             with OptionsForm do
                             begin
                                 if (GridCOLStrExists(NextGridFavServers, Trim(Str), 1, False) > -1) or (Trim(Str) = '') then Exit;

                                NextGridFavServers.AddRow();
                                NextGridFavServers.Cells[1, NextGridFavServers.RowCount-1] := Str;
                                NextGridFavServers.SaveToTextFile(SERVERS_FILE, ',', #19);
                             end;
               
                       end;

       REMOVEFROFAV  : begin   {2}
                              if (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) {or (ActGridIndex <> S_FAVORITES)} then Exit;

                              Str:= {PRFavorites}GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP + ':' + GetBF2List(ActGridIndex){PRFavorites}.AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort;

                              with OptionsForm do
                              begin
                                 iIndex:= GridCOLStrExists(NextGridFavServers, Trim(Str), 1, False);
                                 if ( iIndex = -1) or (Trim(Str) = '') then Exit;
                                 NextGridFavServers.DeleteRow(iIndex);
                                 NextGridFavServers.SaveToTextFile(SERVERS_FILE, ',', #19);


                              end;
                       end;

       ADDPREFIX :    begin      {2}

                       case (Sender as TComponent).GetParentComponent.Tag of

                         PLAYERSINFO_POPUP   : str:=  GridCopyColFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex), 1  );
                         ONLINEPLAYERS_POPUP : str:=  GridCopyColFromSelRow(GetGrid(ActGridIndex), 1);
                       end;


                        eAddPrefix(Str);


                      end;

       DELETEPREFIX : begin  {2}


                       case (Sender as TComponent).GetParentComponent.Tag of

                          PLAYERSINFO_POPUP    : str:=  GridCopyColFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex), 1  );
                          ONLINEPLAYERS_POPUP  : str:=  GridCopyColFromSelRow(GetGrid(ActGridIndex), 1);
                       end;


                        sDeletePrefix(Str);
                      end;

       ADDNAME :    begin      {2}

                       case (Sender as TComponent).GetParentComponent.Tag of

                          PLAYERSINFO_POPUP    : str:=  GridCopyColFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex), 2  );
                          ONLINEPLAYERS_POPUP  : str:=  GridCopyColFromSelRow(GetGrid(ActGridIndex), 2);
                       end;

                        eAddPName(Str);

                    end ;

       DELETENAME : begin   {2}

                       case (Sender as TComponent).GetParentComponent.Tag of

                        PLAYERSINFO_POPUP    : str:=  GridCopyColFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex), 2  );
                        ONLINEPLAYERS_POPUP  : str:=  GridCopyColFromSelRow(GetGrid(ActGridIndex), 2);
                       end;
                      sDeletePName(str);
                    end;

       UPDATESELECTED : begin {2}
                          if ActiveThreading then Exit;
                          if  (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) or (ActGridIndex > 2) then Exit;


                         StartSingleThreading( GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP,
                                               GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort,
                                               ActGridIndex, GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger);





                         {
                          case ActGridIndex of
                          1: StartSingleThreading(PRFavorites.AnItems[iIndex].ServerIP,  PRFavorites.AnItems[iIndex].ServerQueryPort, ActGridIndex, iIndex );
                          2: StartSingleThreading(PRGameSpy.AnItems[iIndex].ServerIP,  PRGameSpy.AnItems[iIndex].ServerQueryPort, ActGridIndex, iIndex );
                          end;
                               }
                        end;


       COPYNAME : begin  {2}

                     {Анаколуф}

                    case (Sender as TComponent).GetParentComponent.Tag of

                      PLAYERSINFO_POPUP     : Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;
                                              //OLD ONE str:=  GridCopyTwoColsFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex)  );
                      ONLINEPLAYERS_POPUP   : str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetEntryValueI( GetGrid(ActGridIndex).Cells[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow], Entry_PLAYERINDEX, '/'){GetGrid(ActGridIndex).Cell[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow].asInteger}].Name;     //str:=  GridCopyTwoColsFromSelRow(GetGrid(ActGridIndex));
                    end;

                    if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);

                  end;

       iOPTIONS : begin
                    OptionsForm.ShowModal;
                 end;

       iABOUT   : begin

                   AboutForm.UPDPanel.Visible := False;
                   AboutForm.UPDPanel.top := 500;
                   AboutForm.ShowModal;
                 end;

       VIEW_SERVERS : Begin
                       if GlobalServersGrid.RowCount > 0 then GridShowHideRows(GlobalServersGrid);
                       if GameSpyGrid.RowCount > 0 then GridShowHideRows(GameSpyGrid);
                      end;

       VIEW_PLAYERSONLINE : begin

                              if PROnlinePlayersGrid.RowCount > 0 then
                              GridShowHideRowsPO(PROnlinePlayersGrid);
                            end;


       SEARCH_STR   : begin
                        Str := Trim(SearchComboBox.Text);
                        if Str = '' then Exit;
                        iIndex :=   NxAutoCompletion1.Strings.IndexOf(Str);

                       if iIndex = -1 then
                       begin
                         NxAutoCompletion1.Strings.Append( Str );
                         SearchComboBox.Items.CommaText := NxAutoCompletion1.Strings.CommaText;
                       end
                         else
                           NxAutoCompletion1.Strings.Move(iIndex, 0);

                           OptionsForm.jvpnflstrg1.WriteString('MRURECENT', NxAutoCompletion1.Strings.CommaText);

                        SearchCollection;
                      end;


       EXPORT_FAVORITES :   if ExportDialog.Execute then
                            SaveToHtml(GlobalServersGrid, ExportDialog.FileName, [hsSaveHeaders, hsSaveHeaders, hsCreateStyleSheet, hsAllRows]  );

       EXPORT_GAMESPY   :   if ExportDialog.Execute then
                            SaveToHtml(GameSpyGrid, ExportDialog.FileName, [hsSaveHeaders, hsSaveHeaders, hsCreateStyleSheet, hsAllRows]  );

       EXPORT_PROP      :   if ExportDialog.Execute then
                            SaveToHtml(PROnlinePlayersGrid, ExportDialog.FileName, [hsSaveHeaders, hsSaveHeaders, hsCreateStyleSheet, hsAllRows]  );

       EXPORT_PLAYERS   :   if ExportDialog.Execute then
                            SaveToHtml(PlayersGrid, ExportDialog.FileName, [hsSaveHeaders, hsSaveHeaders, hsCreateStyleSheet, hsAllRows]  );

       EXPORT_MATES     :   if ExportDialog.Execute then
                            SaveToHtml(MatestGrid, ExportDialog.FileName, [hsSaveHeaders, hsSaveHeaders, hsCreateStyleSheet, hsAllRows]  );


      COPY_NOTE :   begin

                       case (Sender as TComponent).GetParentComponent.Tag of
                        PLAYERSINFO_POPUP    : str:=  GridCopyColFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex), 11  );
                        ONLINEPLAYERS_POPUP,
                        SERVERS_POPUP        : str:=  GridCopyColFromSelRow(GetGrid(ActGridIndex), C_NOTE);
                       end;

                      if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);

                    end;
    end;


//--
end;


{On Popup }
procedure TForm1.OnPopup(Sender: TObject);
var inx, P,N : Integer;
begin


    TBItem7.Enabled := NxPageControl1.ActivePageIndex <> 2;
    TBItem4.Enabled := NxPageControl1.ActivePageIndex <> 0;

   inx:=  Succ(NxPageControl1.ActivePageindex);// + 1;

   {Disable/Enable Joinserver and Refresh, if Grid not selected}
   TBSubmenuItem5.Enabled       := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
   TBItemRefresh.Enabled        := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
   TBSubmenuItem6.Enabled       := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
   TBSubmenuItem1.Enabled       := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );

  case inx of
       S_GAME_SPY  :  begin
                        With GetGrid(inx) do
                        begin

                          Add2fav.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Cell[H_HIGHLIGHT, SelectedRow ].AsInteger <> 1  );
                          Add2Fav2.Enabled  := Add2fav.Enabled;
                          TBItem4.Enabled   := Add2fav.Enabled;


                          Rem4Fav.Enabled    := (RowCount > 0) and (SelectedRow > -1 ) and (Cell[H_HIGHLIGHT, SelectedRow ].AsInteger = 1  );
                          Rem4Fav2.Enabled   := Rem4Fav.Enabled;
                          TBItem5.Enabled    := Rem4Fav.Enabled;

                          TBItem7.Enabled:= (RowCount > 0) and (SelectedRow > -1 );

                          {Copy Server note}
                         CopyServerNote.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Trim(Cells[C_NOTE, SelectedRow]) > '');


                        end;
                      end;

       S_FAVORITES :  begin

                        With GetGrid(inx) do
                        begin
                         Rem4Fav.Enabled   := (RowCount > 0) and (SelectedRow > -1 );
                         
                         Rem4Fav2.Enabled  := Rem4Fav.Enabled;
                         TBItem5.Enabled   := Rem4Fav.Enabled;

                         Add2Fav2.Enabled  := False;
                         Add2fav.Enabled   := False;

                         TBItem7.Enabled:= (RowCount > 0) and (SelectedRow > -1 );
                         {Copy Server note}
                         CopyServerNote.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Trim(Cells[C_NOTE, SelectedRow]) > '');

                        end;

                      end;


       S_PRPONLINE  : begin
                         with  GetGrid(inx) do
                         begin

                          {Add Server to favorites}
                           TBItemAddToFav3.Enabled     := (RowCount > 0) and (SelectedRow > -1 ) and (GetEntryValueI(  Cells[C_PO_CMD,  SelectedRow], Entry_FAVINDEX , '/'){Cell[H_HIGHLIGHT, SelectedRow ].AsInteger} <> 1  );//(RowCount > 0) and (SelectedRow > -1 );

                           TBItemOPCopyPlayers.Enabled := (RowCount > 0) and (SelectedRow > -1 ) and (Cells[2, SelectedRow] <> '');

                           P := PrefixInMates( Cells[1, SelectedRow] );
                           N := NameInMates(  Cells[2, SelectedRow] );


                          {Add names}
                          TBItemOPAddname.Enabled   := N = 0;
                          {PRefix}
                          TBItemOPAddPrefix.Enabled := P = 0;

                          TBItemOPremPrefix.Enabled := P > 0;
                          TBItemOPRemname.Enabled   := N > 0;


                       //   TBItemOPAddPrefix.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Cells[1, GetGrid(inx).SelectedRow] <> '');
                       //   TBItemOPAddname.Enabled     := TBItemOPCopyPlayers.Enabled;
                        //  TBItemOPremPrefix.Enabled   := TBItemOPAddPrefix.Enabled;
                        //  TBItemOPRemname.Enabled     := TBItemOPCopyPlayers.Enabled;




                          OPCopyPlayerNote.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Trim(Cells[C_NOTE, SelectedRow]) > '');




                          Rem4Fav2.Enabled  := (RowCount > 0) and (SelectedRow > -1 ) and ( {Cell[H_HIGHLIGHT, SelectedRow ].AsInteger} GetEntryValueI(  Cells[C_PO_CMD,  SelectedRow], Entry_FAVINDEX , '/') = 1  );
                          TBItem29.Enabled  := Rem4Fav2.Enabled;
                          TBItem5.Enabled   := Rem4Fav2.Enabled;

                          Add2Fav2.Enabled  := TBItemAddToFav3.Enabled; //(RowCount > 0) and (SelectedRow > -1 ) and (Cell[H_HIGHLIGHT, SelectedRow ].AsInteger <> 1  );
                          TBItem4.Enabled   := TBItemAddToFav3.Enabled;


                        end;
                      end;




  end;

end;


procedure TForm1.TBPopupPlayersPopup(Sender: TObject);
begin
            CopyPlayer.Enabled       := False;
            Addprefix2buddy.Enabled  := False;
            addname2buddy.Enabled    := False;
            remprefix.Enabled        := False;
            remname.Enabled          := False;

        With  GetPInfoGrid(NxPageControl2.ActivePageIndex) do
        begin
            CopyPlayer.Enabled :=(RowCount > 0) and (SelectedRow > -1);

            {Prefix}
            Addprefix2buddy.Enabled := (Cells[1, SelectedRow] <> '') and
            not (  Trunc(Cell[9, SelectedRow].AsFloat) in [3,2,6]);

            {RemPrefix}
            remprefix.Enabled       :=   (Cells[1, SelectedRow] <> '') and
             ( Trunc(Cell[9, SelectedRow].AsFloat) in [3,2,6]);

            {Add name}
            addname2buddy.Enabled   :=   (Cells[2, SelectedRow] <> '') and
            not (  Trunc(Cell[9, SelectedRow].AsFloat) in [1,3]);

            {Remove name}
            remname.Enabled         :=  (Cells[2, SelectedRow] <> '') and
                (  Trunc(Cell[9, SelectedRow].AsFloat) in [1,3]);


            {CopyNote}
            CopyPlayerNote.Enabled :=(RowCount > 0) and (SelectedRow > -1) and (Trim(Cells[11, SelectedRow]) > '');

        end;

end;             



procedure TForm1.GlobalServersGridCompare(Sender: TObject; Cell1,
  Cell2: TCell; var Compare: Integer);
  var V1,V2 : string;    I1, I2 : Integer;
begin

 case Cell1.ColumnIndex of

         {
 5: begin
      {
       if Cell1.AsInteger > Cell2.AsInteger then Compare := 1;
       if Cell1.AsInteger < Cell2.AsInteger then Compare := -1;

       if Cell1.AsInteger = Cell2.AsInteger then
       begin    }
       //  Cell2.RowIndex
           {  case CompareValue(GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell1.RowIndex], Entry_MATEINDEX, '/' ), GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell2.RowIndex], Entry_MATEINDEX, '/' ) ) of
              LessThanValue    : Compare := -1;//ShowMessage('A < C');
              EqualsValue      : Compare := 0;// ShowMessage('A = C');
              GreaterThanValue : Compare := 1;//ShowMessage('A > C');
             end;    }
       //  GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell2.RowIndex], Entry_MATEINDEX, '/' )

      //   Form1.MEmo1.Lines.Add('2 '+ IntToStr(GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell2.RowIndex], Entry_MATEINDEX, '/' )) );
      //   Form1.MEmo1.Lines.Add('1 ' + IntToStr(GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell1.RowIndex], Entry_MATEINDEX, '/' )) );

        //   Compare := CompareValue(GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell1.RowIndex], Entry_MATEINDEX, '/' ), GetEntryValueI( (Sender as TNextGrid).cells[C_PO_CMD, Cell2.RowIndex], Entry_MATEINDEX, '/' ) );
           // GetEntryValueI
     {  end;  }






    








           { }
 7: begin //Ping

       V1:= cStrings.StrAfterRev( Cell1.AsString, '~', True);
       V2:= cStrings.StrAfterRev( Cell2.AsString, '~', True);
      if (V1 <> '') and (V2 <> '') then
      begin
          I1 :=  StrToInt(V1);
          I2 :=  StrToInt(V2);
          if I1 > I2 then Compare:= 1;
          if I1 = I2 then compare:= 0;
          if I1 < I2 then compare:= -1;
      end
        else
          Compare:= CompareStr(V1, V2) * -1;
    end;

 11: begin  // 11 - mates
      V1:= cStrings.StrBefore( Cell1.AsString, ' :');
      V2:= cStrings.StrBefore( Cell2.AsString, ' :');
      if (V1 <> '') and (V2 <> '') then
      begin
          I1 :=  StrToInt(V1);
          I2 :=  StrToInt(V2);
          if I1 > I2 then Compare:= 1;
          if I1 = I2 then Compare:= 0;

                {
          if I1 = I2 then
          begin
             V1 := cStrings.StrAfterRev(Cell1.AsString, '[', False);
             V2 := cStrings.StrAfterRev(Cell2.AsString, '[', False);

             if (V1 = '') and (V2 <> '') then compare:= -1;
             if (V1 <> '') and (V2 = '') then compare:=  1;

             if (V1 <> '') and (V2 <> '') then
             begin
               I1 :=  StrToInt(  Copy(V1, 0, Length(V1)-1) );
               I2 :=  StrToInt(  Copy(V2, 0, Length(V2)-1) );
               compare:= CompareValue(I1, I2);

              // cStrings.Compa

             end;
          end;      }

          if I1 < I2 then compare:= -1;
      end
        else Compare:= CompareStr(V1, V2)

     end;


 8 : Begin  // 8 - Players

      //   12/64 (0)
      V1:= cStrings.StrBefore( Cell1.AsString, '/');
      V2:= cStrings.StrBefore( Cell2.AsString, '/');
      if (V1 <> '') and (V2 <> '') then
      begin
          I1 :=  StrToInt(V1);
          I2 :=  StrToInt(V2);
          if I1 > I2 then Compare:= 1;
          if I1 = I2 then compare:= 0;
          if I1 < I2 then compare:= -1;
      end
        else Compare:= CompareStr(V1, V2)

     end;

 end;



 {
   1  Cell1 > Cell2.
   0 Cell1 = Cell2.
  -1 Cell2 > Cell1.
 }
end;

procedure TForm1.FormShow(Sender: TObject);
var Mema: TmemoryStream;
begin
 // ReadLng('D:\Programing\LAB\LAB4\PR GreenNetwork\Lang\Russian.ini');


   Caption:= ' PR - Green Network 1.0';

  {NEW$}
  PRGameSpy          :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;
  PRFavorites        :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;
  PRPlayersOnline    :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;

  ServerListBuffer   :=   TStringList.Create;
  TempGameSpySrvList :=   TStringList.Create;
  ActiveThreading    :=   False;

  GeoIP := TGeoIP.Create;
  LoadGeoIPdbFromRes(GeoIP);
                                     
  NxTabSheet5.PageVisible := False;  {EDBUG}


  LoadOptions;

                  FHttpCli                 := THttpCli.Create(nil);
                  FHttpCli.RcvdStream      := TMemoryStream.Create;
                  FHttpCli.MultiThreaded   := True;
                  FHttpCli.FollowRelocation:= True;
                  FHttpCli.URL             := 'http://greennetwork.googlecode.com/svn/trunk/updates.xml';
                  FHttpCli.RequestVer      := '1.0';

                  AutoCheckForUPD;


end;









{

-o 4 -n battlefield2 -f "bf2_anticheat = 1 and (bf2_mapsize = 16 or bf2_mapsize = 32 or bf2_mapsize = 64) and gamever = '1.5.3153-802.0' and gamevariant = 'pr' and gametype not like '%gpm_training%'" -X \hostname\gametype\mapname\numplayers\maxplayers\hostport\gamevariant\gamemode\password\gamever\hostport\bf2_os\bf2_anticheat\bf2_ranked\bf2_voip\bf2_autorec\bf2_dedicated\bf2_pure\bf2_bots\bf2_mapsize\bf2_fps\bf2_plasma\bf2_reservedslots


-o 4 -n battlefield2 -f "bf2_anticheat = 1 and (bf2_mapsize = 16 or bf2_mapsize = 32 or bf2_mapsize = 64) and gamever = '1.5.3153-802.0' and gamevariant = 'pr' and gametype not like '%gpm_training%'" -X \hostname

}


{*************************NEW AGE********************************************}


procedure TForm1.SListStart;
begin
 ServersCount:= ServerListBuffer.Count -1;
 ServerNo    := 0;

end;


function TForm1.SListNextServer(var iIP, iPort : string) : Boolean;
begin
  Result :=  ServerNo <= ServersCount;
  if not Result then Exit;
  ServerListBuffer.NameValueSeparator := ':';
  iIP   := ServerListBuffer.Names[ServerNo];
  iPort := ServerListBuffer.ValueFromIndex[ServerNo];
  Inc(ServerNo);
end;










procedure TForm1.StartSingleThreading(IP: string; Port: string; GridIndex: Integer; ItemIndex: Integer);
begin
    ServerNo          := 0;
    ServersDone       := 0;
    GridIndexTag      := GridIndex;
    RowItemIndex      := ItemIndex;
    ActiveThreading   := True;

    CreateQThread(0, IP, PORT);
end;



Procedure TForm1.StarMultiThreading(Slist: TStrings; const GridIndex: Integer = S_GAME_SPY);
begin
  ServerListBuffer.Clear;
  ServerListBuffer.AddStrings( Slist );
  SListStart;


 // ServerNo    := 0;
  ServersDone := 0;
  GridIndexTag   := GridIndex;
  RowItemIndex   := SS_MULTI;

  NotifyForStart;

  ExecuteFirstWave;
end;

procedure TForm1.ExecuteFirstWave;
var i, max: integer;   tmpIP, tmpPort : string;
begin

  ActiveThreading := True;
  if ServerListBuffer.Count-1 > OptionsForm.threads.Value then
   max:=  OptionsForm.threads.Value-1 else max:= ServerListBuffer.Count-1;


   
  for i:= 0 to max do
  begin
    if SListNextServer(tmpIP,  tmpPort) then
    CreateQThread(i, tmpIP, tmpPort, OptionsForm.updRetrySpin.Value);
    //CreateQThread(i, Get_IpPort( ServerNo), Get_IpPort( ServerNo ,False)  );
   // Inc(ServerNo);
  end;

end;
                   //  OptionsForm.updRetrySpin.Value
procedure TForm1.CreateQThread(ID: Integer; IP, QPort: string; const RetryCount: Integer = 0);
begin
       BF2Thread[ID]:= TBF2WSockThread.Create(IP , QPort, ID);
       BF2Thread[ID].Timeout      := OptionsForm.TimeOutSpin.Value * 1000;
       BF2Thread[ID].Priority     := tpNormal;  // tpHigher;
       BF2Thread[ID].OnTerminate  := OnQThreadTerminate;
       BF2Thread[ID].RetryCount   := RetryCount;
       BF2Thread[ID].Resume;
      // Sleep(10);
      // Memo1.Lines.Add( 'Sta: ' + IntToStr(ID) );
end;


procedure TForm1.OnQThreadTerminate(Sender: TObject);
var A   : TBF2ServerInfoItem;
    Inx : Integer;
    tmpIP, tmpPort : string;
begin
  Application.ProcessMessages;


  with (Sender as TBF2WSockThread) do
  begin

    if RowItemIndex = SS_MULTI then
    begin
            A := GetBF2List(GridIndexTag).AddServerInfo( RcvdBytes, ServerIP, QueryPort, StartQTime, EndQTime );

            { Retry }
            if (A.ErrorCode <= -1) and (OptionsForm.updRetrySpin.Value > 0) and (RetryCount > 0) then
            begin
              tmpIP    :=  A.ServerIP;
              tmpPort  :=  A.ServerQueryPort;
              GetBF2List(GridIndexTag).Delete( A.Index );
              CreateQThread(DeadID, tmpIP, tmpPort, Pred(RetryCount));
              Exit;
            end;   


            case GridIndexTag of
             1,2 :  GridAddServerInfo( GetGrid(GridIndexTag), A );
             3   :  GridAddPlayersOnline( GetGrid(GridIndexTag), A );

            end;

            if A.ErrorCode > -1 then CreatePingQThread( ServerNo, A.Index , ServerIP );

            Inc(ServersDone);
            ProgressBar1.Position:=   ((ServersDone * 100) div  (ServerListBuffer.Count)); //-1

            if SListNextServer(tmpIP, tmpPort ) then
            begin
              CreateQThread(DeadID, tmpIP, tmpPort, OptionsForm.updRetrySpin.Value  );

            end
             else
              begin
                NotifyForEnd(eMultiThScann);

              end;

     end
     else  {SingleThread}
     begin     

             A := GetBF2List(GridIndexTag).UpdateServerInfo( RcvdBytes, ServerIP, QueryPort, RowItemIndex, StartQTime, EndQTime );
             GridAddServerInfo( GetGrid(GridIndexTag), A, RowItemIndex);
             if A.ErrorCode > -1 then CreatePingQThread( ServerNo, A.Index , ServerIP );

             ActiveThreading := False;

             NotifyForEnd(eSingleThScann);

     end;


  end;

end;

procedure TForm1.CreatePingQThread(ID, Tag: Integer; IP: string);
begin
 BF2PingThread[ID] := TBF2PingThread.Create(IP, ID);
 BF2PingThread[ID].TimeOut      :=  1001;
 BF2PingThread[ID].Tag          :=  Tag;
 BF2PingThread[ID].Priority     :=  tpNormal;
 BF2PingThread[ID].OnTerminate  :=  OnPingQThreadTerminate;
 BF2PingThread[ID].Resume;
end;

procedure TForm1.OnPingQThreadTerminate(Sender: Tobject);
begin
  with (Sender as TBF2PingThread) do
  begin
     GetBF2List(GridIndexTag).AnItems[Tag].Ping := RTT;
    ModifyGridPingValue(GetGrid(GridIndexTag), Tag, GetBF2List(GridIndexTag).AnItems[Tag]);
  end;
end;

procedure TForm1.NotifyForEnd( E : TAfterEvent );
var GoodServers, tPlayers : Integer; asc: Boolean;
begin

  if E = eMultiThScann then
  if ServersDone < ServerListBuffer.Count then Exit;
  ActiveThreading := False;
  ProgressBar1.Position:= 0;

  {New method by seaarching Collection}
   GetCountCollection(  GetBF2List(GridIndexTag), GoodServers, tPlayers );

  case GridIndexTag of

   S_FAVORITES : begin
                  NxTabSheet2.Caption:= Format( GetWORD(13), [GoodServers] );       //'Favorites (' + IntToStr(GoodServers) + ')';//Fav
                  NxTabSheet2.Tag := GoodServers;
                 end;

   S_GAME_SPY  : begin
                  NxTabSheet6.Caption:= Format( GetWORD(14), [GoodServers] );//GS
                  NxTabSheet6.Tag := GoodServers;
                 end;

   S_PRPONLINE : begin
                  NxTabSheet7.Caption:= Format( GetWORD(15), [tPlayers] );
                  NxTabSheet7.Tag := tPlayers;
                 end;
  end;



 {New}  // FormatDateTime
   //  SysUtils.
 // SysUtils.Date;

  JvStatusBar1.Panels[1].Text := FormatDateTime('hh:nn:ss', Now ) + ' - ' + Format( GetWORD(121), [GoodServers, GetBF2List(GridIndexTag).Count, tPlayers] );  //' - Done! ( Servers: ' + IntTostr(GoodServers) + ' of ' + IntTostr(GetBF2List(GridIndexTag).Count) + ')'  + ' / (TotalPlayers: ' + IntToStr(tPlayers) + ')';

  if E = eMultiThScann then
  begin
  if GetGrid(GridIndexTag).SortedColumn = nil then Exit;

  {Resort }
   asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
   GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
  end;

end;

Procedure TForm1.NotifyForStart;
begin
   JvStatusBar1.Panels[1].Text := GetWORD(122);//'Requesting servers information ...';
end;




{PR Players Online}
procedure TForm1.GetPROnlinePlayers;
var Str: AnsiString; inx : Integer;
begin
  ActiveThreading := True;
  JvStatusBar1.Panels[1].Text := GetWORD(123);//'Requesting servers list from GameSpy ...';
  TempGameSpySrvList.Clear;

  inx := GetGSSList(1, Str );
  case inx of
   0      : begin
                TempGameSpySrvList.Text := Str;
                StarMultiThreading( TempGameSpySrvList, S_PRPONLINE );
            end;
   1      : begin
             JvStatusBar1.Panels[1].Text := GetWORD(124);//'Received servers list empty!';
             ActiveThreading := False;
            end;
   -1, -2 : begin
              JvStatusBar1.Panels[1].Text := Format(GetWORD(125), [inx]); //'Can''t connect to GameSpy! (ErrorCode: ' + IntToStr(inx) + ')' ;
              ActiveThreading := False;
            end;
   -3, -4 : begin
               JvStatusBar1.Panels[1].Text := GetWORD(126);//'Can''t decrypt received data. Try again!';//     //'Access error in module "xdec.exe" (ErrorCode: ' + IntToStr(inx) + ')'  ;
               ActiveThreading := False;
            end;
  end;



end;



{GameSpy}


procedure TForm1.GetGameSpyServers;
var Str: AnsiString;  inx : Integer;
begin
   ActiveThreading := True;
   JvStatusBar1.Panels[1].Text := GetWORD(123);//'Requesting servers from GameSpy ...';
   TempGameSpySrvList.Clear;

  inx := GetGSSList(0, Str );
  case inx of
   0      : begin
                TempGameSpySrvList.Text := Str;
                StarMultiThreading( TempGameSpySrvList );
            end;
   1      : begin
             JvStatusBar1.Panels[1].Text := GetWORD(124); //'Received servers list empty!';
             ActiveThreading := False;
            end;
   -1, -2 : begin
              JvStatusBar1.Panels[1].Text := Format(GetWORD(125), [inx]); //'Can''t connect to GameSpy! (ErrorCode: ' + IntToStr(inx) + ')' ;
              ActiveThreading := False;
            end;
   -3, -4 : begin
               JvStatusBar1.Panels[1].Text := Format(GetWORD(127), [inx]);//'Access error in module "xdec.exe" (ErrorCode: ' + IntToStr(inx) + ')'  ;
               ActiveThreading := False;
            end;
  end;


end;





procedure TForm1.Exit1Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm1.Showapplication1Click(Sender: TObject);
begin
 JvTrayIcon1.ShowApplication;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
  var path : string;
begin
    path :=  ExtractFilePath(Application.ExeName)+'Settings.ini';
    GlobalServersGrid.SaveToIni( path, 'FGRID' );
    GameSpyGrid.SaveToIni( path, 'GSGRID');
    PlayersGrid.SaveToIni( path, 'PGRID');
    MatestGrid.SaveToIni(  path, 'MGRID');
    PROnlinePlayersGrid.SaveToIni(  path, 'OPGRID');


    OptionsForm.jvpnflstrg1.WriteBoolean ( 'FORMAXIMIZED', Form1.WindowState = wsMaximized);

    OptionsForm.jvpnflstrg1.WriteDateTime('LDT', DAte);


    if Form1.WindowState <> wsMaximized  then
    begin
      OptionsForm.jvpnflstrg1.WriteInteger( 'FORMWIDTH', Form1.Width );
      OptionsForm.jvpnflstrg1.WriteInteger( 'FORMHEIGHT', Form1.Height );
    end;

    with TBToolbar2 do
    begin
       OptionsForm.jvpnflstrg1.WriteBoolean('VS0', TBShowServers.Items[0].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('VS1', TBShowServers.Items[1].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('VS2', TBShowServers.Items[2].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('VS3', TBShowServers.Items[3].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('VS4', TBShowServers.Items[4].Checked);

       OptionsForm.jvpnflstrg1.WriteBoolean('PO0', TBShowPlayersOnline.Items[0].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO1', TBShowPlayersOnline.Items[1].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO2', TBShowPlayersOnline.Items[2].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO3', TBShowPlayersOnline.Items[3].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO4', TBShowPlayersOnline.Items[4].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO5', TBShowPlayersOnline.Items[5].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO6', TBShowPlayersOnline.Items[6].Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('PO7', TBShowPlayersOnline.Items[7].Checked);


       OptionsForm.jvpnflstrg1.WriteBoolean('TBAR', TBItemToolBar.Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('SBAR', TBItemSearchBar.Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('FBAR', TBItemFilterBar.Checked);
    end;



    {Test}
    PRGameSpy.Destroy;
    PRFavorites.Destroy;
    PRPlayersOnline.Destroy;
    ServerListBuffer.Free;
    TempGameSpySrvList.Free;
    GeoIP.Free;

    FHttpCli.Abort;
    FHttpCli.RcvdStream.Free;
    FHttpCli.Free;

end;

{
**********************************************************************************
********************************** ROWS FILTER ***********************************
**********************************************************************************
}

    function TForm1.SetPORowVisibility(Index: Integer; param: integer = 0): Boolean;
    begin
      with TBShowPlayersOnline do
      begin
       case Index of
        0..6, 8 : Result:= Items[Index].Checked;
        7    : begin
                  if Items[Index].Checked then Result:= True else
                   Result:= (param > 0);

               end;
       end;

      end;
    end;

    procedure TForm1.GridShowHideRowsPO(NG: TNextGrid);
    var Row : Integer;
    begin
       NG.BeginUpdate;
       for Row:=0 to NG.RowCount-1 do
        NG.RowVisible[Row] := SetPORowVisibility(NG.cell[5, Row].asInteger, GetEntryValueI( NG.cells[C_PO_CMD, Row], Entry_MATEINDEX, '/' ) ); //SetRowVisibility(GetBF2List(NG.tag).AnItems[NG.Cell[H_ITEMID, ROW].asinteger]  );
       NG.EndUpdate;

    end;


    function TForm1.ShowRow(const item: TBF2ServerInfoItem; ShowFull, ShowUNA, ShowWOP, ShowWOM, ShowPW : boolean; ServerName, MapName : string; ServerPing, PlayersCount : integer ): boolean;
    var bFull, bUNA, bWOP, bWOM, bPW : Boolean;
    begin
       Result := True;
       bUNA   := Item.ErrorCode = -1;
       if bUNA then   {Сервер недоступен}
            Result := ShowUNA
         else
         Begin

          bFull := (SafeStr2Int( item.numplayers ) + SafeStr2Int(item.bf2_reservedslots)) >=  SafeStr2Int( item.maxplayers );
          bWOP  :=  SafeStr2Int( item.numplayers ) <= 0 ;
          bWOM  := GetMatesCount( Item ) <= 0;
          bPW   :=  Item.password = '1';

           Result:= not( bFull and (not ShowFull) );
           if  Result then Result:= not( bWOP and (not ShowWOP) );
           if  Result then Result:= not( bWOM and (not ShowWOM) );
           if  Result then Result:= not( bPW and  (not ShowPW) );
         end;


        if Result and  (ServerName <> '') then
           Result:= PosStr(ServerName, item.hostname, 1, false ) > 0;

        if Result and  (MapName <> '') then
           Result:= PosStr(MapName, item.mapname, 1, false ) > 0;

        if Result and (PlayersCount > 0) then
           result:=  PlayersCount <= item.RealPlayersCount;
                                 
        if Result and (ServerPing > 0) and (item.Ping > 0) then
         if (item.Ping = 9999) then result:= ServerPing >= item.ApproxPing else
           result:=   ServerPing >= item.Ping; {}

    end;

    Function TForm1.SetRowVisibility(const item: TBF2ServerInfoItem ) : boolean;
    begin
      with  TBShowServers do  //Items[2].Items[2]  do
                             Result:= ShowRow(item, Items[0].Checked,Items[1].Checked,Items[2].Checked,Items[3].Checked,Items[4].Checked, FilterServerNameEdit.Text, FilterMapNameEdit.Text, FilterPingEdit.value, FilterPlayersEdit.Value);
    end;

    procedure TForm1.GridShowHideRows(NG: TNextGrid);
    var Row : Integer;  item: TBF2ServerInfoItem;
      //  bFull, bUNA, bWOP, bWOM, bPW : Boolean;
    begin
       NG.BeginUpdate;
       for Row:=0 to NG.RowCount-1 do
        NG.RowVisible[Row] := SetRowVisibility(GetBF2List(NG.tag).AnItems[NG.Cell[H_ITEMID, ROW].asinteger]  );
       NG.EndUpdate;

    end;




{
**********************************************************************************
********************************** GRID EVENTS ***********************************
**********************************************************************************
}

procedure TForm1.ComOnGridSelectCell(Sender: TObject; ACol, ARow: Integer);
var Item: TBF2ServerInfoItem;   note: string;
begin

  OnPopup(self);
  if (ACol < 0) or (ARow < 0) then Exit;
                                          
     with (Sender as TNextGrid) do
     begin
      Item := GetBF2List(Tag).AnItems[Cell[H_ITEMID , ARow].AsInteger];


      {Players and Mates}
      ProcessPlayers(PlayersGrid, MatestGrid, item);


      {Server Info}                          
      UpdateDetailedInfo(ServerInfoRich, item, clNavy, clBlack);

     end;
end;

procedure TForm1.GlobalServersGridCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
var str : string;
begin
 if not GlobalServersGrid.RowExist(AROW) or (GlobalServersGrid.SelectedRow = ARow) then Exit;

  str := GlobalServersGrid.Cell[11, ARow].AsString;
  if (Str <> '0') and (Str <> '') and (ACol = 6) then
   CellColor:= OptionsForm.ServersColorPicker.SelectedColor;

end;

procedure TForm1.PlayersGridCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
    if not PlayersGrid.RowExist(AROW) or (PlayersGrid.SelectedRow = ARow) then Exit;
  //   if PlayersGrid.Cell[9, ARow].AsInteger in [1,2]  then
  //  CellColor:= OptionsForm.MatesColorPicker.SelectedColor;

     

     case Trunc(PlayersGrid.Cell[9, ARow].AsFloat) of

      1,2,3,4,5,6  : if (ACol in [1,2])
                    then CellColor:= OptionsForm.MatesColorPicker.SelectedColor;
 
     end;

end;

procedure TForm1.GameSpyGridCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
var str : string;
begin
 if not GameSpyGrid.RowExist(AROW) or (GameSpyGrid.SelectedRow = ARow) then Exit;


   str := GameSpyGrid.Cell[11, ARow].AsString;
   if (Str <> '0') and (Str <> '') and (ACol = 6) then
   CellColor:= OptionsForm.ServersColorPicker.SelectedColor;

end;

procedure TForm1.GameSpyGridColumnResize(Sender: TObject; ACol: Integer);
begin
   GridColumnResize(Sender, ACol);
   if  not Assigned(GameSpyGrid.Columns[ACOL]) then Exit;
   if  not Assigned(GlobalServersGrid.Columns[ACOL]) then Exit;

   if NxPageControl1.ActivePageIndex = 1 Then
   GlobalServersGrid.Columns[ACOL].Width := GameSpyGrid.Columns[ACOL].Width;
end;

procedure TForm1.GameSpyGridAfterSort(Sender: TObject; ACol: Integer);
begin
  GameSpyGrid.ScrollToRow(0);
end;

procedure TForm1.GlobalServersGridAfterSort(Sender: TObject;
  ACol: Integer);
begin
  GlobalServersGrid.ScrollToRow(0);
end;

procedure TForm1.PROnlinePlayersGridCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin          
   if not PROnlinePlayersGrid.RowExist(AROW) or (PROnlinePlayersGrid.SelectedRow = ARow){} then Exit;
    { if (PROnlinePlayersGrid.Cell[5, ARow].AsInteger < 6) } {and (PROnlinePlayersGrid.Cell[5, ARow].AsInteger <> 3)  and (ACol in [1,2])  then
    CellColor:= OptionsForm.MatesColorPicker.SelectedColor;     }

     if (GetEntryValueI( PROnlinePlayersGrid.Cells[C_PO_CMD, ARow], Entry_MATEINDEX, '/')  > 0) and (ACol in [1,2]) then
   // if (PROnlinePlayersGrid.Cells[11, ARow]  <> '')  then
     CellColor:= OptionsForm.MatesColorPicker.SelectedColor;
     (**)
end;

procedure TForm1.PROnlinePlayersGridAfterSort(Sender: TObject;
  ACol: Integer);
begin
 PROnlinePlayersGrid.ScrollToRow(0);
end;

procedure TForm1.PlayersGridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
     if not PlayersGrid.RowExist(AROW) then Exit;

     case Trunc(PlayersGrid.Cell[9, ARow].AsFloat) of

      //0          :       ;
      1,2,3,4,6  : if (Frac(PlayersGrid.Cell[9, ARow].AsFloat) > 0) and (ACol in [1,2])
                    then FontStyle := FontStyle + [fsBold];


     end;

end;

procedure TForm1.PROnlinePlayersGridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  with (Sender as TNextGrid) do
  begin
    if not RowExist(AROW) then Exit;
    {
     if (Cell[5, ARow].AsInteger = 0) and (ACol in [1,2])  then
      FontStyle := FontStyle + [fsBold];
    
     if  (Cell[H_HIGHLIGHT, ARow].AsInteger = 1) and (ACol in [6])
     then FontStyle := FontStyle + [fsBold];
        }

     if  (GetEntryValueI( Cells[C_PO_CMD, ARow] , Entry_FAVINDEX , '/' ) = 1) and (ACol in [6])
     then FontStyle := FontStyle + [fsBold];


  end;

end;

procedure TForm1.MatestGridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
      if not MatestGrid.RowExist(AROW) {or (MatestGrid.SelectedRow = ARow)} then Exit;
     // if (MatestGrid.Cell[9, ARow].AsInteger = 2) and (ACol in [1,2])  then
     // FontStyle := FontStyle + [fsBold];

     case Trunc(PlayersGrid.Cell[9, ARow].AsFloat) of
      1,2,3,4,6  : if (Frac(PlayersGrid.Cell[9, ARow].AsFloat) > 0) and (ACol in [1,2])
                    then FontStyle := FontStyle + [fsBold];
     end;



end;

procedure TForm1.GridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin

  with (Sender as TNextGrid) do
  begin
    if not RowExist(AROW) then Exit;

    if  (Cell[H_HIGHLIGHT, ARow].AsInteger = 1) and (ACol in [6])
    then FontStyle := FontStyle + [fsBold];

  end;

  

end;

{
********************************************************************
************************ SEARCHING SHITS ***************************
********************************************************************
}

procedure TForm1.SearchCollection;

          function SearchNextServer(NG: TNextGrid; Text: string; FromRow, ToRow: Integer): Boolean;
          var  i: Integer;
          begin
            Result := False;
                 for i := FromRow to ToRow do
                 begin
                    if NG.RowVisible[i] then
                     if MatchSearchRequest(trim(Text), GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger], inHost) > -1
                      then
                      begin
                         NG.SelectedRow := I;
                         NG.ScrollToRow(i);
                         Result:= True;
                         Break;
                      end;
                 end;
          end;


          function SearchNextNameType1(NG: TNextGrid; Text: string; StartRow, SearchIn, PlayerNO: Integer):Integer;
          var i, PlayerIndex: Integer;
          begin

            for i:= StartRow to NG.RowCount-1 do
            begin
                if NG.RowVisible[i]  then
                      PlayerIndex := MatchSearchRequest(trim(Text), GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger], SearchIn, PlayerNO);

                if PlayerIndex > -1 then
                begin
                  NG.SelectedRow := I;
                  NG.ScrollToRow(i);
                  NxPageControl2.ActivePageIndex := 0;

                //OLD ONE  PlayersGrid.SearchNext(2, ExtractName(GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger].BF2Player[PlayerIndex].Name), true);
                  PlayersGrid.SearchNext(12, IntToStr(PlayerIndex), true);


                  Result:= PlayerIndex;
                  Exit;
                end
                 else PlayerNO := 0;

            end;

              Result := -1;
          end;


          function SearchNextPROnline(Text: string; FromRow, SearchIn: Integer):boolean;
           var  i, v: Integer;
          begin
            Result := False;

              v:= SearchIn;
              if SearchIn = 3 then v:=6;


                for i := FromRow to PROnlinePlayersGrid.RowCount-1 do
                 begin
                    if PROnlinePlayersGrid.RowVisible[i] then
                     if cStrings.PosStr( Text, PROnlinePlayersGrid.Cells[v, i], 1, False) > 0  then

                      begin
                         PROnlinePlayersGrid.SelectedRow := I;
                         PROnlinePlayersGrid.ScrollToRow(i);
                         Result:= True;
                         Exit;
                      end;
                 end;


          end;


var GridIndex, srcIn: Integer;
begin

    GridIndex :=   Succ(NxPageControl1.ActivePageIndex);
    if GetGrid(GridIndex).RowCount = 0 then Exit;


  if RadioButtonPrefix.Checked then srcIn:=inPrefix;
  if RadioButtonPlayerName.Checked then srcIn:= inName;
  if RadioButtonServerName.Checked then srcIn:= inHost;

  {EventToResetLastPlayerNO}
  if (cStrings.StrCompareNoCase(LastTxt, SearchComboBox.Text) <> 0) or (LastGridIndex <> GridIndex) or (LastLookIn <> srcIn )
  then GlobalResetLastPlayerSearchIndex;


  case GridIndex of
    S_GAME_SPY, S_FAVORITES :
    Begin

       if  RadioButtonPrefix.Checked or RadioButtonPlayerName.Checked then
       begin

         {first ever search , and no grid selections}
         if GetGrid(GridIndex).SelectedRow < 0 then
         begin
           LastSearchNamePos  := SearchNextNameType1(GetGrid(GridIndex), SearchComboBox.Text, 0, srcIn, 0 );
           Exit;
         end;
         {Continue search}
         if LastSearchNamePos = -1 then
           LastSearchNamePos  := SearchNextNameType1(GetGrid(GridIndex),  SearchComboBox.Text, 0, srcIn, Succ(LastSearchNamePos) )
            else
             LastSearchNamePos  := SearchNextNameType1(GetGrid(GridIndex),  SearchComboBox.Text, GetGrid(GridIndex).SelectedRow, srcIn, Succ(LastSearchNamePos) );
       end;


       if RadioButtonServerName.Checked then
       begin
        if not SearchNextServer(GetGrid(GridIndex), SearchComboBox.Text, Succ(GetGrid(GridIndex).SelectedRow), Pred(GetGrid(GridIndex).RowCount) )  then
        SearchNextServer(GetGrid(GridIndex), SearchComboBox.Text, 0, Pred(GetGrid(GridIndex).RowCount) ) ;
       end;

    end;


    S_PRPONLINE : begin

                   if not SearchNextPROnline( Trim(SearchComboBox.Text), Succ(PROnlinePlayersGrid.SelectedRow), srcIn ) then
                       SearchNextPROnline( Trim(SearchComboBox.Text), 0, srcIn );

                  end;


  end;


   LastTxt := SearchComboBox.Text;
   LastGridIndex := GridIndex;
   LastLookIn :=  srcIn;



end;


procedure TForm1.GlobalServersGridCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
 {For Search , to Identify Manual row selection}
 GlobalResetLastPlayerSearchIndex;
end;

procedure TForm1.GlobalResetLastPlayerSearchIndex;
begin
 LastSearchNamePos:= -1;
end;


{
*******************************************************
********************  TOOL BAR ************************
*******************************************************
}

procedure TForm1.TBsearchToolbarCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := False;
   TBsearchToolbar.Visible := False;
   TBItemSearchBar.Checked := False;
   TBItemShowHideSearchBar.Checked := False;
end;

procedure TForm1.TBItemSearchBarClick(Sender: TObject);
begin
  TBsearchToolbar.Visible         := TBItemSearchBar.Checked;
  TBsearchToolbar.CurrentDock     := TBDock3;
  TBItemShowHideSearchBar.Checked := TBsearchToolbar.Visible;
end;

procedure TForm1.TBItemShowHideSearchBarClick(Sender: TObject);
begin
   TBItemShowHideSearchBar.Checked := not TBItemShowHideSearchBar.Checked;
   TBItemSearchBar.Checked := TBItemShowHideSearchBar.Checked;
   TBsearchToolbar.Visible := TBItemSearchBar.Checked;
   TBsearchToolbar.CurrentDock := TBDock3;
end;

procedure TForm1.TBItemToolBarClick(Sender: TObject);
begin
  TBToolbar1.Visible := TBItemToolBar.Checked;
end;

procedure TForm1.TBSubmenuItem2Popup(Sender: TTBCustomItem;
  FromLink: Boolean);
begin
   OnPopup(Sender);
end;

procedure TForm1.TBitemHideFilterBarClick(Sender: TObject);
begin
   TBitemHideFilterBar.Checked := not TBitemHideFilterBar.Checked;
   TBItemFilterBar.Checked := TBitemHideFilterBar.Checked;
   TBFilterlbar.Visible := TBItemFilterBar.Checked;
end;

procedure TForm1.TBItemFilterBarClick(Sender: TObject);
begin
   TBFilterlbar.Visible         := TBItemFilterBar.Checked;
   TBitemHideFilterBar.Checked  := TBFilterlbar.Visible;
end;


procedure TForm1.OnFilterEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then  PopupActionsEnt( Sender );
end;

procedure TForm1.SearchComboBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then  PopupActionsEnt( Sender );
end;

{Detailed Info PopUp}

procedure TForm1.TBPopupMenuDetailedInfoPopup(Sender: TObject);
begin
  TBDTinfoCopy.Enabled := Length(Trim(ServerInfoRich.SelText)) > 0;
end;

procedure TForm1.TBDTinfoCopyClick(Sender: TObject);
begin
  SendToClipBrd( Trim(ServerInfoRich.SelText));
end;

procedure TForm1.TBDTinfoSelAllClick(Sender: TObject);
begin
 ServerInfoRich.SelectAll;
end;


{Other}


procedure TForm1.FormActivate(Sender: TObject);
begin
    if OptionsForm.jvpnflstrg1.ReadBoolean ( 'FORMAXIMIZED', False) then
        Form1.WindowState := wsMaximized;

    case OptionsForm.jvpnflstrg1.ReadInteger('ONSTARTAPP', 0) of
     0: ; //(Nothing)
     1: TBItem1.Click; //Update Favorites
     2: TBItem2.Click; //Update GameSpy
     3: TBItem3.Click;//Update PlayersOnline

    end;

end;


procedure TForm1.FormResize(Sender: TObject);
begin
  SkinData1.UpdateSkinControl(Form1);
end;

procedure TForm1.GridColumnResize(Sender: TObject;
  ACol: Integer);
begin
  with  (Sender as TNextGrid) do
  begin
   case Tag of
    S_FAVORITES : Caption := GetWORD(40);////'List empty. If you have favorites servers in the list, press Alt+F to update information about them.';
    S_GAME_SPY  : Caption := GetWORD(41);////'List empty. Update gamespy server list by pressing Alt+G';
    S_PRPONLINE : Caption := GetWORD(42);////'List empty. Update the list of online playing players by pressing Alt+P';
   end;
  end;
end;

procedure TForm1.SkinData1SkinChanged(Sender: TObject);
begin

end;

{****************************************************************************}
{****************************************************************************}
{****************************************************************************}
{****************************************************************************}
//                             RSS
{****************************************************************************}
{****************************************************************************}
{****************************************************************************}







procedure TForm1.Label8Click(Sender: TObject);
begin
    RadioButtonServerName.Checked:= True;
end;

procedure TForm1.Label9Click(Sender: TObject);
begin
   RadioButtonPlayerName.Checked:= True;
end;

procedure TForm1.Label10Click(Sender: TObject);
begin
  RadioButtonPrefix.Checked:= True;
end;



procedure TForm1.TBClickUpdateClick(Sender: TObject);
begin
    TBClickUpdate.Checked := not TBClickUpdate.Checked;
end;

procedure TForm1.ClickUpdate(Sender: TObject);
var CM: TComponent;
begin
   if not TBClickUpdate.Checked then Exit;
   CM := TComponent.Create(self);
   CM.Tag := UPDATESELECTED;
   PopupActionsEnt( CM );
   CM.Free;
end;


{****************************************************************************}
{****************************************************************************}
{****************************************************************************}
{****************************************************************************}

procedure TForm1.AutoCheckForUPD;
var i: integer; dlink: string;
begin
   if not OptionsForm.CheckUpdatescb.Checked then  Exit;

   if DiffDays( OptionsForm.jvpnflstrg1.ReadDateTime('LDT'), DAte) <> 0 then
   begin
      GetUpdates(dlink);

      if dlink <> '' then
      begin
        with AboutForm do
        begin
         UPDPanel.top := 8;
         UPDPanel.left:= 5;
         UPDPanel.Visible := true;

         DownLink :=  dlink;
         Button4.Enabled := True;

         if not Visible then ShowModal;
        
        end;
      end;



   end;


end;




procedure TForm1.GetUpdates(var DLink: String);
var

  FXmlDoc: TNativeXml;
  S : string;
  i : Integer;
begin

      With AboutForm do
      begin
       LogRichEdit.Lines.Clear;
       LogRichEdit.Lines.Add(GetWORD(160));//('Updates check!');
       LogRichEdit.Lines.Add(GetWORD(161));//('Connecting ...');  GetWORD
        FHttpCli.Abort;
                  try
                    FHttpCli.Get;
                  except
                    LogRichEdit.Lines.Add(GetWORD(162) +{'Error code}': (' + IntToStr(FHttpCli.StatusCode) + ') ' + FHttpCli.ReasonPhrase);
                    Exit;
                  end;

                   LogRichEdit.Lines.Clear;

                   FXmlDoc := TNativeXml.Create;
                   FXmlDoc.LoadFromStream( FHttpCli.RcvdStream );
                     if  FXmlDoc.Root.Nodes[0].ReadInteger('VERCOMP',0) > VERCOMP then
                     begin
                       LogRichEdit.Lines.Add( FXmlDoc.Root.Nodes[0].ReadUnicodeString('title','') );
                       LogRichEdit.Lines.Add('');
                       s:= FXmlDoc.Root.Nodes[0].ReadUnicodeString('ainfo','');
                       S:= StrReplace('||', #13#10, s, False);

                       LogRichEdit.Lines.Add(S);

                       DLink:= FXmlDoc.Root.Nodes[0].ReadUnicodeString('download','');

                     end else
                      LogRichEdit.Lines.Add(GetWORD(163));
                  FXmlDoc.Free;

      end;

end;


{ 
initialization
  mHandle := CreateMutex(nil, True, 'gnetinstanceon');
 if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    ShowMessage('Program is already running!');
    halt;
  end; 

finalization
  if mHandle <> 0 then CloseHandle(mHandle)
end.

  }




procedure TForm1.PlayersGridSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
///
end;

end.
