unit Unit1;
   {$I ImagingOptions.inc}
//   Дойчлан дойчланд убер алес  мля
{Job list



- IRC Chat
- NEws (My own news RSS)
- Update system bugs revision rss




При нажатии отправки сервера в список фаворитов появляется окно запроса параметров

-Delete
-Import


}


interface

uses
  Windows,  VClUnZIP,
  SysUtils,  Variants,
  Classes,
  Graphics,
  Controls, Forms,

  NxColumnClasses,
  NxColumns,
  
  NxCustomGridControl,
  NxCustomGrid,
  NxGrid,
  NxPageControl,

  
  
  NxAutoCompletion,
  NxCells, NxPropertyItems,

  ExtCtrls,
  ComCtrls,
  Menus,
  XPMan,
  StdCtrls,
  

  BF2ServerInfo,
  cStrings,
  
  
  JvStatusBar,
  GeoIP,
  JvTrayIcon,

  WinSkinData,
  TB2Item,
  TB2Dock,
  TB2Toolbar,
  Spin, Dialogs, PngImageList, 
  OverbyteIcsHttpProt,


  ImagingTypes,
  Imaging,
  ImagingClasses,
  ImagingComponents,
  ImagingCanvases,
  
  ImagingUtility, JvNetscapeSplitter, JvComponentBase, ImgList,
  JvExComCtrls, NxScrollControl, JvExExtCtrls, AppEvnts, NxCollection,
  TntStdCtrls, TntComCtrls, pngimage{, OleCtrls, SHDocVw_EWB, EwbCore, EmbeddedWB};

{$I defs.inc}





 type

  TAppStats = ( aFree, aProcessingFavorites, aProcessingGameSpy, aProcessingPlayersOnline,
                aProcessingSingleServer, aRequestingFromGameSpy, aTerminateAppWhenProcsDone, aAborting);
  TApplicationStatus =  set of TAppStats;




  const
        CapCap    = ' PR - Green Network 1.0.46';
        BuildDate = '2011.01.26';
        VerNo     = '1.0.46';
        VERCOMP   = 1046;
        ImPS      = 2;

        {IMG}
        FillColor       = ClWhite; //$FFA6FFFF;
        CheckersDensity = 1;

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
    TBItemSearchBar: TTBItem;
    OnlinePlayersPopupMenu: TTBPopupMenu;
    TBSeparatorItem23: TTBSeparatorItem;
    NxCheckBoxColumn2: TNxNumberColumn;
    NxCheckBoxColumn1: TNxNumberColumn;
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
    NxImageColumn11: TNxImageColumn;
    NxTextColumn26: TNxTextColumn;
    NxImageColumn14: TNxImageColumn;
    NxTextColumn27: TNxTextColumn;
    PngImageList1: TPngImageList;
    NxNumberColumn2: TNxHtmlColumn;
    NxNumberColumn15: TNxHtmlColumn;
    NxTextColumn6: TNxHtmlColumn;
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
    TBSeparatorItem37: TTBSeparatorItem;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    TBItem30: TTBItem;
    TBItem31: TTBItem;
    mapPanel: TPanel;
    PaintBox: TPaintBox;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    TBItemMapPreview: TTBItem;
    CancelButton: TButton;
    NxTextColumn5: TNxHtmlColumn;
    TBItem28: TTBItem;
    Memo1: TMemo;
    Timer1: TTimer;
    Timer2: TTimer;
    FlagsPngList: TPngImageList;
    NxTextColumn7: TNxTextColumn;
    NxImageColumn15: TNxImageColumn;
    NxImageColumn16: TNxImageColumn;
    CountryImageList: TPngImageList;
    NxGraphicColumn1: TNxImageColumn;
    NxImageColumn18: TNxImageColumn;
    JvNetscapeSplitter2: TJvNetscapeSplitter;
    PlayerNamePopup: TTBPopupMenu;
    TBItemCopyname: TTBItem;
    TBItemCopyCell: TTBItem;
    TBSeparatorItem35: TTBSeparatorItem;
    CopyTextItem: TTBSubmenuItem;
    TBItemPlayerNote: TTBItem;
    TagsItem: TTBSubmenuItem;
    NamesItem: TTBSubmenuItem;
    PrefixesItem: TTBSubmenuItem;
    TBSeparatorItem41: TTBSeparatorItem;
    TBItemTagsD: TTBItem;
    TBSeparatorItem42: TTBSeparatorItem;
    TBItemNameD: TTBItem;
    TBItemPrfixA: TTBItem;
    TBItemPrefixE: TTBItem;
    TBSeparatorItem43: TTBSeparatorItem;
    TBItemPrefixD: TTBItem;
    TBItemNameA: TTBItem;
    TBItemNameE: TTBItem;
    TBItemTagsA: TTBItem;
    TBSeparatorItem38: TTBSeparatorItem;
    TBItemAdToBodyList: TTBItem;
    TBItemTagsE: TTBItem;
    RadioButtonServerName: TTBItem;
    RadioButtonPrefix: TTBItem;
    RadioButtonPlayerName: TTBItem;
    TBSubmenuItem8: TTBSubmenuItem;
    TBItemAdToBodyListPO: TTBItem;
    CopyTextItemPO: TTBSubmenuItem;
    TBItemCopyCellPO: TTBItem;
    TBSeparatorItem19: TTBSeparatorItem;
    TBItemCopynamePO: TTBItem;
    TBItemPlayerNotePO: TTBItem;
    TBSeparatorItem33: TTBSeparatorItem;
    PrefixesItemPO: TTBSubmenuItem;
    TBItemPrfixAPO: TTBItem;
    TBItemPrefixEPO: TTBItem;
    TBSeparatorItem34: TTBSeparatorItem;
    TBItemPrefixDPO: TTBItem;
    NamesItemPO: TTBSubmenuItem;
    TBItemNameAPO: TTBItem;
    TBItemNameEPO: TTBItem;
    TBSeparatorItem39: TTBSeparatorItem;
    TBItemNameDPO: TTBItem;
    TagsItemPO: TTBSubmenuItem;
    TBItemTagsAPO: TTBItem;
    TBItemTagsEPO: TTBItem;
    TBSeparatorItem40: TTBSeparatorItem;
    TBItemTagsDPO: TTBItem;
    TBItem21: TTBItem;
    TBItem29: TTBItem;
    TBSeparatorItem18: TTBSeparatorItem;
    TBSeparatorItem20: TTBSeparatorItem;
    KnownServersGrid: TNextGrid;
    NxTextColumn31: TNxTextColumn;
    NxTextColumn32: TNxTextColumn;
    NxDateColumn1: TNxDateColumn;
    NxNumberColumn25: TNxNumberColumn;
    NxTabSheet8: TNxTabSheet;
    TBItem32: TTBItem;
    TBItem33: TTBItem;
    TBSubmenuItem7: TTBSubmenuItem;
    TBItem35: TTBItem;
    TBSeparatorItem21: TTBSeparatorItem;
    TBItem34: TTBItem;
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
    procedure GridCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure TBClickUpdateClick(Sender: TObject);
    procedure ClickUpdate(Sender: TObject);
    procedure PlayersGridSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure TBItem31Click(Sender: TObject);
    procedure GridAfterSort(Sender: TObject; ACol: Integer);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mapPanelResize(Sender: TObject);
    procedure TBItemMapPreviewClick(Sender: TObject);
    procedure JvNetscapeSplitter1CanResize(Sender: TObject;
      var NewSize: Integer; var Accept: Boolean);
    procedure CancelButtonClick(Sender: TObject);
    procedure  ProcButtonsOnOff(B: Boolean );
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure WaitandSetControlsState;
    Procedure AbortProcessing;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure LoadFlags;
    procedure GlobalServersGridCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure MatestGridCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure PlayerNamePopupPopup(Sender: TObject);
    procedure PlayernamePopupActionClick(Sender: TObject);
    procedure RadioButtonServerNameClick(Sender: TObject);
    procedure OnlinePlayersPopupMenuActClick(Sender: TObject);
    procedure OnlinePlayersPopupMenuPopup(Sender: TObject);
    procedure SettingsGotoClick(Sender: TObject);
    procedure TBItem33Click(Sender: TObject);
    procedure TBItem35Click(Sender: TObject);
    procedure TBItem34Click(Sender: TObject);
    procedure TBItem12Click(Sender: TObject);
  private
    FImage: ImagingClasses.TMultiImage;
    // Canvas for drawing on loaded images
    FImageCanvas: ImagingCanvases.TImagingCanvas;
    // Image background
    FBack: ImagingClasses.TSingleImage;
    // Canvas for background image
    FBackCanvas: ImagingCanvases.TImagingCanvas;

  //  FLastTime: LongInt;
    FOriginalFormats: array of TImageFormat;
    FSupported: Boolean;





{Закрыть приложение по завершению обработки}
    CloseAppWhenItsDone: Boolean;

    {Отосланных возвращённых пингов}
    APings, BPings : Integer;
    {Состояние приложения}
    AppStatus : TApplicationStatus;

    DoneServersCount, TotalServersCount : Integer;





    { Private declarations }
  public
     GeoIP : TGeoIP;
     MapsPaths      : TStringList;
     FracFlagsList  : TStringList;
     CountryCodeList: TStringList;
     UseCountrys : Boolean;


     FavHeaderPanel : TPoint;
     FavHeaderPanelCanMove: Boolean;

    function GetCountryIndex(code: string):Integer;
    function GetFractionFlagImageIndexByTeamName(TeamName: string):Integer;
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




    procedure FillDefault;
    procedure SetUnsupported;
    procedure LoadImage(MFile: String);
    procedure ShowNotInstalledMap;
    procedure Debug( v: Variant);

    function GetLastknown(ipqport:string):string;
    procedure InListServers( SList: TBF2ServerSList);
    procedure ClearShits;

    procedure UpdateFavBtnEn;

    { Public declarations }
  end;

  

var
  Form1: TForm1;

  {NEW$}
  ActiveThreading        : Boolean;
  ServerNo, ServersCount : Integer;
//  ServersDone, PingsDone, PingsCount : Integer;



  MainThreadsDone, PingsThreadsDone : Boolean;




  GridIndexTag           : Integer;
  RowItemIndex           : Integer;
  ServerListBuffer       : TStringList;
  TempGameSpySrvList     : TStringList;

  

  PRGameSpy, PRFavorites, PRPlayersOnline : TBF2ServerSList;


  LastSearchNamePos, LastLookIn, LastGridIndex : Integer;
  LastTxt : string;
  FHttpCli    : THttpCli;
    mHandle    : THandle;    // Mutexhandle
  //FHttpCliBool: Boolean;


  TerminateProgress : Boolean;

  ElapsedTime, SpeedStartTime, SpeedEndTime : Integer;


