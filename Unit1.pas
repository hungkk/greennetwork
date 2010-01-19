unit Unit1;

//Aluigi   Alexeis     Дойчлан дойчланд убер алес

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

  NxPropertyItemClasses,
  NxPropertyItems,
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
  TB2ExtItems, se_pngimagelist, Spin, Dialogs;

{$I defs.inc}

  const BuildNo = 23;

        {NEW$}
        S_GAME_SPY  = 2;
        S_FAVORITES = 1;
        S_PRPONLINE = 3;
        SS_MULTI    = -1;

        P_ALLPLAYERS  = 0;
        P_MATES       = 1;


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

type

   TAfterEvent = (eMultiThScann, eSingleThScann);

type
  TForm1 = class(TForm)
    GlobalServersGrid: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxImageColumn1: TNxImageColumn;
    NxTextColumn2: TNxTextColumn;
    NxImageColumn4: TNxImageColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxImageColumn5: TNxImageColumn;
    XPManifest1: TXPManifest;
    Panel1: TPanel;
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
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
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
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
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
    NxNumberColumn9: TNxNumberColumn;
    NxTextColumn13: TNxTextColumn;
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
    NxNumberColumn17: TNxNumberColumn;
    NxTextColumn19: TNxTextColumn;
    NxTextColumn20: TNxTextColumn;
    NxTextColumn21: TNxTextColumn;
    NxTextColumn22: TNxTextColumn;
    NxTextColumn23: TNxTextColumn;
    NxNumberColumn19: TNxNumberColumn;
    NxTextColumn24: TNxTextColumn;
    NxTextColumn25: TNxTextColumn;
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
    sePngImageList1: TsePngImageList;
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
    sePngImageList2: TsePngImageList;
    sePngImageList3: TsePngImageList;
    NxNumberColumn15: TNxTextColumn;
    NxNumberColumn2: TNxTextColumn;
    NxNumberColumn18: TNxTextColumn;
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
    Function SetRowVisibility(const item: TBF2ServerInfoItem ) : boolean;

    {Вычисляет колл-во качественных серверов и общее число игроков}
    procedure GetCountCollection(const collection: TBF2ServerSList; var GoodServers: Integer; var TotalPlayers: Integer);

    procedure SearchCollection;
    procedure GlobalResetLastPlayerSearchIndex;

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
  



implementation

uses MUnit, UnitGrid, Options, About;

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

                            if OptionsForm.ServersListBox.Items.Count > 0 then
                            StarMultiThreading(OptionsForm.ServersListBox.Items, S_FAVORITES);
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
                         JoinToServer( GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP,
                                       GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].hostport,
                                       (Sender as TTBCustomItem).ImageIndex );
                     end;


       ADDTOFAV :      begin    {2}
                              if (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) or (ActGridIndex = S_FAVORITES) then Exit;
                              Str:= GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP + ':' + GetBF2List(ActGridIndex).AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort;
                              if (OptionsForm.ServersListBox.Items.IndexOf( Trim(Str) ) <> -1)  or  (Trim(Str) = '') then Exit;
                              OptionsForm.ServersListBox.Items.Add( Trim(Str) );
                              OptionsForm.ServersListBox.Items.SaveToFile('servers.txt');
                       end;

       REMOVEFROFAV  : begin   {2}
                              if (GetGrid(ActGridIndex).RowCount <= 0) or (GetGrid(ActGridIndex).SelectedRow <= -1) or (ActGridIndex <> S_FAVORITES) then Exit;

                              Str:= PRFavorites.AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerIP + ':' + PRFavorites.AnItems[GetGrid(ActGridIndex).Cell[14, GetGrid(ActGridIndex).SelectedRow ].AsInteger].ServerQueryPort;
                              if (OptionsForm.ServersListBox.Items.IndexOf( Trim(Str) ) = -1)  or  (Trim(Str) = '') then Exit;

                              OptionsForm.ServersListBox.Items.Delete( OptionsForm.ServersListBox.Items.IndexOf( Trim(Str) ));
                              OptionsForm.ServersListBox.Items.SaveToFile('servers.txt');
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

                    case (Sender as TComponent).GetParentComponent.Tag of

                    PLAYERSINFO_POPUP     : str:=  GridCopyTwoColsFromSelRow( GetPInfoGrid(NxPageControl2.activePageindex)  );
                    ONLINEPLAYERS_POPUP   : str:=  GridCopyTwoColsFromSelRow(GetGrid(ActGridIndex));
                    end;

                    if Str <> '' then Str:= Trim(Str);
                      SendToClipBrd(str);

                  end;

       iOPTIONS : begin
                    OptionsForm.ShowModal;
                 end;

       iABOUT   : begin
                   AboutForm.ShowModal;
                 end;

       VIEW_SERVERS : Begin
                       if GlobalServersGrid.RowCount > 0 then GridShowHideRows(GlobalServersGrid);
                       if GameSpyGrid.RowCount > 0 then GridShowHideRows(GameSpyGrid);
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

    end;


