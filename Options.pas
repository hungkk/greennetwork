unit Options;

interface

uses
  Windows,
  Messages,
  SysUtils,
//  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ComCtrls,
  ExtCtrls,
  Spin,
  Menus,
  ColListb,

  JvGradientHeaderPanel,

  JvPageList,

  JvExComCtrls,
  JvPageListTreeView,
  JvExControls,

  JvComponentBase,
  JvAppIniStorage,
  JvAppStorage,
  CheckLst,
  TntDialogs,

  NxPropertyItemClasses,
  NxPropertyItems,
  NxScrollControl,
  NxEdit,

  NxPageControl,
  NxInspector,
  NxCollection,

  
  NxColumnClasses,
  NxColumns,
  NxCustomGridControl,
  NxCustomGrid,
  NxGrid;


type
  TOptionsForm = class(TForm)
    JvPageList1: TJvPageList;
    JvPageListTreeView1: TJvPageListTreeView;
    Panel1: TPanel;
    Splitter1: TSplitter;
    JvMatesPage1: TJvStandardPage;
    JvServersPage2: TJvStandardPage;
    SaveOptionsButton: TButton;
    JvGradientHeaderPanel1: TJvGradientHeaderPanel;
    JvGradientHeaderPanel2: TJvGradientHeaderPanel;
    Label3: TLabel;
    Button2: TButton;
    JvGeneralPage1: TJvStandardPage;
    JvGradientHeaderPanel3: TJvGradientHeaderPanel;
    threads: TSpinEdit;
    Label4: TLabel;
    TimeOutSpin: TSpinEdit;
    Label5: TLabel;
    ServersListBox: TListBox;
    ServerEdit: TEdit;
    AddServerButton: TButton;
    Label6: TLabel;
    ServersPopup: TPopupMenu;
    Copy3: TMenuItem;
    Delete3: TMenuItem;
    N3: TMenuItem;
    Label7: TLabel;
    JvJoinServerPage: TJvStandardPage;
    JvGradientHeaderPanel4: TJvGradientHeaderPanel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label11: TLabel;
    PrPAthEdit: TEdit;
    ExecParamsEdit: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    jvpnflstrg1: TJvAppIniFileStorage;
    Button3: TButton;
    PlayerPrefixEdit: TEdit;
    ColumnListBox1: TColumnListBox;
    Label9: TLabel;
    Label10: TLabel;
    PlayerNameEdit: TEdit;
    PasswordEdit: TEdit;
    Label12: TLabel;
    Button4: TButton;
    TerminateOnJoinCheckBox: TCheckBox;
    MatesColorPicker: TNxColorPicker;
    ServersColorPicker: TNxColorPicker;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label14: TLabel;
    Label15: TLabel;
    JvStandardPage1: TJvStandardPage;
    JvGradientHeaderPanel5: TJvGradientHeaderPanel;
    NxPageControl1: TNxPageControl;
    NxPanel2: TNxPanel;
    customfiltercb: TCheckBox;
    FilterListBox: TCheckListBox;
    TntOpenDialog1: TTntOpenDialog;
    NxTabSheet4: TNxTabSheet;
    NextGridPrefix: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn1: TNxTextColumn;
    Label17: TLabel;
    EditPrefix: TEdit;
    NxTabSheet5: TNxTabSheet;
    NxTabSheet6: TNxTabSheet;
    NextGridPname: TNextGrid;
    NxIncrementColumn2: TNxIncrementColumn;
    NxCheckBoxColumn2: TNxCheckBoxColumn;
    NxTextColumn2: TNxTextColumn;
    EditPname: TEdit;
    Label18: TLabel;
    NextGridClantag: TNextGrid;
    NxIncrementColumn3: TNxIncrementColumn;
    NxCheckBoxColumn3: TNxCheckBoxColumn;
    NxTextColumn3: TNxTextColumn;
    RadioGroupClanTag: TRadioGroup;
    CheckBoxClanTagCaseSens: TCheckBox;
    EditClanTag: TEdit;
    Label19: TLabel;
    NxComboBoxColumn1: TNxComboBoxColumn;
    NxCheckBoxColumn4: TNxCheckBoxColumn;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Label1: TLabel;
    updRetrySpin: TSpinEdit;
    procedure SaveOptionsButtonClick(Sender: TObject);
    procedure AddServerButtonClick(Sender: TObject);
    procedure PopUpAction(Sender:  TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure threadsChange(Sender: TObject);
    procedure TimeOutSpinChange(Sender: TObject);

    
    //-
    procedure BuddyListWorks(Sender: TObject);
  private
    { Private declarations }
  public
   
    { Public declarations }
  end;

var
  OptionsForm: TOptionsForm;

implementation

uses MUnit, Unit1, UnitGrid;

{$R *.dfm}

procedure TOptionsForm.PopUpAction(Sender:  TObject);
begin


    case (Sender as TComponent).Tag of

       5 :  CopySelectedFromListBox(ServersListBox);
       6 :  ServersListBox.DeleteSelected;// DeleteSelectedFromListBox(ServersListBox);

    end;

end;


procedure TOptionsForm.SaveOptionsButtonClick(Sender: TObject);
begin
    SaveOptions;

  EditPrefix.Text  := '';
  EditPname.Text   := '';
  EditClanTag.Text := '';

  ServerEdit.Text := '';
  PlayerPrefixEdit.Text := '';
  PasswordEdit.Text := '';
  PlayerNameEdit.Text := '';

    Close;
end;

procedure TOptionsForm.AddServerButtonClick(Sender: TObject);
begin
   if (ServersListBox.Items.IndexOf( Trim(ServerEdit.Text) ) = -1)  and  (Trim(ServerEdit.Text) <> '') then
     ServersListBox.Items.Add( Trim(ServerEdit.Text) );
     ServerEdit.Text:='';
end;

procedure TOptionsForm.Button3Click(Sender: TObject);
begin

            if HasInvalidChars(PlayerPrefixEdit.Text) or HasInvalidChars(PlayerNameEdit.Text) then
            begin
              MessageBox(0, 'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found', (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
            end;

 with ColumnListBox1.ListBoxItems.Add  do
 begin
   Strings.Add(Trim(PlayerPrefixEdit.text));
   Strings.Add(Trim(PlayerNameEdit.text));
   Strings.Add(Trim(PasswordEdit.text));
 end;
 PlayerPrefixEdit.text  := '';
 PlayerNameEdit.text    := '';
 PasswordEdit.text      := '';
   // ColumnListBox1.ColumnItems[]
end;

procedure TOptionsForm.Button4Click(Sender: TObject);
begin
  ColumnListBox1.DeleteSelected;
end;

procedure TOptionsForm.Button1Click(Sender: TObject);
begin
 if TntOpenDialog1.Execute then
 PrPAthEdit.Text:= TntOpenDialog1.FileName;
end;

procedure TOptionsForm.Button2Click(Sender: TObject);
begin
  LoadOptions(1);

  EditPrefix.Text  := '';
  EditPname.Text   := '';
  EditClanTag.Text := '';

  ServerEdit.Text := '';
  PlayerPrefixEdit.Text := '';
  PasswordEdit.Text := '';
  PlayerNameEdit.Text := '';

  close;
end;

procedure TOptionsForm.TrackBar1Change(Sender: TObject);
begin
   threads.Value:=    TrackBar1.Position;
end;

procedure TOptionsForm.TrackBar2Change(Sender: TObject);
begin
  TimeOutSpin.Value:=   TrackBar2.Position;
end;

procedure TOptionsForm.threadsChange(Sender: TObject);
begin
   TrackBar1.Position:=  threads.Value;
end;

procedure TOptionsForm.TimeOutSpinChange(Sender: TObject);
begin
    TrackBar2.Position:=     TimeOutSpin.Value;
end;

procedure TOptionsForm.BuddyListWorks(Sender: TObject);
const cPPos: array[0..3] of String = ('at the beginning', 'at the end', 'inside name', 'any where');
var i: Integer;
begin

  case  (Sender as TComponent).tag of

       1: begin   {Prefix}
            if Trim(EditPrefix.Text) = '' then Exit;

            if HasInvalidChars(EditPrefix.Text) then
            begin
              MessageBox(0, 'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found', (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
            end;


            {Check if Exists then scroll to it and Exit}

            i:= GetMateIndex(Trim(EditPrefix.Text), fpPrefix);
            if i > -1 then
            begin
              NextGridPrefix.ScrollToRow(i);
              NextGridPrefix.SelectedRow:= i;
              Exit;
            end;

            NextGridPrefix.AddRow();
            NextGridPrefix.Cells[2, NextGridPrefix.RowCount-1] := Trim(EditPrefix.Text);
            EditPrefix.Text := '';
          end;

       2: begin   {Pname}
            if Trim(EditPname.Text) = '' then Exit;

            if HasInvalidChars(EditPname.Text) then
            begin
              MessageBox(0, 'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found', (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
            end;


            {Check if Exists then scroll to it and Exit}
            i:= GetMateIndex(Trim(EditPname.Text), fpName);
            if i > -1 then
            begin
              NextGridPname.ScrollToRow(i);
              NextGridPname.SelectedRow:= i;
              Exit;
            end;

            NextGridPname.AddRow();
            NextGridPname.Cells[2, NextGridPname.RowCount-1] := Trim(EditPname.Text);
            EditPname.Text := '';
          end;

        3: begin   {Clantag}
            if Trim(EditClanTag.Text) = '' then Exit;

            if HasInvalidChars(EditClanTag.Text) then
            begin
              MessageBox(0, 'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found', (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
            end;


            //Check if Exists then scroll to it and Exit
            i:= GetMateIndex(Trim(EditClanTag.Text), fpClantag, RadioGroupClanTag.ItemIndex);
            if i > -1 then
            begin
              NextGridClantag.ScrollToRow(i);
              NextGridClantag.SelectedRow:= i;
              Exit;
            end;

            NextGridClantag.AddRow();
            NextGridClantag.Cells[2, NextGridClantag.RowCount-1] := Trim(EditClanTag.Text);
            NextGridClantag.Cells[3,  NextGridClantag.RowCount-1] := cPPos[RadioGroupClanTag.ItemIndex];
            NextGridClantag.Cell[4,  NextGridClantag.RowCount-1].AsBoolean := CheckBoxClanTagCaseSens.Checked;

            EditClanTag.Text := '';
            CheckBoxClanTagCaseSens.Checked := False;
          end;


        4: if NextGridPrefix.SelectedRow > -1 then GridDeleteSelected(NextGridPrefix);// NextGridPrefix.DeleteRow( NextGridPrefix.SelectedRow );
        5: if NextGridPname.SelectedRow > -1 then GridDeleteSelected(NextGridPname);//.DeleteRow( NextGridPname.SelectedRow );
        6: if NextGridClantag.SelectedRow > -1 then GridDeleteSelected(NextGridClantag);//.DeleteRow( NextGridClantag.SelectedRow );

        7:  SendToClipBrd( GridGetSelectedAsList(NextGridPrefix, 2) );
        8:  SendToClipBrd( GridGetSelectedAsList(NextGridPname, 2) );
        9:  SendToClipBrd( GridGetSelectedAsList(NextGridClantag, 2) );


  end;

end;






end.