implementation

uses MUnit, UnitGrid, Options, About, ServerPassUnit, LanguageUnit, NativeXml, cDateTime, MatesUnit,
  AdvaddBListFrmUnit, FavAddFrm;

{$R *.dfm}
{$R 7ip.res}

{
**********************************************************************************
*******************************HELPER UTILS***************************************
**********************************************************************************
}

procedure TForm1.Debug( v: Variant);
begin
 Memo1.Lines.Add(  VarToStr(v)     );
end;





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

     if collection.AnItems[i].ErrorCode > -1  then  Inc(GoodServers);
      TotalPlayers := TotalPlayers + collection.AnItems[i].RealPlayersCount;

  end;
end;


{------------------------------------------------}


procedure TForm1.PopupActionsEnt(Sender: TObject);
var
    Str               : string;
    ActGridIndex      : Integer;
    iIndex            : Integer;
    X , Y             : Integer;
begin

  //+OFF   if ( (Sender as TComponent{TTBCustomItem}).tag in [GET_GAMESPY, GET_FAVORITES] ) {and  ActiveThreading } then Exit;

    if ( (Sender as TComponent).tag <> JOINSERVER ) and (AppStatus <> [aFree]) then Exit;


    ActGridIndex       :=   Succ(NxPageControl1.ActivePageindex);// + 1;


    case (Sender as TComponent{TTBCustomItem}).tag of


       GET_GAMESPY   :  begin   
                          //+OFF  if ActiveThreading  then Exit;


                            NxPageControl1.ActivePageIndex := 1;
                            GameSpyGrid.ClearRows;
                            PRGameSpy.Clear;
                            MatestGrid.ClearRows;
                            PlayersGrid.ClearRows;
                            ServerInfoRich.Clear;

                            NxTabSheet6.Caption:= Format( GetWORD(13), [0] );       //'Favorites (' + IntToStr(GoodServers) + ')';//Fav
                            NxTabSheet6.Tag := 0;
                            SetUnsupported;
                            ProcButtonsOnOff(False);
                            TerminateProgress := False;
                            GetGameSpyServers;

                        end ;

       GET_FAVORITES :  begin
                         //  if ActiveThreading  then Exit;


                            NxPageControl1.ActivePageIndex := 0;
                            GlobalServersGrid.ClearRows;
                            PRFavorites.Clear;
                            MatestGrid.ClearRows;
                            PlayersGrid.ClearRows;
                            ServerInfoRich.Clear;
                            SetUnsupported;

                            NxTabSheet2.Caption:= Format( GetWORD(13), [0] );       //'Favorites (' + IntToStr(GoodServers) + ')';//Fav
                            NxTabSheet2.Tag := 0;

                            if OptionsForm.NextGridFavServers.RowCount > 0 then
                            begin
                             TempGameSpySrvList.Clear;
                             for iIndex:= 0 to OptionsForm.NextGridFavServers.RowCount-1 do
                              TempGameSpySrvList.Add(OptionsForm.NextGridFavServers.Cells[1, iIndex]);
                              ProcButtonsOnOff(False);
                              TerminateProgress := False;
                              StarMultiThreading(TempGameSpySrvList, S_FAVORITES);
                            end;

                        end;


       GET_ALLPLAYERS : begin
                        //  if ActiveThreading  then Exit;

                          NxPageControl1.ActivePageIndex := 2;

                          PROnlinePlayersGrid.ClearRows;
                          PRPlayersOnline.Clear;
                          MatestGrid.ClearRows;
                          PlayersGrid.ClearRows;
                          ServerInfoRich.Clear;
                           NxTabSheet7.Caption:= Format( GetWORD(15), [0] );
                           NxTabSheet7.Tag := 0;
                          SetUnsupported;


                          ProcButtonsOnOff(False);
                          TerminateProgress := False;
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
                              if (GetGrid(ActGridIndex).RowCount < 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) or (ActGridIndex = S_FAVORITES) then Exit;
                              Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP + ':' + GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort;


                             with OptionsForm do
                             begin
                               if (GridCOLStrExists(NextGridFavServers, Trim(Str), 1, False) > -1) or (Trim(Str) = '') then Exit;


                                with AddToFavForm do
                                begin
                                  IPQport  := Str;
                                  Capp     := GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].hostname;
                                  if ShowModal = mrOk then
                                  begin
                                   NextGridFavServers.AddRow();
                                   NextGridFavServers.Cells[1, NextGridFavServers.RowCount-1] := Str ;
                                   NextGridFavServers.Cells[2, NextGridFavServers.RowCount-1] := favnote.text ;
                                   NextGridFavServers.SaveToTextFile(SERVERS_FILE, ',', #19);
                                   UpdateFavBtnEn;
                                    case ActGridIndex of
                                      S_GAME_SPY  : GetGrid(ActGridIndex).Cell[15, GetGrid(ActGridIndex).SelectedRow].AsInteger := 1;
                                      S_PRPONLINE  : GridPOReplaceFavIndex(GetGrid(ActGridIndex), GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow].AsInteger , 1);
                                    end;
                                     GetGrid(ActGridIndex).Refresh;
                                     OnPopup(self);

                                  end;

                                end;


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
                                 UpdateFavBtnEn;
                              end;


                              case ActGridIndex of
                                S_GAME_SPY  : GetGrid(ActGridIndex).Cell[15, GetGrid(ActGridIndex).SelectedRow].AsInteger := -1;
                                S_FAVORITES : GetGrid(ActGridIndex).DeleteRow(GetGrid(ActGridIndex).SelectedRow); {GetGrid(ActGridIndex).RowVisible[ GetGrid(ActGridIndex).SelectedRow ]:= False; }
                                S_PRPONLINE : GridPOReplaceFavIndex(GetGrid(ActGridIndex), GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow].AsInteger , -1);
                              end;
                              GetGrid(ActGridIndex).Refresh;
                              OnPopup(self);
                              
                       end;

       ADDPREFIX :    begin      {2}
                            (*
                       case (Sender as TComponent).GetParentComponent.Tag of

                         PLAYERSINFO_POPUP   : str:=  GridCopyColFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex), 1  );
                         ONLINEPLAYERS_POPUP : str:=  GridCopyColFromSelRow(GetGrid(ActGridIndex), 1);
                       end;

                      //  Form3.PlayerName := str;
                      //  Form3.Section    := 0;
                      //  eAddPrefix

                      // if Form3.ShowModal = mrOk then
                      // begin
                       {++++Заменить на Имя грида}
                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);
                      // end;

                           *)
                      end;

       DELETEPREFIX : begin  {2}

                              (*
                       case (Sender as TComponent).GetParentComponent.Tag of

                          PLAYERSINFO_POPUP    : 
                                                  Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;

                          ONLINEPLAYERS_POPUP  : str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetEntryValueI( GetGrid(ActGridIndex).Cells[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow], Entry_PLAYERINDEX, '/'){GetGrid(ActGridIndex).Cell[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow].asInteger}].Name;     //str:=  GridCopyTwoColsFromSelRow(GetGrid(ActGridIndex));

                       end;

                      

                        sDeletePrefix(Str);
                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);   *)
                      end;

       ADDNAME :    begin      {2}
                                         (*
                       case (Sender as TComponent).GetParentComponent.Tag of

                          PLAYERSINFO_POPUP    : Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;

                          ONLINEPLAYERS_POPUP  : str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetEntryValueI( GetGrid(ActGridIndex).Cells[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow], Entry_PLAYERINDEX, '/')].Name;

                       end;

                        eAddPName( (Str) );
                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);    *)
                    end ;

       DELETENAME : begin   {2}
                               (*
                       case (Sender as TComponent).GetParentComponent.Tag of

                        PLAYERSINFO_POPUP    : Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;

                        ONLINEPLAYERS_POPUP  : str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetEntryValueI( GetGrid(ActGridIndex).Cells[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow], Entry_PLAYERINDEX, '/')].Name;    

                       end;
                      sDeletePName(str);
                      GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                      GridSilentUpdateMatesCount(GetGrid(ActGridIndex));



                      GridPOSilentUpdateMates(PROnlinePlayersGrid);
                                                                 *)
                    end;

       UPDATESELECTED : begin {2}
                         
                          if  (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) or (ActGridIndex > 2) then Exit;

                        // if AppStatus <> [aFree] then Exit;

                         ProcButtonsOnOff(False);
                         TerminateProgress := False;
                         StartSingleThreading( GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP,
                                               GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort,
                                               ActGridIndex, GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger);

                        end;


       COPYNAME : begin  {2}

                     {Анаколуф}
                            (*
                    case (Sender as TComponent).GetParentComponent.Tag of

                      PLAYERSINFO_POPUP     : Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;
                                              //OLD ONE str:=  GridCopyTwoColsFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex)  );
                      ONLINEPLAYERS_POPUP   : str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetEntryValueI( GetGrid(ActGridIndex).Cells[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow], Entry_PLAYERINDEX, '/'){GetGrid(ActGridIndex).Cell[C_PO_CMD, GetGrid(ActGridIndex).SelectedRow].asInteger}].Name;     //str:=  GridCopyTwoColsFromSelRow(GetGrid(ActGridIndex));
                    end;

                    if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
                          *)
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
var inx : Integer;  M : TMParams;
begin
 {
  if  AppStatus = [aFree] then
  begin    }
    TBItem7.Enabled := NxPageControl1.ActivePageIndex <> 2;
    TBItem4.Enabled := NxPageControl1.ActivePageIndex <> 0;
 // end;

   inx:=  Succ(NxPageControl1.ActivePageindex);// + 1;

 //  if  not inx in  [S_GAME_SPY, S_FAVORITES, S_PRPONLINE] then Exit;
   if inx > 3 then Exit;

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

                         
                          TBItem7.Enabled:= (RowCount > 0) and (SelectedRow > -1 ) and ( AppStatus = [aFree]);
                          TBItemRefresh.Enabled :=  TBItem7.Enabled;

                          {Copy Server note}
                         TBItem34.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Trim(Cells[C_NOTE, SelectedRow]) > '');
                         TBItem33.Enabled           := (RowCount > 0) and (SelectedRow > -1 );
                         TBItem35.Enabled           := (RowCount > 0) and (SelectedRow > -1 );
                         TBSubmenuItem7.Enabled     := (RowCount > 0) and (SelectedRow > -1 );
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

                         TBItem7.Enabled:= (RowCount > 0) and (SelectedRow > -1 )  and ( AppStatus = [aFree]);
                         TBItemRefresh.Enabled :=  TBItem7.Enabled;
                         
                         {Copy Server note}
                         TBItem34.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Trim(Cells[C_NOTE, SelectedRow]) > '');
                         TBItem33.Enabled   := (RowCount > 0) and (SelectedRow > -1 );
                         TBItem35.Enabled   := (RowCount > 0) and (SelectedRow > -1 );
                         TBSubmenuItem7.Enabled     := (RowCount > 0) and (SelectedRow > -1 );
                        end;

                      end;


       S_PRPONLINE  : begin







       


                       (*  with  GetGrid(inx) do
                         begin
                         
                          {Add Server to favorites}
                           TBItemAddToFav3.Enabled     := (RowCount > 0) and (SelectedRow > -1 ) and (GetEntryValueI(  Cells[C_PO_CMD,  SelectedRow], Entry_FAVINDEX , '/'){Cell[H_HIGHLIGHT, SelectedRow ].AsInteger} <> 1  );//(RowCount > 0) and (SelectedRow > -1 );

                           TBItemOPCopyPlayers.Enabled := (RowCount > 0) and (SelectedRow > -1 ) and (Cells[2, SelectedRow] <> '');
                          
                         {  P := PrefixInMates( Cells[1, SelectedRow] );
                           N := NameInMates(  Cells[2, SelectedRow] );

                              }
                          Add names
                          TBItemOPAddname.Enabled   := N = 0;
                          {PRefix}
                          TBItemOPAddPrefix.Enabled := P = 0;

                          TBItemOPremPrefix.Enabled := P > 0;
                          TBItemOPRemname.Enabled   := N > 0;
                          

                       //   TBItemOPAddPrefix.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Cells[1, GetGrid(inx).SelectedRow] <> '');
                       //   TBItemOPAddname.Enabled     := TBItemOPCopyPlayers.Enabled;
                        //  TBItemOPremPrefix.Enabled   := TBItemOPAddPrefix.Enabled;
                        //  TBItemOPRemname.Enabled     := TBItemOPCopyPlayers.Enabled;

                          if (RowCount > 0) and (SelectedRow > -1 ) then
                          begin

                           with Form1.GetBF2List(Tag).AnItems[Cell[14, SelectedRow ].AsInteger] do
                           begin
                             AdvGetMateParameters(bf2_bots, BF2Player[GetEntryValueI( Cells[C_PO_CMD, SelectedRow], Entry_PLAYERINDEX, '/') ], pAll, M);

                           end;

                            {Prefix}
                            TBItemOPAddPrefix.Enabled := (Cells[1, SelectedRow] <> '') and not (  Trunc(M.Mate) in [ 3,2,6]);
                            {RemPrefix}
                            TBItemOPremPrefix.Enabled := (Cells[1, SelectedRow] <> '') and ( Trunc(M.Mate) in [3,2,6]);
                            {Add name}
                            TBItemOPAddname.Enabled   :=   (Cells[2, SelectedRow] <> '') and not ( Trunc(M.Mate) in [1,3]);
                            {Remove name}
                            TBItemOPRemname.Enabled  :=  (Cells[2, SelectedRow] <> '') and (  Trunc(M.Mate) in [1,3]);
                          end else
                          begin
                           TBItemOPAddPrefix.Enabled :=  False;
                           TBItemOPremPrefix.Enabled :=  False;
                           TBItemOPAddname.Enabled   :=  False;
                           TBItemOPRemname.Enabled   :=  False;
                          end;


                          OPCopyPlayerNote.Enabled   := (RowCount > 0) and (SelectedRow > -1 ) and (Trim(Cells[C_NOTE, SelectedRow]) > '');

                          Rem4Fav2.Enabled  := (RowCount > 0) and (SelectedRow > -1 ) and ( {Cell[H_HIGHLIGHT, SelectedRow ].AsInteger} GetEntryValueI(  Cells[C_PO_CMD,  SelectedRow], Entry_FAVINDEX , '/') = 1  );
                          TBItem29.Enabled  := Rem4Fav2.Enabled;
                          TBItem5.Enabled   := Rem4Fav2.Enabled;

                          Add2Fav2.Enabled  := TBItemAddToFav3.Enabled; //(RowCount > 0) and (SelectedRow > -1 ) and (Cell[H_HIGHLIGHT, SelectedRow ].AsInteger <> 1  );
                          TBItem4.Enabled   := TBItemAddToFav3.Enabled;


                        end;    
                      end;    *)




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
var Hour, Min, Sec, MSec: Word;
begin
 // ReadLng('D:\Programing\LAB\LAB4\PR GreenNetwork\Lang\Russian.ini');

  FSupported:= False;
   Caption:= CapCap;

  CloseAppWhenItsDone := False;

  {NEW$}
  PRGameSpy          :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;
  PRFavorites        :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;
  PRPlayersOnline    :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;

  ServerListBuffer   :=   TStringList.Create;
  TempGameSpySrvList :=   TStringList.Create;
  FracFlagsList      :=   TStringList.Create;
  CountryCodeList    :=   TStringList.Create;
  ActiveThreading    :=   False;
  MainThreadsDone  := not ActiveThreading;
  PingsThreadsDone := True;

  GeoIP := TGeoIP.Create;
  LoadGeoIPdbFromRes(GeoIP);

  NxTabSheet5.PageVisible :=   False;   {//EDBUG}


  LoadOptions;


  {IMPROVEMENTS}
  LoadIMPS;



                  FHttpCli                 := THttpCli.Create(nil);
                  FHttpCli.RcvdStream      := TMemoryStream.Create;
                  FHttpCli.MultiThreaded   := True;
                  FHttpCli.FollowRelocation:= True;
                  FHttpCli.URL             := 'http://greennetwork.googlecode.com/svn/trunk/updates.xml';
                  FHttpCli.RequestVer      := '1.0';
                  FHttpCli.Timeout         := 3;

  MapsPaths              := TStringList.Create;
  if OptionsForm.PrPathEdit.text <> '' then
  BuildModMapsWays( ExtractFilePath( OptionsForm.PrPathEdit.text ),   MapsPaths);
  
  {Set Def Sort order for grids}
  if GlobalServersGrid.SortedColumn = nil then
  begin
   GlobalServersGrid.Columns[8].Sorted   := True;
   GlobalServersGrid.Columns[8].SortKind := skDescending;
  end;

  if GameSpyGrid.SortedColumn = nil then
  begin
   GameSpyGrid.Columns[8].Sorted   := True;
   GameSpyGrid.Columns[8].SortKind := skDescending;
  end;

  if PlayersGrid.SortedColumn = nil then
  begin
   PlayersGrid.Columns[10].Sorted   := True;
   PlayersGrid.Columns[10].SortKind := skAscending;
  end;

  if MatestGrid.SortedColumn = nil then
  begin
   MatestGrid.Columns[10].Sorted   := True;
   MatestGrid.Columns[10].SortKind := skAscending;
  end;


  NxTabSheet1.ImageIndex := 7;
    {New year}
    DecodeDate(Now, Hour, Min, Sec);
    if (Hour > 2009) and (Min in [12,1]) then
      if (Sec < 7) or (Min = 12) then
       NxTabSheet1.ImageIndex := 6;

  if FileExists(  ExtractFilePath(ParamStr(0)) + LASTKNOWNASS  ) then
  KnownServersGrid.LoadFromTextFile(ExtractFilePath(ParamStr(0)) + LASTKNOWNASS, ',', #19);
  ClearShits;


  LoadFlags;

  UseCountrys:= FileExists(ExtractFilePath(  ExcludeTrailingPathDelimiter( ExtractFilePath(OptionsForm.PrPathEdit.text) ) ) + BF2_MENULEVEL);
   
  AutoCheckForUPD; {}

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
var RTR: Integer;
begin
    ServerNo          := 0;
    GridIndexTag      := GridIndex;
    RowItemIndex      := ItemIndex;
    APings            := 0;
    BPings            := 0;
    DoneServersCount  := 0;
    TotalServersCount := 1;

    SpeedStartTime := Windows.GetTickCount;
    SpeedEndTime   := 0;

    AppStatus :=  [aProcessingSingleServer];

    if OptionsForm.updRetrySpin.Value >= 2 then RTR:=2 else RTR:= OptionsForm.updRetrySpin.Value;
    CreateQThread(0, IP, PORT, RTR);
end;



Procedure TForm1.StarMultiThreading(Slist: TStrings; const GridIndex: Integer = S_GAME_SPY);
begin

  ServerListBuffer.Clear;
  ServerListBuffer.AddStrings( Slist );
  SListStart;   //Or use comatext

  APings            := 0;
  BPings            := 0;
  DoneServersCount  := 0;
  TotalServersCount := ServerListBuffer.Count;

  GridIndexTag   := GridIndex;
  RowItemIndex   := SS_MULTI;

  NotifyForStart;


  case GridIndex of
   S_GAME_SPY   : AppStatus:=  [aProcessingGameSpy];
   S_FAVORITES  : AppStatus:=  [aProcessingFavorites];
   S_PRPONLINE  : AppStatus:=  [aProcessingPlayersOnline];
  end;


  ExecuteFirstWave;
 // ProcButtonsOnOff(False);
end;

procedure TForm1.ExecuteFirstWave;
var i, max: integer;   tmpIP, tmpPort : string;
begin

  if OptionsForm.threads.Value  > TotalServersCount then Max:= TotalServersCount else Max:= OptionsForm.threads.Value;

  ElapsedTime    := 0;
  SpeedStartTime := Windows.GetTickCount;
  for i:= 0 to max-1 do
  begin
    if SListNextServer(tmpIP,  tmpPort)  then
    CreateQThread(i, tmpIP, tmpPort, OptionsForm.updRetrySpin.Value);
  end;

end;
                   //  OptionsForm.updRetrySpin.Value
procedure TForm1.CreateQThread(ID: Integer; IP, QPort: string; const RetryCount: Integer = 0);
begin

       Application.ProcessMessages;
       BF2Thread[ID]:= TBF2WSockThread.Create(IP , QPort, ID);

       BF2Thread[ID].Timeout      := OptionsForm.TimeOutSpin.Value * 1000;
       BF2Thread[ID].Priority     := tpNormal;  // tpHigher;
       BF2Thread[ID].OnTerminate  := OnQThreadTerminate;
       BF2Thread[ID].RetryCount   := RetryCount;
       BF2Thread[ID].SkipSend     := TerminateProgress;

      Try
       BF2Thread[ID].Resume;
          except on EConvertError do
       begin
        BF2Thread[ID].Free;
        BF2Thread[ID] := nil;
       end;
      end;

end;


procedure TForm1.OnQThreadTerminate(Sender: TObject);
var A   : TBF2ServerInfoItem;
//    Inx : Integer;
    tmpIP, tmpPort : string;


    asc: Boolean;
begin
  Application.ProcessMessages;


  with (Sender as TBF2WSockThread) do
  begin



    if RowItemIndex = SS_MULTI then
    begin
            A := GetBF2List(GridIndexTag).AddServerInfo( RcvdBytes, ServerIP, QueryPort, StartQTime, EndQTime, LastError );

            { Retry }
            if (A.ErrorCode <= -1) and (OptionsForm.updRetrySpin.Value > 0) and (RetryCount > 0) then
            begin
              tmpIP    :=  A.ServerIP;
              tmpPort  :=  A.ServerQueryPort;
              GetBF2List(GridIndexTag).Delete( A.Index );
              CreateQThread(DeadID, tmpIP, tmpPort, Pred(RetryCount));
              Exit;
            end;

         {   LiveFavCb
            liveGSCb
            LivePoCb }
            {Live Resort}
            case GridIndexTag of
             1 : begin
                     GridAddServerInfo(    GetGrid(GridIndexTag), A );


                      if ProgressBar1.Position in [1..10, 20..30, 40..50, 60..70, 80..90, 90..100 ] then
                      if OptionsForm.LiveFavCb.checked and (not (GetGrid(GridIndexTag).SortedColumn = nil)) then
                      begin
                       asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
                       GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
                      end;

                 end;

             2 : begin
                     GridAddServerInfo(    GetGrid(GridIndexTag), A );

                     if ProgressBar1.Position in [10..15, 25..30, 45..50, 65..70, 85..90, 95..100 ] then
                      if OptionsForm.liveGSCb.checked and (not (GetGrid(GridIndexTag).SortedColumn = nil)) then
                      begin
                       asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
                       GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
                      end;

                   end;
             3   : begin
                     GridAddPlayersOnline( GetGrid(GridIndexTag), A );
                     
                    if ProgressBar1.Position in [1..10, 20..30, 40..50, 60..70, 80..90, 90..100 ] then
                      if OptionsForm.LivePoCb.checked and (not (GetGrid(GridIndexTag).SortedColumn = nil)) then
                      begin
                       asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
                       GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
                      end;
                   end;
            end;

               {If live resort}
             {   if (GridIndexTag in [1,2,3]) and (not (GetGrid(GridIndexTag).SortedColumn = nil)) then
                begin
                 asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
                 GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
                end; }

             if A.ErrorCode > -1 then
             begin
              //PingsThreadsDone := False;
              CreatePingQThread( ServerNo, A.Index , ServerIP );
              //Inc(PingsCount);
             end;

            Inc(DoneServersCount);
            ProgressBar1.Position:=   ((DoneServersCount * 100) div  (TotalServersCount)); //-1

            if SListNextServer(tmpIP, tmpPort )  then
            begin
               CreateQThread(DeadID, tmpIP, tmpPort, OptionsForm.updRetrySpin.Value  );
            end
             else
              begin
                NotifyForEnd(eMultiThScann);
              end;

             {
         if GridIndexTag = S_FAVORITES  then
         begin
           if GetGrid(GridIndexTag).SortedColumn = nil then Exit;
           asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
           GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
         end;    }

     end
     else  {SingleThread}
     begin
            // Inc(DoneServersCount);
             A := GetBF2List(GridIndexTag).UpdateServerInfo( RcvdBytes, ServerIP, QueryPort, RowItemIndex, StartQTime, EndQTime, LastError );
             GridAddServerInfo( GetGrid(GridIndexTag), A, RowItemIndex);
             if A.ErrorCode > -1 then
             begin
              CreatePingQThread( ServerNo, A.Index , ServerIP );
             end;

             NotifyForEnd(eSingleThScann);

     end;


  end;


   
end;

procedure TForm1.CreatePingQThread(ID, Tag: Integer; IP: string);
begin
 Application.ProcessMessages;
 BF2PingThread[ID] := TBF2PingThread.Create(IP, ID);
 BF2PingThread[ID].TimeOut      :=  1001;
 BF2PingThread[ID].Tag          :=  Tag;
 BF2PingThread[ID].Priority     :=  tpNormal;
 BF2PingThread[ID].OnTerminate  :=  OnPingQThreadTerminate;
 BF2PingThread[ID].Resume;
 Inc(APings);
end;

procedure TForm1.OnPingQThreadTerminate(Sender: Tobject);
begin
  with (Sender as TBF2PingThread) do
  begin
    GetBF2List(GridIndexTag).AnItems[Tag].Ping := RTT;
    ModifyGridPingValue(GetGrid(GridIndexTag), Tag, GetBF2List(GridIndexTag).AnItems[Tag]);
  end;
  Inc(BPings);
end;

procedure TForm1.NotifyForEnd( E : TAfterEvent );
var  GoodServers, tPlayers : Integer; asc: Boolean;   
begin

  if E = eMultiThScann then
   if DoneServersCount < TotalServersCount then Exit;

  SpeedEndTime := Windows.GetTickCount;
  ProgressBar1.Position:= 0;

  {New method for seaarching Collection}
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


  ElapsedTime := ElapsedTime + Round( ( SpeedEndTime - SpeedStartTime) div 1000);
  if ElapsedTime = 0 then ElapsedTime:= 1;
  if E = eMultiThScann then
  JvStatusBar1.Panels[2].Text := FormatDateTime('hh:nn:ss', Now ) + ' - ' + Format( GetWORD(121), [GoodServers, GetBF2List(GridIndexTag).Count, tPlayers]) + ' * ' +Format(GetWORD(170), [ElapsedTime]  );  //' - Done! ( Servers: ' + IntTostr(GoodServers) + ' of ' + IntTostr(GetBF2List(GridIndexTag).Count) + ')'  + ' / (TotalPlayers: ' + IntToStr(tPlayers) + ')';

  {FInal Resort}
  if E = eMultiThScann then
  begin
    if not (GetGrid(GridIndexTag).SortedColumn = nil) then
    begin
     asc:= GetGrid(GridIndexTag).SortedColumn.SortKind = skAscending;
     GetGrid(GridIndexTag).SortColumn(GetGrid(GridIndexTag).SortedColumn ,  asc );
    end;
  end else
  begin
    if not (GetGrid(GridIndexTag).SortedColumn = nil) then
    begin
       GetGrid(GridIndexTag).SelectedRow  := GetGrid(GridIndexTag).SelectedRow;
    end;
  end;


  InListServers( GetBF2List(GridIndexTag)  ); {test}
  WaitandSetControlsState;
end;


procedure TForm1.WaitandSetControlsState;
begin           
  CancelButton.Enabled := False;
  TBItem28.Enabled := False;
  Timer1.Enabled := True;
end;



Procedure TForm1.NotifyForStart;
begin
   JvStatusBar1.Panels[2].Text := GetWORD(122);//'Requesting servers information ...';
end;


{PR Players Online}
procedure TForm1.GetPROnlinePlayers;
var Str: AnsiString; inx : Integer;
begin
  AppStatus := AppStatus + [aRequestingFromGameSpy];
  JvStatusBar1.Panels[2].Text := GetWORD(123);//'Requesting servers list from GameSpy ...';
  TempGameSpySrvList.Clear;

  inx := GetGSSList(1, Str );
  Application.ProcessMessages;
  case inx of
   0      : begin
                if TerminateProgress then
                begin
                  if not ( aTerminateAppWhenProcsDone in AppStatus ) then
                  AppStatus := [aFree];
                  Exit;
                end;

                TempGameSpySrvList.Text := Str;
                StarMultiThreading( TempGameSpySrvList, S_PRPONLINE );
            end;
   1      : begin
              JvStatusBar1.Panels[2].Text := GetWORD(124);//'Received servers list empty!';
              AppStatus := [aFree];
              TerminateProgress := False;
              ProcButtonsOnOff(True);
            end;
   -1, -2 : begin
              JvStatusBar1.Panels[2].Text := Format(GetWORD(125), [inx]); //'Can''t connect to GameSpy! (ErrorCode: ' + IntToStr(inx) + ')' ;
              AppStatus := [aFree];
               TerminateProgress := False;
              ProcButtonsOnOff(True);
            end;
   -3, -4 : begin
               JvStatusBar1.Panels[2].Text := GetWORD(126);//'Can''t decrypt received data. Try again!';//     //'Access error in module "xdec.exe" (ErrorCode: ' + IntToStr(inx) + ')'  ;
               AppStatus := [aFree];
                TerminateProgress := False;
               ProcButtonsOnOff(True);
            end;
  end;


end;



{GameSpy}


procedure TForm1.GetGameSpyServers;
var Str: AnsiString;  inx : Integer;
begin         {
   ActiveThreading := True;
                MainThreadsDone  := not ActiveThreading;
              PingsThreadsDone := not ActiveThreading;   }
//   ProcButtonsOnOff(False);



   AppStatus := AppStatus + [aRequestingFromGameSpy];
   JvStatusBar1.Panels[2].Text := GetWORD(123);//'Requesting servers from GameSpy ...';
   TempGameSpySrvList.Clear;

  inx := GetGSSList(0, Str );
  Application.ProcessMessages;
  case inx of
   0      : begin
                if TerminateProgress then
                begin
                  if not ( aTerminateAppWhenProcsDone in AppStatus ) then
                  AppStatus := [aFree];
                  Exit;
                end;

                TempGameSpySrvList.Text := Str;
                StarMultiThreading( TempGameSpySrvList );
            end;
   1      : begin
             JvStatusBar1.Panels[2].Text := GetWORD(124); //'Received servers list empty!';
             AppStatus := [aFree];
              TerminateProgress := False;
              ProcButtonsOnOff(True);
             
            end;
   -1, -2 : begin
              JvStatusBar1.Panels[2].Text := Format(GetWORD(125), [inx]); //'Can''t connect to GameSpy! (ErrorCode: ' + IntToStr(inx) + ')' ;
              AppStatus := [aFree];
               TerminateProgress := False;
               ProcButtonsOnOff(True);

            end;
   -3, -4 : begin
               JvStatusBar1.Panels[2].Text := Format(GetWORD(127), [inx]);//'Access error in module "xdec.exe" (ErrorCode: ' + IntToStr(inx) + ')'  ;
               AppStatus := [aFree];
                TerminateProgress := False;
                ProcButtonsOnOff(True);

            end;
  end;


end;





procedure TForm1.Exit1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.Showapplication1Click(Sender: TObject);
begin
 JvTrayIcon1.ShowApplication;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
  var path : string;
begin
    path :=  ExtractFilePath(ParamStr(0){Application.ExeName})+'Settings.ini';
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
       {Update Click}
       OptionsForm.jvpnflstrg1.WriteBoolean('CLKCUPD', TBClickUpdate.Checked);
       {Map preview}
       OptionsForm.jvpnflstrg1.WriteBoolean('MAPPRV', TBItemMapPreview.Checked);

    end;



    {Test}
    PRGameSpy.Destroy;
    PRFavorites.Destroy;
    PRPlayersOnline.Destroy;
    ServerListBuffer.Free;
    TempGameSpySrvList.Free;
    MapsPaths.Free;
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
    var Row : Integer;  
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
var Item: TBF2ServerInfoItem;   asc: Boolean; mpath: string;
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

  {Resort }

   if (PlayersGrid.SortedColumn <> nil) and (PlayersGrid.RowCount > 0) then
   begin
     asc:= PlayersGrid.SortedColumn.SortKind = skAscending;
     PlayersGrid.SortColumn(PlayersGrid.SortedColumn ,  asc );
   end;
   
   if (MatestGrid.SortedColumn <> nil) and (MatestGrid.RowCount > 0) then
   begin
     asc:= MatestGrid.SortedColumn.SortKind = skAscending;
     MatestGrid.SortColumn(MatestGrid.SortedColumn ,  asc );
   end;

   {Load Map Review}
  // Edit1.Text :=  GetMapFilePath(Item.mapname, Item.gametype, item.maxplayers);

   mpath:= GetMapFilePath(Item.mapname, Item.gametype, item.maxplayers);

   if not FileExists( mpath ) and (Item.mapname <> '') then ShowNotInstalledMap else
   LoadImage( mpath );






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

      1,2,3,4,5,6,7  : if (ACol in [1,2])
                       then CellColor:= OptionsForm.MatesColorPicker.SelectedColor;

     end;

   //   if ( csSelected in CellState) and ( PlayersGrid.SelectedRow = Arow) then CellColor:=  $00DAC8C2;

end;

procedure TForm1.GameSpyGridCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
var str : string;
begin
 if not GameSpyGrid.RowExist(AROW) or (GameSpyGrid.SelectedRow = ARow) then Exit;


   str := GameSpyGrid.Cell[11, ARow].AsString;
   if (Str <> '0') and (Str <> '') and (ACol = 6) then
   CellColor:= OptionsForm.ServersColorPicker.SelectedColor;
// if ( csSelected in CellState) and ( GameSpyGrid.SelectedRow = Arow) then CellColor:=  $00DAC8C2;
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
  if GameSpyGrid.RowCount <= 0 then Exit;
 // GameSpyGrid.BeginUpdate;
//  GameSpyGrid.SetFocus;
 // GameSpyGrid.SelectedRow := 0;
  GameSpyGrid.ScrollToRow(0);
 // GameSpyGrid.RefreshRow(0);
 // GameSpyGrid.EndUpdate;
 
end;

procedure TForm1.GlobalServersGridAfterSort(Sender: TObject;
  ACol: Integer);
begin
  if GlobalServersGrid.RowCount <= 0 then Exit;
 //   GlobalServersGrid.BeginUpdate;
//  GlobalServersGrid.SetFocus;
 // GlobalServersGrid.SelectedRow := 0;
  GlobalServersGrid.ScrollToRow(0);
//  GlobalServersGrid.RefreshRow(0);
//  GlobalServersGrid.EndUpdate;
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
  //   if ( csSelected in CellState) and ( PROnlinePlayersGrid.SelectedRow = Arow) then CellColor:=  $00DAC8C2;
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

   {  case Trunc(PlayersGrid.Cell[9, ARow].AsFloat) of

      //0          :       ;
      1,2,3,4,6,7  : if (Frac(PlayersGrid.Cell[9, ARow].AsFloat) > 0) and (ACol in [1,2])
                    then FontStyle := FontStyle + [fsBold];
       

     end;  }

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
       {
     case Trunc(PlayersGrid.Cell[9, ARow].AsFloat) of
      1,2,3,4,6  : if (Frac(PlayersGrid.Cell[9, ARow].AsFloat) > 0) and (ACol in [1,2])
                    then FontStyle := FontStyle + [fsBold];
     end;
      }


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


    if (Cells[C_PING, ARow] = '2500') then
    TextColor := clMaroon;

    if Cell[5, ARow].asInteger <> 0 then
      TextColor := clMaroon;


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
            NG.BeginUpdate;
            NG.SetFocus;
            Result := False;
                 for i := FromRow to ToRow do
                 begin
                    if NG.RowVisible[i] then
                     if MatchSearchRequest(trim(Text), GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger], inHost) > -1
                      then
                      begin
                         NG.SelectedRow := I;
                         NG.ScrollToRow(i);
                         NG.RefreshRow(i);
                         Result:= True;
                         Break;
                      end;
                 end;
              NG.EndUpdate;
          end;


          function SearchNextNameType1(NG: TNextGrid; Text: string; StartRow, SearchIn, PlayerNO: Integer):Integer;
          var i, PlayerIndex: Integer;
          begin
             NG.BeginUpdate;
             NG.SetFocus;

            for i:= StartRow to NG.RowCount-1 do
            begin
                if NG.RowVisible[i]  then
                      PlayerIndex := MatchSearchRequest(trim(Text), GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger], SearchIn, PlayerNO);

                if PlayerIndex > -1 then
                begin
                  NG.SelectedRow := I;
                  NG.ScrollToRow(i);
                  NG.RefreshRow(i);
                  NxPageControl2.ActivePageIndex := 0;

                //OLD ONE  PlayersGrid.SearchNext(2, ExtractName(GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger].BF2Player[PlayerIndex].Name), true);
                  PlayersGrid.SearchNext(12, IntToStr(PlayerIndex), true);


                  Result:= PlayerIndex;
                  NG.EndUpdate;
                  Exit;
                end
                 else PlayerNO := 0;

            end;

              Result := -1;
              NG.EndUpdate;
          end;


          function SearchNextPROnline(Text: string; FromRow, SearchIn: Integer):boolean;
           var  i, v: Integer;
          begin
             PROnlinePlayersGrid.BeginUpdate;
             PROnlinePlayersGrid.SetFocus;
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
                         PROnlinePlayersGrid.RefreshRow(i);
                         Result:= True;
                         PROnlinePlayersGrid.EndUpdate;
                         Exit;
                      end;
                 end;
             PROnlinePlayersGrid.EndUpdate;

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

  //  AutoCheckForUPD;

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
  if SkinData1.Active then
  OptionsForm.FilterInspector.Style:= psOffice2010 else
   OptionsForm.FilterInspector.Style:=  psDefault;