//--
end;


{On Popup }
procedure TForm1.OnPopup(Sender: TObject);
var inx : Integer;
begin

   inx:=  Succ(NxPageControl1.ActivePageindex);// + 1;

   {Disable/Enable Joinserver and Refresh, if Grid not selected}
   TBSubmenuItem5.Enabled       := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
   TBItemRefresh.Enabled        := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
   TBSubmenuItem6.Enabled       := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
   TBSubmenuItem1.Enabled       := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );

  case inx of
       S_GAME_SPY  :  begin
                        Add2fav.Enabled  := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
                        Add2Fav2.Enabled  := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );

                        Rem4Fav.Enabled         := False;
                        Rem4Fav2.Enabled        := False;
                      end;

       S_FAVORITES :  begin
                        Rem4Fav.Enabled   := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
                        Rem4Fav2.Enabled  := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
                        Add2Fav2.Enabled  := False;
                        Add2fav.Enabled   := False;
                      {  Addservertofavorites1.Enabled := False;
                        Removefromfavorites1.Enabled := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );

                        Addservertofavorites2.Enabled := False;
                        Delete1.Enabled   := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
                       }

                      end;


       S_PRPONLINE  : begin

                        TBItemAddToFav3.Enabled     := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
                        TBItemOPCopyPlayers.Enabled := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 ) and (GetGrid(inx).Cells[2, GetGrid(inx).SelectedRow] <> '');
                        TBItemOPAddPrefix.Enabled   := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 ) and (GetGrid(inx).Cells[1, GetGrid(inx).SelectedRow] <> '');
                        TBItemOPAddname.Enabled     := TBItemOPCopyPlayers.Enabled;
                        TBItemOPremPrefix.Enabled   := TBItemOPAddPrefix.Enabled;
                        TBItemOPRemname.Enabled     := TBItemOPCopyPlayers.Enabled;

                        Rem4Fav2.Enabled  := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );
                        Add2Fav2.Enabled  := (GetGrid(inx).RowCount > 0) and (GetGrid(inx).SelectedRow > -1 );

                      end;




  end;
     
end;


procedure TForm1.TBPopupPlayersPopup(Sender: TObject);
var DefBool : boolean;
begin


            CopyPlayer.Enabled := False;
            Addprefix2buddy.Enabled  := False;
            addname2buddy.Enabled    := False;
            remprefix.Enabled  := False;
            remname.Enabled    := False;

     case NxPageControl2.ActivePageIndex of
      0 : begin

            DefBool := (PlayersGrid.RowCount > 0) and (PlayersGrid.SelectedRow > -1);
            if not DefBool then Exit;
            Addprefix2buddy.Enabled  := PlayersGrid.Cells[1, PlayersGrid.SelectedRow] <> '';
            remprefix.Enabled  := PlayersGrid.Cells[1, PlayersGrid.SelectedRow] <> '';
          end;

      1 : begin
             DefBool := (MatestGrid.RowCount > 0) and (MatestGrid.SelectedRow > -1);
             if not DefBool then Exit;
             Addprefix2buddy.Enabled  := MatestGrid.Cells[1, MatestGrid.SelectedRow] <> '';
             remprefix.Enabled  := MatestGrid.Cells[1, MatestGrid.SelectedRow] <> '';
          end;

     end;

                   CopyPlayer.Enabled := DefBool;
                   addname2buddy.Enabled    := DefBool;
                //   remprefix.Enabled  := DefBool;
                   remname.Enabled    := DefBool;

end;