end;

{****************************************************************************}
{****************************************************************************}
{****************************************************************************}
{****************************************************************************}
//                             RSS
{****************************************************************************}
{****************************************************************************}
{****************************************************************************}







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
var  dlink: string;
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
         Width    := 536;

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

begin

      With AboutForm do
      begin
       LogRichEdit.Lines.Clear;
       LogRichEdit.Lines.Add(GetWORD(160));//('Updates check!');
       LogRichEdit.Lines.Add(GetWORD(161));//('Connecting ...');  GetWORD
        FHttpCli.Abort;
                  try
                    FHttpCli.Get;
                    Application.ProcessMessages;
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

procedure TForm1.TBItem31Click(Sender: TObject);
begin
    {   NxTabSheet5.PageVisible                            := TRue;
       Form1.PROnlinePlayersGrid.Columns.Item[15].Visible := TRue;
       Form1.GameSpyGrid.Columns.Item[15].Visible         := TRue;
       Form1.GlobalServersGrid.Columns.Item[15].Visible   := TRue;

       Form1.PROnlinePlayersGrid.Columns.Item[14].Visible := TRue;
       Form1.GlobalServersGrid.Columns.Item[14].Visible   := TRue;
       Form1.GameSpyGrid.Columns.Item[14].Visible         := TRue;
       Form1.PlayersGrid.Columns.Item[9].Visible          := TRue;
       Form1.MatestGrid.Columns.Item[9].Visible           := TRue;
       Form1.MatestGrid.Columns.Item[12].Visible          := TRue;
       Form1.PlayersGrid.Columns.Item[12].Visible         := TRue;   }
end;

procedure TForm1.GridAfterSort(Sender: TObject; ACol: Integer);
begin

  with (Sender as TNextGrid) do
  begin
   if RowCount <= 0 then Exit;


  // BeginUpdate;
  //  SetFocus;
    ScrollToRow(0);
  //  SelectedRow := 0;
 //   RefreshRow(0);
 //  EndUpdate;
  end;

end;


{
********************************************************************
********************************************************************
********************************************************************
********************************************************************

 DDS

********************************************************************
********************************************************************
********************************************************************
********************************************************************
}

procedure TForm1.LoadImage(MFile: String);
var
  I: LongInt;
 // T: Int64;
begin
  try
    if Imaging.DetermineFileFormat(MFile) <> '' then
    try
      // Load all subimages in file
    //  T := ImagingUtility.GetTimeMicroseconds;


     // Imaging.FindImageFileFormatByName('ja.dds')
      FImage.LoadMultiFromFile(MFile);

    //  FImage.FormatInfo.Format


      if not FImage.AllImagesValid then
      begin
        SetUnsupported;
        Exit;
      end;
      //FSupported := True;
     
     { // Store original data formats for later use   
      SetLength(FOriginalFormats, FImage.ImageCount);
      for I := 0 to FImage.ImageCount - 1 do
      begin
        FImage.ActiveImage := I;
        FOriginalFormats[I] := FImage.Format;
        // Convert image to 32bit ARGB format if current format is not supported
        // by canvas class
        if not (FImage.Format in TImagingCanvas.GetSupportedFormats) then
          FImage.Format := ifA8R8G8B8;
      end;
           }
     // TImagingCanvas.GetSupportedFormats



      SetLength(FOriginalFormats, FImage.ImageCount);
    //  SetLength(FOriginalSizes, FImage.ImageCount);

      for I := 0 to FImage.ImageCount - 1 do
      begin
        FImage.ActiveImage := I;
        FOriginalFormats[I] := FImage.Format;
      //  FOriginalSizes[I] := FImage.Size;
        // Convert image to 32bit ARGB format if current format is not supported
        // by canvas class
        if not (FImage.Format in TImagingCanvas.GetSupportedFormats) then
          FImage.Format := ifA8R8G8B8;
      end;



                                         {
      FImage.ActiveImage := 1;
      FImage.Format      := ifDefault;    }

      // Activate first image and update UI
      FImage.ActiveImage := 0;
    //  SetSupported;
      FSupported := True;
      PaintBox.Repaint;
    except
      SetUnsupported;
     // raise;
    end
    else
      SetUnsupported;
  except
    SetUnsupported;
  end;