procedure TForm1.GlobalServersGridCompare(Sender: TObject; Cell1,
  Cell2: TCell; var Compare: Integer);
  var V1,V2 : string;    I1, I2 : Integer;
begin

 case Cell1.ColumnIndex of

 11: begin  // 11 - mates

        // ( 20 (1)
      V1:= cStrings.StrBefore( Cell1.AsString, ' ');
      V2:= cStrings.StrBefore( Cell2.AsString, ' ');
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
   Caption:= ' PR - Green Network 1.0'; //(Build# 0025 A)'

  {NEW$}
  PRGameSpy          :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;
  PRFavorites        :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;
  PRPlayersOnline    :=   TBF2ServerSList.Create(TBF2ServerInfoItem) ;

  ServerListBuffer   :=   TStringList.Create;
  TempGameSpySrvList :=   TStringList.Create;
  ActiveThreading    :=   False;

  GeoIP := TGeoIP.Create;
  LoadGeoIPdbFromRes(GeoIP);

 // NxTabSheet5.PageVisible := True;  {EDBUG}


  LoadOptions;


 // if OptionsForm.jvpnflstrg1.ReadBoolean ( 'FORVAXIMIZED', False) then
 //   Button1.Click;
  // Form1.WindowState := wsMaximized;


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
            A := GetBF2List(GridIndexTag).AddServerInfo( RcvdBytes, ServerIP, QueryPort );

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

             A := GetBF2List(GridIndexTag).UpdateServerInfo( RcvdBytes, ServerIP, QueryPort, RowItemIndex );
             GridUpdateServerInfo( GetGrid(GridIndexTag), A, RowItemIndex);
             if A.ErrorCode > -1 then CreatePingQThread( ServerNo, A.Index , ServerIP );

             ActiveThreading := False;

             NotifyForEnd(eSingleThScann);

     end;
    
  end;

end;

procedure TForm1.CreatePingQThread(ID, Tag: Integer; IP: string);
begin
 BF2PingThread[ID] := TBF2PingThread.Create(IP, ID);
 BF2PingThread[ID].TimeOut      :=  1000;
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
   S_FAVORITES: NxTabSheet2.Caption:= 'Favorites (' + IntToStr(GoodServers) + ')';//Fav
   S_GAME_SPY : NxTabSheet6.Caption:= 'GameSpy ('  + IntToStr(GoodServers) + ')';//GS
   S_PRPONLINE: NxTabSheet7.Caption:= 'PR Players online (' + IntToStr(tPlayers) + ')';
  end;

 {New}  // FormatDateTime
   //  SysUtils.
 // SysUtils.Date;

  JvStatusBar1.Panels[1].Text := FormatDateTime('hh:nn:ss', Now ) + ' - Done! ( Servers: ' + IntTostr(GoodServers) + ' of ' + IntTostr(GetBF2List(GridIndexTag).Count) + ')'  + ' / (TotalPlayers: ' + IntToStr(tPlayers) + ')';

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
   JvStatusBar1.Panels[1].Text := 'Requesting servers information ...';
end;





procedure TForm1.ComOnGridSelectCell(Sender: TObject; ACol, ARow: Integer);
  var i, index, AColor ,BColor: Integer;  //ismate: Boolean;
      gPing, gHitem : Integer;
      NG : TNextGrid;
      M8Index : Integer;