end;



procedure TForm1.SetUnsupported;
//var
//  X, Y, Step: LongInt;
begin

  if Assigned(FImage) then
  begin
    FImage.CreateFromParams(CheckersDensity, CheckersDensity, ifA8R8G8B8, 1);
    FImageCanvas.Free;
    FImageCanvas := FindBestCanvasForImage(FImage).CreateForImage(FImage);
    FSupported := False;
      {
    Step := FImage.Width div CheckersDensity;
    for Y := 0 to CheckersDensity - 1 do
      for X := 0 to CheckersDensity - 1 do
      begin
        FImageCanvas.FillColor32 := IffUnsigned((Odd(X) and not Odd(Y)) or (not Odd(X) and Odd(Y)),
          pcWhite, pcBlack);
        FImageCanvas.FillRect(Rect(X * Step, Y * Step, (X + 1) * Step, (Y + 1) * Step));
      end;  }
  end;
  // Paint current image
  PaintBox.Repaint;
end;

procedure TForm1.FillDefault;
begin
  // Fill background canvas with default color
  FBackCanvas.FillColor32 := FillColor;
  FBackCanvas.FillRect(Rect(0, 0, FBack.Width, FBack.Height));
end;

procedure TForm1.PaintBoxPaint(Sender: TObject);
var
  R: TRect;
  Filter: TResizeFilter;
begin
  // Fill background with default color
  //FillDefault;
    FBackCanvas.FillColor32 := FillColor;
    FBackCanvas.FillRect(Rect(0, 0, FBack.Width, FBack.Height));

  // Determine which stretching filter to use
  if FSupported then
    Filter := rfBicubic
  else Filter := rfNearest;



  // Scale image to fit the paint box
  R := ImagingUtility.ScaleRectToRect(FImage.BoundsRect, PaintBox.ClientRect);
  // Create canvas for current image frame
  FImageCanvas.Free;
  FImageCanvas := FindBestCanvasForImage(FImage).CreateForImage(FImage);
  // Stretch image over background canvas
  FImageCanvas.StretchDrawAlpha(FImage.BoundsRect, FBackCanvas, R, Filter);
  ImagingComponents.DisplayImage(PaintBox.Canvas, PaintBox.BoundsRect, FBack);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FImage         := TMultiImage.Create;
  FImageCanvas   := TImagingCanvas.Create;
  FBack          := TSingleImage.CreateFromParams(128, 128, ifA8R8G8B8);
  FBackCanvas    := FindBestCanvasForImage(FBack).CreateForImage(FBack);
  SetUnsupported;
  AppStatus      := [aFree];
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  CountryCodeList.Free;
  FracFlagsList.Free;
  FImage.Free;
  FImageCanvas.Free;
  FBack.Free;
  FBackCanvas.Free;
end;

procedure TForm1.mapPanelResize(Sender: TObject);
begin
  // Resize background image to fit the paint box
  if (PaintBox.ClientWidth < 1) or (PaintBox.ClientHeight  < 1 )then
  Exit;

  FBack.Resize(PaintBox.ClientWidth, PaintBox.ClientHeight, rfNearest);
  // Update back canvas state after resizing of associated image
  FBackCanvas.UpdateCanvasState;
end;


procedure TForm1.TBItemMapPreviewClick(Sender: TObject);
begin
   if not TBItemMapPreview.Checked then
   JvNetscapeSplitter1.Maximized := True else JvNetscapeSplitter1.Maximized := False;

end;

procedure TForm1.JvNetscapeSplitter1CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin                { }
    if JvNetscapeSplitter1.Maximized  then TBItemMapPreview.Checked := True else
    if NewSize = 1 then TBItemMapPreview.Checked := False;
    Accept:= True;
end;

procedure TForm1.CancelButtonClick(Sender: TObject);
begin
  AbortProcessing;
end;