begin
 // LastSearchNamePos:= 0;

  NG := (Sender as TNextGrid);
  if (ACol < 0) or (ARow < 0) then Exit;

  MatestGrid.ClearRows;
  PlayersGrid.ClearRows;
  ServerInfoRich.Clear;


  if NG.Cell[C_PING , ARow].AsInteger = 1000 then Exit;

  index:= NG.Cell[H_ITEMID , ARow].AsInteger;
  if index = -1  then Exit;
  if not Assigned( GetBF2List(NG.Tag).AnItems[index] ) then Exit;

 // NG.BeginUpdate;

  with GetBF2List(NG.Tag).AnItems[index] do
  begin

     {Players and Mates}
     if {CountPlayers}TotalPlayersCount > 0 then
     begin
      // MatestGrid.BeginUpdate;
      for i:=0 to TotalPlayersCount-1 do
      begin
         M8Index  := isMate(BF2Player[i].Name);
         GridAddPlayerInfo(PlayersGrid, BF2Player[i], M8Index);
         if M8Index > 0 then
         GridAddPlayerInfo(MatestGrid, BF2Player[i], M8Index);

      end;
      // MatestGrid.EndUpdate;
     end;

     {Server Info}
    with ServerInfoRich.Lines do
    begin
             AColor := clNavy;
             BColor := clBlack;

     RichEditAddColored(ServerInfoRich, 'ip:queryport: ' , ServerIP +':'+ ServerQueryPort  , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'hostname: ' , hostname              , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'gamename: ' , gamename              , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'gamever: '  , gamever               , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'mapname: '  , mapname               , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'gametype: ' , gametype              , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'gamevariant: ' , gamevariant        , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'numplayers: '  , numplayers         , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'maxplayers: '  , maxplayers         , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'gamemode: '  , gamemode             , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'password: '  , password             , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'timelimit: ' , timelimit            , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'roundtime: ' , roundtime            , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'hostport: '  , hostport             , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_dedicated: '   ,   bf2_dedicated, AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_ranked: '      ,   bf2_ranked   , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_anticheat: '   ,   bf2_anticheat, AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_os: '          ,   bf2_os       , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_autorec: '     ,   bf2_autorec  , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_d_idx: '       ,   bf2_d_idx    , AColor, BColor  );
     RichEditAddColored(ServerInfoRich, 'bf2_d_dl: '        ,   bf2_d_dl     , AColor, BColor  );
     RichEditAddColored(ServerInfoRich, 'bf2_voip: '        ,   bf2_voip     , AColor, BColor  );
     RichEditAddColored(ServerInfoRich, 'bf2_autobalanced: ',  bf2_autobalanced  , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_friendlyfire: ',  bf2_friendlyfire  , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_tkmode: '      ,   bf2_tkmode       , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_startdelay: '  ,   bf2_startdelay   , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_spawntime: '   ,   bf2_spawntime    , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_sponsortext: ' ,   bf2_sponsortext  , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_sponsorlogo_url: '   ,   bf2_sponsorlogo_url  , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_communitylogo_url: ' ,  bf2_communitylogo_url , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_scorelimit: '    ,   bf2_scorelimit   , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_ticketratio: '   ,   bf2_ticketratio  , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_teamratio: '     ,   bf2_teamratio    , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_team1: '         ,   bf2_team1        , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_team2: '         ,   bf2_team2        , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_bots: '          ,   bf2_bots         , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_pure: '          ,   bf2_pure         , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_mapsize: '       ,   bf2_mapsize      , AColor, BColor );
     RichEditAddColored(ServerInfoRich, 'bf2_globalunlocks: ' ,   bf2_globalunlocks , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_fps: '           ,   bf2_fps           , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_plasma: '        ,   bf2_plasma        , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_reservedslots: ' ,   bf2_reservedslots , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_coopbotratio: '  ,   bf2_coopbotratio  , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_coopbotcount: '  ,   bf2_coopbotcount  , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_coopbotdiff: '   ,   bf2_coopbotdiff   , AColor, BColor);
     RichEditAddColored(ServerInfoRich, 'bf2_novehicles: '    ,   bf2_novehicles    , AColor, BColor);

     ServerInfoRich.SelStart := 0;
     SendMessage(ServerInfoRich.handle, EM_SCROLLCARET,0,0);

    end;

  end;

 //  NG.EndUpdate;

end;

{PR Players Online}
procedure TForm1.GetPROnlinePlayers;
var Str: AnsiString; inx : Integer;
begin
  ActiveThreading := True;
  JvStatusBar1.Panels[1].Text := 'Requesting servers list from GameSpy ...';
  TempGameSpySrvList.Clear;

  inx := GetGSSList(1, Str );
  case inx of
   0      : begin
                TempGameSpySrvList.Text := Str;
                StarMultiThreading( TempGameSpySrvList, S_PRPONLINE );
            end;
   1      : begin
             JvStatusBar1.Panels[1].Text := 'Received servers list empty!';
             ActiveThreading := False;
            end;
   -1, -2 : begin
              JvStatusBar1.Panels[1].Text := 'Can''t connect to GameSpy! (ErrorCode: ' + IntToStr(inx) + ')' ;
              ActiveThreading := False;
            end;
   -3, -4   : begin
               JvStatusBar1.Panels[1].Text := 'Can''t decrypt received data. Try again!';//     //'Access error in module "xdec.exe" (ErrorCode: ' + IntToStr(inx) + ')'  ;
               ActiveThreading := False;
            end;
  end;



end;



{GameSpy}


procedure TForm1.GetGameSpyServers;
var Str: AnsiString;  inx : Integer;
begin
   ActiveThreading := True;
   JvStatusBar1.Panels[1].Text := 'Requesting servers from GameSpy ...';
   TempGameSpySrvList.Clear;

  inx := GetGSSList(0, Str );
  case inx of
   0      : begin
                TempGameSpySrvList.Text := Str;
                StarMultiThreading( TempGameSpySrvList );
            end;
   1      : begin
             JvStatusBar1.Panels[1].Text := 'Received servers list empty!';
             ActiveThreading := False;
            end;
   -1, -2 : begin
              JvStatusBar1.Panels[1].Text := 'Can''t connect to GameSpy! (ErrorCode: ' + IntToStr(inx) + ')' ;
              ActiveThreading := False;
            end;
   -3, -4 : begin
               JvStatusBar1.Panels[1].Text := 'Access error in module "xdec.exe" (ErrorCode: ' + IntToStr(inx) + ')'  ;
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


       OptionsForm.jvpnflstrg1.WriteBoolean('TBAR', TBItemToolBar.Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('SBAR', TBItemSearchBar.Checked);
       OptionsForm.jvpnflstrg1.WriteBoolean('FBAR', TBItemFilterBar.Checked);
    end;



    {Test}
    PRGameSpy.Destroy;
    PRFavorites.Destroy;
    PRPlayersOnline.Destroy;
    GeoIP.Free;

end;

{
**********************************************************************************
********************************** ROWS FILTER ***********************************
**********************************************************************************
}



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
           result:=   ServerPing >= item.Ping; {}

    end;

    Function TForm1.SetRowVisibility(const item: TBF2ServerInfoItem ) : boolean;
    begin

      with  TBShowServers do //Items[2].Items[2]  do
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
     if PlayersGrid.Cell[9, ARow].AsInteger in [1,2]  then
    CellColor:= OptionsForm.MatesColorPicker.SelectedColor;

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
   if not PROnlinePlayersGrid.RowExist(AROW) or (PROnlinePlayersGrid.SelectedRow = ARow) then Exit;
     if (PROnlinePlayersGrid.Cell[5, ARow].AsInteger > 0) and (ACol in [1,2])  then
    CellColor:= OptionsForm.MatesColorPicker.SelectedColor;
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
     if not PlayersGrid.RowExist(AROW) or (PlayersGrid.SelectedRow = ARow) then Exit;
     if (PlayersGrid.Cell[9, ARow].AsInteger = 2) and (ACol in [1,2])  then
      FontStyle := FontStyle + [fsBold];
     //CellColor:= OptionsForm.MatesColorPicker.SelectedColor;
end;

procedure TForm1.PROnlinePlayersGridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
     if not PROnlinePlayersGrid.RowExist(AROW) or (PROnlinePlayersGrid.SelectedRow = ARow) then Exit;
     if (PROnlinePlayersGrid.Cell[5, ARow].AsInteger = 2) and (ACol in [1,2])  then
      FontStyle := FontStyle + [fsBold];
end;

procedure TForm1.MatestGridCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
      if not MatestGrid.RowExist(AROW) or (MatestGrid.SelectedRow = ARow) then Exit;
      if (MatestGrid.Cell[9, ARow].AsInteger = 2) and (ACol in [1,2])  then
      FontStyle := FontStyle + [fsBold];
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

                  PlayersGrid.SearchNext(2, ExtractName(GetBF2List(NG.Tag).AnItems[NG.Cell[14, i].AsInteger].BF2Player[PlayerIndex].Name), true);

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



procedure TForm1.FormActivate(Sender: TObject);
begin
    if OptionsForm.jvpnflstrg1.ReadBoolean ( 'FORMAXIMIZED', False) then
        Form1.WindowState := wsMaximized;
end;

procedure TForm1.SearchComboBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then  PopupActionsEnt( Sender );
end;

end.