procedure TForm1.ProcButtonsOnOff(B: Boolean );
begin
   TBItem1.Enabled      := B and (OptionsForm.NextGridFavServers.RowCount > 0);
   TBItem11.Enabled     := TBItem1.Enabled;




   TBItem2.Enabled      := B;
   TBItem3.Enabled      := B;
   TBItem11.Enabled     := B;
   TBItem10.Enabled     := B;
   TBItem20.Enabled     := B;
   CancelButton.Enabled := not B;
   TBItem28.Enabled     := not B;
   TBItem6.Enabled      := B;

   {UPD BUTTON}
   TBItem7.Enabled := B;
   TBItemRefresh.Enabled := B;
   
                        {TEMP##}
   TBItem4.Enabled := B;
   TBItem5.Enabled := B;
   if  B then
   OnPopup(self);
end;


procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
       {
  if ActiveThreading then
  begin
     CanClose:= False;
     CancelButton.Click;
     CloseAppWhenItsDone:= True;
  end;
      }
  if AppStatus = [aFree] then begin
   CanClose := True;
   Exit;
   end;



  CanClose:= False;
  AppStatus := AppStatus + [aTerminateAppWhenProcsDone];
  if aAborting in AppStatus then Exit;

  AbortProcessing;


end;



Procedure TForm1.AbortProcessing;
var max, i : Integer;
begin


     if AppStatus = [aFree] then Exit;
     if aAborting in AppStatus then Exit;
     if aProcessingSingleServer in AppStatus then Exit;

     AppStatus := AppStatus + [aAborting];
     Timer2.Enabled := True;

     JvStatusBar1.Panels[2].Text := GetWORD(171);
     CancelButton.Enabled := False;
     TBItem28.Enabled := False;

     TerminateProgress := True;
     Application.ProcessMessages;
         {
     if (aRequestingFromGameSpy in AppStatus) then
     begin
        

     end;
          }

     if (aProcessingFavorites in AppStatus) or (aProcessingGameSpy in AppStatus) or
       (aProcessingPlayersOnline in AppStatus) 
     then
     begin

        if OptionsForm.threads.Value  > TotalServersCount then Max:= TotalServersCount else Max:= OptionsForm.threads.Value;
        for i:= max-1 downto 0 do
        begin
          if Assigned(BF2Thread[I]) then
          begin
           if BF2Thread[I].SkipSend = False and BF2Thread[I].TimeOutTimerOn then
            BF2Thread[I].ThStop(ERC_ABORT);
          end;
         end;

     end;

     if (aTerminateAppWhenProcsDone in AppStatus) then
     Timer2.Enabled := True;

end;




procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if APings <> BPings then Exit;
   Timer1.Enabled    := False;
   AppStatus         := [aFree];
   TerminateProgress := False;
   ProcButtonsOnOff(True);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if (aTerminateAppWhenProcsDone in AppStatus) then
  begin
    Timer2.Enabled := False;
    AppStatus := [aFree];
    Application.Terminate;
  end;

  if AppStatus = [aFree] then
  begin
   Timer2.Enabled := False;
   ProcButtonsOnOff(True);
   JvStatusBar1.Panels[2].Text := ''; //GameSpy request aborted
  end;

end;


procedure TForm1.ShowNotInstalledMap;
var
  z: TVCLUnZip;
  s: TMemoryStream;
begin

  if not FileExists(ExtractFilePath(OptionsForm.PrPathEdit.text) + PR_MENULEVEL) then begin SetUnsupported; Exit; end;

  s:= TMemoryStream.Create;
  z:= TVCLUnZip.Create(Self);
  z.ZipName := ExtractFilePath(OptionsForm.PrPathEdit.text) + PR_MENULEVEL;
  try
   z.UnZipToStream( s, BF2_MOD_PR_MAPNOTINST);

   s.Position := 0;
   FImage.LoadMultiFromStream(s);

      if not FImage.AllImagesValid then
      begin
        SetUnsupported;
        Exit;
      end;

      FImage.ActiveImage := 1;
      FImage.Format      := ifDefault;
      FImage.ActiveImage := 0;
      PaintBox.Repaint;
  except
  end;
      s.Free;
     z.Free;
end;




procedure TForm1.LoadFlags;

procedure LoadFlagsToList(const ZipFile: string; iList: TPngImageList);
var
  z         : TVCLUnZip;
  s         : TMemoryStream;
  PNGStrm   : TMemoryStream;
  i         : integer;
  FlagImages: TImageData;

  NewWidth,
  NewHeight : LongInt;
begin
  //  FracFlagsList := TStringList.Create;
    iList.PngImages.BeginUpdate;

    InitImage(FlagImages);
    s       := TMemoryStream.Create;
    PNGStrm := TMemoryStream.Create;
    z:= TVCLUnZip.Create(Self);
    try
     z.ZipName := ZipFile;
     z.ReadZip;

     for i:=0 to z.Count-1 do
     begin
       if WideLowerCase(z.Pathname[i]) = MOD_JOINGAME_DIR then
       begin
         if PosEx('flag_', WideLowerCase(z.Filename[i]) ) = 1 then
         begin    (*_*)

           PNGStrm.Clear;
           s.Clear;

           {Unzip to stream}
           z.UnZipToStream( s, z.Pathname[i] + z.Filename[i] {'flag_US.png'} );
           {Load From Stream}
           S.Position:= 0;
           Imaging.LoadImageFromStream( s, FlagImages);
           {Resize}
           NewWidth  :=  17;
           NewHeight :=  12;
           Imaging.ResizeImage(FlagImages, NewWidth, NewHeight, rfBilinear {rfNearest});
           {Convert to PNG Stream}
           Imaging.SaveImageToStream('png', PNGStrm, FlagImages );

           {Add PNG Stream to PngImageLIst}
           PNGStrm.Position:=0;
           iList.PngImages.Add.PngImage.LoadFromStream(PNGStrm);
           {  or
           with iList.PngImages.Add() do
           begin
             PngImage.LoadFromStream(PNGStrm);
           end;
            }
           FracFlagsList.Add( LowerCase(z.Filename[i]) );

         end;
       end;
     end;

    finally
      PNGStrm.Free;
      Imaging.FreeImage(FlagImages);
      s.Free;
      z.Free;
    end;

    iList.PngImages.EndUpdate;
end;

begin
    if not FileExists(ExtractFilePath(OptionsForm.PrPathEdit.text) + PR_MENULEVEL) then Exit;
    if not FileExists(ExtractFilePath(  ExcludeTrailingPathDelimiter( ExtractFilePath(OptionsForm.PrPathEdit.text) ) ) + BF2_MENULEVEL) then Exit;

    FracFlagsList.Clear;
    FlagsPngList.PngImages.Clear;

    LoadFlagsToList(  ExtractFilePath(OptionsForm.PrPathEdit.text) + PR_MENULEVEL , FlagsPngList );
    LoadFlagsToList(  ExtractFilePath(  ExcludeTrailingPathDelimiter( ExtractFilePath(OptionsForm.PrPathEdit.text) ) ) + BF2_MENULEVEL, FlagsPngList  );
end;


function TForm1.GetFractionFlagImageIndexByTeamName(TeamName: string):Integer;
begin
  if LowerCase(TeamName) = 'us' then TeamName:= 'usa';
  Result:= FracFlagsList.IndexOf( 'flag_'+LowerCase( TeamName )+'.png' );
end;



function TForm1.GetCountryIndex(code: string):Integer;


   function AddFlagToImageList(zipfile, code: string; iList: TPngImageList):boolean;
   var
    z         : TVCLUnZip;
    s         : TMemoryStream;
    PNGStrm   : TMemoryStream;
    i         : integer;
    FlagImages: TImageData;

    NewWidth,
    NewHeight : LongInt;
   begin
    iList.PngImages.BeginUpdate;

    Result:=True;

    InitImage(FlagImages);
    s       := TMemoryStream.Create;
    PNGStrm := TMemoryStream.Create;
     z:= TVCLUnZip.Create(Self);
      z.ZipName := ZipFile;
      z.ReadZip;
    try


           PNGStrm.Clear;
           s.Clear;
           {Unzip to stream}
           z.UnZipToStream( s, 'external\flashmenu\images\flags\' + code + '.png');
           if s.Size > 0 then
           begin
            {Load From Stream}
            S.Position:= 0;
            Imaging.LoadImageFromStream( s, FlagImages);
            {Resize}
            NewWidth  :=  15;
            NewHeight :=  12;
            Imaging.ResizeImage(FlagImages, NewWidth, NewHeight, rfBilinear{rfNearest});
            {Convert to PNG Stream}
            Imaging.SaveImageToStream('png', PNGStrm, FlagImages );

            {Add PNG Stream to PngImageLIst}
            PNGStrm.Position:=0;
            iList.PngImages.Add.PngImage.LoadFromStream(PNGStrm);

            CountryCodeList.Add( code );
           end else Result:=False;

    finally
      PNGStrm.Free;
      Imaging.FreeImage(FlagImages);
      s.Free;
      z.Free;
    end;

    iList.PngImages.EndUpdate;
   end;


var i: Integer;
begin

 
 Result:= -1;
 if not UseCountrys then Exit;

 Result:= CountryCodeList.IndexOf( LowerCase( code )  );
 if Result > -1 then Exit;

 if AddFlagToImageList(
   ExtractFilePath(  ExcludeTrailingPathDelimiter( ExtractFilePath(OptionsForm.PrPathEdit.text) ) ) + BF2_MENULEVEL,
                                                                                                    LowerCase(code),
                                                                                                    CountryImageList
                     ) then Result:= CountryCodeList.IndexOf( LowerCase( code ) );
end;






procedure TForm1.GlobalServersGridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
   with (Sender as TNextGrid) do
  begin
    if not RowExist(AROW) then Exit;
    

     if (Cells[C_PING, ARow] = '2500') then
    TextColor := clMaroon;

    if Cell[5, ARow].asInteger <> 0 then
      TextColor := clMaroon;

  end;
end;

procedure TForm1.MatestGridCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
// if ( csSelected in CellState) and ( MatestGrid.SelectedRow = Arow) then CellColor:=  $00DAC8C2;
end;





{*****************************************************************************}

{*****************************************************************************}
                                {}
{*****************************************************************************}

{*****************************************************************************}
{*****************************************************************************}

{*****************************************************************************}
                                {}
{*****************************************************************************}

{*****************************************************************************}
{*****************************************************************************}

{*****************************************************************************}
                                {}
{*****************************************************************************}

{*****************************************************************************}
{*****************************************************************************}

{*****************************************************************************}
                                {}
{*****************************************************************************}

{*****************************************************************************}
{*****************************************************************************}

{*****************************************************************************}
                                {}
{*****************************************************************************}

{*****************************************************************************}






procedure TForm1.PlayerNamePopupPopup(Sender: TObject);
var Row : Integer;  MiNdex: Double;
begin


   CopyTextItem.Enabled := False;
   PrefixesItem.Enabled := False;
   NamesItem.Enabled    := False;
   TagsItem.Enabled     := False;
   TBItemAdToBodyList.Enabled     := False;

   PrefixesItem.Options := [];
   NamesItem.Options    := [];
   TagsItem.Options     := [];


        With  GetPInfoGrid(NxPageControl2.ActivePageIndex) do
        begin
          if not  ((RowCount > 0) and (SelectedRow > -1)) then Exit;

           CopyTextItem.Enabled := True;
           TBItemAdToBodyList.Enabled     := True;

           TBItemCopyname.Enabled     := True;
           TBItemPlayerNote.Enabled  := Trim(Cells[11, SelectedRow]) <> '';
           TBItemCopyCell.Enabled    := Cells[SelectedCell.X  , SelectedCell.Y] <> '';


           if Cell[10, SelectedRow].AsInteger = 8 {BOT} then Exit;

           MiNdex := Cell[9, SelectedRow].AsFloat;

           {Prefix}
           if (Cells[1, SelectedRow] <> '') then
           begin
            PrefixesItem.Enabled:= True;
            TBItemPrfixA.Enabled  := not ( Trunc(MiNdex) in [7,3,2,6] );
            TBItemPrefixE.Enabled := ( Trunc(MiNdex) in [7,3,2,6] );
            TBItemPrefixD.Enabled := ( Trunc(MiNdex) in [7,3,2,6] );
            if TBItemPrefixE.Enabled then
            PrefixesItem.Options:= [tboDefault];
           end;

           
           {name}
           if (Cells[2, SelectedRow] <> '') then
           begin
            NamesItem.Enabled    := True;

            TBItemNameA.Enabled  := not ( Trunc(MiNdex) in [1,3,7] );
            TBItemNameE.Enabled  := ( Trunc(MiNdex) in [1,3,7] );
            TBItemNameD.Enabled  := ( Trunc(MiNdex) in [1,3,7] );

            if TBItemNameE.Enabled then
            NamesItem.Options:= [tboDefault];

           {tag}
           TagsItem.Enabled     := True;
           TBItemTagsA.Enabled  := True;

           TBItemTagsD.Enabled  := ( Trunc(MiNdex) in [4,5,7,6] );
           TBItemTagsE.Enabled  := ( Trunc(MiNdex) in [4,5,7,6] );
            if TBItemTagsD.Enabled then
            TagsItem.Options:= [tboDefault];

           end;

        end;
end;

procedure TForm1.PlayernamePopupActionClick(Sender: TObject);
var Anum, ActGridIndex: Integer;   Str: string; Minx: Double;
begin



  ActGridIndex       :=   Succ(NxPageControl1.ActivePageindex);

  with GetPInfoGrid(NxPageControl2.ActivePageIndex) do
  begin
      if not  ((RowCount > 0) and (SelectedRow > -1)) then Exit;
     Minx := Cell[9, SelectedRow].AsFloat;
  end;


  case (Sender as TComponent).Tag of




   0: ;
   1:   begin   {
         Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;
           }

                      with  GetPInfoGrid(NxPageControl2.ActivePageIndex) do
                      begin
                        Str:= Trim(Trim(Cells[1, SelectedRow]) + ' ' + Trim(Cells[2, SelectedRow]));
                        Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
                        Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);
                      end;

           if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
        end;

   2:   with GetPInfoGrid(NxPageControl2.ActivePageIndex)  do
        begin
         Str:=  Cells[11, SelectedRow]  ;

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
        end;

   3:   with GetPInfoGrid(NxPageControl2.ActivePageIndex)  do
        begin
         Str:=  Cells[SelectedCell.X, SelectedCell.Y]  ;

         {REMOVE TAGS «b»%s«/b»}
         Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
         Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
        end;


     {Add edit:  Prefix, Name, Tag}
   4,5,6,7,8,9:  begin
                      with  GetPInfoGrid(NxPageControl2.ActivePageIndex) do
                      begin
                        Str:= Trim(Trim(Cells[1, SelectedRow]) + ' ' + Trim(Cells[2, SelectedRow]));
                        Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
                        Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);
                      end;

                       with Form3 do
                       begin
                         PlayerName := Str;

                         if (Sender as TComponent).Tag >= 7 then
                         Mode:= 1 else Mode := 0;
                       

                         case (Sender as TComponent).Tag of
                          4,7 : Section := 0;
                          5,8 : Section := 1;
                          6,9 : Section := 2;
                         end;
                         // 0 - PRefix 1 - Pname - 2 - Tag

                         Mateindex  := Minx;
                         ClearEdits;
                         ShowModal;
                       end;

                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);
       end;
     11, 10, 12 :
       {Delete DeleteBuddyzz() }
                 Begin

                      with  GetPInfoGrid(NxPageControl2.ActivePageIndex) do
                      begin

                        if (Sender as TComponent).Tag = 10 then
                        Str:= Trim(Cells[1, SelectedRow]) else
                         Str:=  Trim(Cells[2, SelectedRow]);

                        Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
                        Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

                         case (Sender as TComponent).Tag of
                          10 : OptionsForm.DeleteBuddyzz(1,Str);
                          11 : OptionsForm.DeleteBuddyzz(2,Str);
                          12 : OptionsForm.DeleteBuddyzz(3,Str);
                         end;

                       end;

                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);
                 end;

  end;



  

end;

procedure TForm1.RadioButtonServerNameClick(Sender: TObject);
var i: Integer;
begin
    TBSubmenuItem8.Caption := GetWORD(115);
    for i:=0 to TBSubmenuItem8.Count-1 do
    if TBSubmenuItem8.Items[i].Checked then
    TBSubmenuItem8.Caption :=  TBSubmenuItem8.Caption + ': ' + TBSubmenuItem8.Items[i].Caption;

end;

procedure TForm1.OnlinePlayersPopupMenuActClick(Sender: TObject);
var Anum, ActGridIndex: Integer;   Str: string; Minx: Double;
begin




  ActGridIndex       :=   Succ(NxPageControl1.ActivePageindex);
     {
  with GetPInfoGrid(NxPageControl2.ActivePageIndex) do
  begin
      if not  ((RowCount > 0) and (SelectedRow > -1)) then Exit;
     Minx := Cell[9, SelectedRow].AsFloat;
  end;
    }

  case (Sender as TComponent).Tag of




   0: ;
   1:   begin  {
         Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].
                                                  BF2Player[GetPInfoGrid(NxPageControl2.activePageindex).Cell[12, GetPInfoGrid(NxPageControl2.activePageindex).SelectedRow].AsInteger].Name;
            }

                      with  GetGrid(ActGridIndex) do
                      begin
                        Str:= Trim(Trim(Cells[1, SelectedRow]) + ' ' + Trim(Cells[2, SelectedRow]));
                        Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
                        Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);
                      end;

           if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
        end;

   2:   with GetGrid(ActGridIndex)  do
        begin
         Str:=  Cells[16, SelectedRow]  ;

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
        end;

   3:   with GetGrid(ActGridIndex)  do
        begin
         Str:=  Cells[SelectedCell.X, SelectedCell.Y]  ;

         {REMOVE TAGS «b»%s«/b»}
         Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
         Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
        end;


     {Add edit:  Prefix, Name, Tag}
   4,5,6,7,8,9:  begin
                      with  GetGrid(ActGridIndex) do
                      begin
                        Str:= Trim(Trim(Cells[1, SelectedRow]) + ' ' + Trim(Cells[2, SelectedRow]));
                        Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
                        Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);
                      end;

                       with Form3 do
                       begin
                         PlayerName := Str;

                         if (Sender as TComponent).Tag >= 7 then
                         Mode:= 1 else Mode := 0;
                       

                         case (Sender as TComponent).Tag of
                          4,7 : Section := 0;
                          5,8 : Section := 1;
                          6,9 : Section := 2;
                         end;
                         // 0 - PRefix 1 - Pname - 2 - Tag

                         Mateindex  := Minx;
                         ClearEdits;
                         ShowModal;
                       end;

                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);
       end;
     11, 10, 12 :
       {Delete DeleteBuddyzz() }
                 Begin

                      with  GetGrid(ActGridIndex) do
                      begin

                        if (Sender as TComponent).Tag = 10 then
                        Str:= Trim(Cells[1, SelectedRow]) else
                         Str:=  Trim(Cells[2, SelectedRow]);

                        Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
                        Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

                         case (Sender as TComponent).Tag of
                          10 : OptionsForm.DeleteBuddyzz(1,Str);
                          11 : OptionsForm.DeleteBuddyzz(2,Str);
                          12 : OptionsForm.DeleteBuddyzz(3,Str);
                         end;

                       end;

                        GridPlayersMatesSilentMIndexUpdate( GetGrid(ActGridIndex), GetPInfoGrid(P_ALLPLAYERS),GetPInfoGrid(P_MATES), GetBF2List(ActGridIndex) );
                        GridSilentUpdateMatesCount(GetGrid(ActGridIndex));
                        GridPOSilentUpdateMates(PROnlinePlayersGrid);
                 end;

  end;



  

end;

procedure TForm1.OnlinePlayersPopupMenuPopup(Sender: TObject);
var Row, ActGridIndex : Integer;  MiNdex: Integer;
begin

   TBSubmenuItem1.Enabled := False;
   CopyTextItemPO.Enabled := False;
   PrefixesItemPO.Enabled := False;
   NamesItemPO.Enabled    := False;
   TagsItemPO.Enabled     := False;
   TBItemAdToBodyListPO.Enabled     := False;

   PrefixesItemPO.Options := [];
   NamesItemPO.Options    := [];
   TagsItemPO.Options     := [];

   ActGridIndex       :=   Succ(NxPageControl1.ActivePageindex);

        With  GetGrid(ActGridIndex) do
        begin
          if not  ((RowCount > 0) and (SelectedRow > -1)) then Exit;

           TBSubmenuItem1.Enabled := True;
           CopyTextItemPO.Enabled := True;
           TBItemAdToBodyListPO.Enabled     := True;

           TBItemCopynamePO.Enabled     := True;
           TBItemPlayerNotePO.Enabled  := Trim(Cells[16, SelectedRow]) <> '';
           TBItemCopyCellPO.Enabled    := Cells[SelectedCell.X  , SelectedCell.Y] <> '';


          // if Cell[5, SelectedRow].AsInteger = 8 {BOT} then Exit;
          //  yyyyyyyyyyyyyyy
            
          // MiNdex := Cell[9, SelectedRow].AsFloat;

           MiNdex :=  GetEntryValueI( PROnlinePlayersGrid.Cells[C_PO_CMD, SelectedRow], Entry_MATEINDEX, '/');

           {Prefix}
           if (Cells[1, SelectedRow] <> '') then
           begin
            PrefixesItemPO.Enabled:= True;
            TBItemPrfixAPO.Enabled  := not ( MiNdex in [7,3,2,6] );
            TBItemPrefixEPO.Enabled := ( MiNdex in [7,3,2,6] );
            TBItemPrefixDPO.Enabled := ( MiNdex in [7,3,2,6] );
            if TBItemPrefixEPO.Enabled then
            PrefixesItemPO.Options:= [tboDefault];
           end;


           {name}
           if (Cells[2, SelectedRow] <> '') then
           begin
            NamesItemPO.Enabled    := True;

            TBItemNameAPO.Enabled  := not ( MiNdex in [1,3,7] );
            TBItemNameEPO.Enabled  := ( MiNdex in [1,3,7] );
            TBItemNameDPO.Enabled  := ( MiNdex in [1,3,7] );

            if TBItemNameEPO.Enabled then
            NamesItemPO.Options:= [tboDefault];

           {tag}
           TagsItemPO.Enabled     := True;
           TBItemTagsAPO.Enabled  := True;

           TBItemTagsDPO.Enabled  := ( MiNdex in [4,5,7,6] );
           TBItemTagsEPO.Enabled  := ( MiNdex in [4,5,7,6] );
            if TBItemTagsDPO.Enabled then
            TagsItemPO.Options:= [tboDefault];

           end;
           (**)

        end;
end;

procedure TForm1.SettingsGotoClick(Sender: TObject);
begin
  OptionsForm.JvPageList1.ActivePageIndex := 3;
  OptionsForm.JvPageListTreeView1.Items.Item[8].Selected:=True;
  OptionsForm.ShowModal;
end;



{*****************************************************************************}

{*****************************************************************************}
                                {}
{*****************************************************************************}

{*****************************************************************************}


procedure TForm1.InListServers( SList: TBF2ServerSList);

function GetLastknownIndex(ipqport:string):Integer;
var Str: string;
begin
  Result:= -1;
  
  if KnownServersGrid.RowCount <= 0 then Exit;
  for Result:= KnownServersGrid.RowCount -1 downto 0 do
  begin
    Str:= KnownServersGrid.Cells[0, Result];
    if StrCompare(Str, ipqport) = 0 then
    Exit;
  end;
  Result:= -1;
end;


var i, AROW: Integer;
begin
  //GetBF2List( i: Integer): TBF2ServerSList;
  Application.ProcessMessages;
  KnownServersGrid.BeginUpdate;
  for i:=Slist.Count-1 downto 0  do
  begin

    if SList.AnItems[i].ErrorCode <= -1 then
    begin  {Bad}  {Без Qport}

        if SList.AnItems[i].ServerQueryPort <> '' then
         AROW:=GetLastknownIndex(SList.AnItems[i].ServerIP+':'+SList.AnItems[i].ServerQueryPort);

        if AROW > -1 then
        begin
           if KnownServersGrid.Cell[3 ,AROW].AsInteger > 16 then
           begin
            KnownServersGrid.DeleteRow(AROW);
            Continue;
           end;


           if cDateTime.DiffDays(Now, KnownServersGrid.Cell[2,AROW].AsDateTime) <>  0 then
            KnownServersGrid.Cell[3 ,AROW].AsInteger := Succ(KnownServersGrid.Cell[3 ,AROW].AsInteger);


        end;

    end else
    begin

         AROW:=GetLastknownIndex(SList.AnItems[i].ServerIP+':'+SList.AnItems[i].ServerQueryPort);
         if  AROW <= -1 then
         AROW:=KnownServersGrid.AddRow;


         KnownServersGrid.Cells[0, AROW]           := SList.AnItems[i].ServerIP+':'+SList.AnItems[i].ServerQueryPort;
         KnownServersGrid.Cells[1 ,AROW]           := SList.AnItems[i].hostname;
         KnownServersGrid.Cell[2, AROW].AsDateTime := Now;
         KnownServersGrid.Cell[3 ,AROW].AsInteger  := 0;

    end;


  end;
  KnownServersGrid.EndUpdate;
  KnownServersGrid.SaveToTextFile(LASTKNOWNASS, ',', #19);

end;


procedure TForm1.ClearShits;
var Str: string; i: Integer;
begin
   if KnownServersGrid.RowCount <= 0 then Exit;

  for i:= KnownServersGrid.RowCount -1 downto 0 do
  begin
    if (Trim(KnownServersGrid.Cells[0, i])= '') or  (Trim(KnownServersGrid.Cells[1, i]) = '')
    or  ((KnownServersGrid.RowCount > 200) and (cDateTime.DiffMonths(Now, KnownServersGrid.Cell[2, i].AsDateTime) >= 2)) then
      KnownServersGrid.DeleteRow(i);
  end;

end;


function TForm1.GetLastknown(ipqport:string):string;
var Str: string;  i: Integer;
begin
  Result:='';
  if KnownServersGrid.RowCount <= 0 then Exit;
  for i:=0 to KnownServersGrid.RowCount -1 do
  begin
    Str:= KnownServersGrid.Cells[0, i];
      if StrCompare(Str, ipqport) = 0 then
      begin
       Result:= KnownServersGrid.Cells[1, i];
       Exit;
      end;
  end;
  Str:='';
end;












procedure TForm1.UpdateFavBtnEn;
begin
   TBItem1.Enabled      := (OptionsForm.NextGridFavServers.RowCount > 0);
   TBItem11.Enabled     := TBItem1.Enabled;
end;

{Временное решение}
procedure TForm1.TBItem33Click(Sender: TObject);
var Str : string;
begin
         with  GetGrid(Succ(NxPageControl1.ActivePageindex)) do
         begin
         Str:=  Cells[SelectedCell.X, SelectedCell.Y]  ;

         {REMOVE TAGS «b»%s«/b»}
         Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
         Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
         end;

end;

procedure TForm1.TBItem35Click(Sender: TObject);
var Str : string;
begin
         with  GetGrid(Succ(NxPageControl1.ActivePageindex)) do
         begin
         Str:=  Cells[6, SelectedCell.Y]  ;

         {REMOVE TAGS «b»%s«/b»}
         Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
         Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
         end;

end;

procedure TForm1.TBItem34Click(Sender: TObject);
var Str : string;
begin
         with  GetGrid(Succ(NxPageControl1.ActivePageindex)) do
         begin
         Str:=  Cells[16, SelectedCell.Y]  ;

         {REMOVE TAGS «b»%s«/b»}
         Str:= SysUtils.StringReplace(Str,'«b»','',[rfReplaceAll]);
         Str:= SysUtils.StringReplace(Str,'«/b»','',[rfReplaceAll]);

          if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);
         end;


end;

procedure TForm1.TBItem12Click(Sender: TObject);
begin
 Close;
end;

end.
