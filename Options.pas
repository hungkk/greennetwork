unit Options;
                   
interface

uses
  Windows,
  
  SysUtils,
//  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  
  StdCtrls,
  ComCtrls,
  ExtCtrls,
  Spin,
  Menus,
  ColListb,

  JvGradientHeaderPanel,

  JvPageList,

  
  JvPageListTreeView,
  

  
  JvAppIniStorage,
  JvAppStorage,
  CheckLst,
  TntDialogs,

  
  
  
  NxEdit,

  NxPageControl,
  
  

  
  NxColumnClasses,
  
  NxCustomGridControl,
  NxCustomGrid,
  NxGrid, JvListComb, NxAutoCompletion, Dialogs, JvComponentBase,
  JvExStdCtrls, JvCombobox, NxColumns, NxScrollControl, JvExControls,
  JvExComCtrls;


type
  TOptionsForm = class(TForm)
    JvPageList1: TJvPageList;
    JvPageListTreeView1: TJvPageListTreeView;
    Panel1: TPanel;
    Splitter1: TSplitter;
    JvMatesPage: TJvStandardPage;
    JvServersPage: TJvStandardPage;
    SaveOptionsButton: TButton;
    JvGradientHeaderPanel1: TJvGradientHeaderPanel;
    JvGradientHeaderPanel2: TJvGradientHeaderPanel;
    Button2: TButton;
    JvGeneralPage: TJvStandardPage;
    JvGradientHeaderPanel3: TJvGradientHeaderPanel;
    threads: TSpinEdit;
    Label4: TLabel;
    TimeOutSpin: TSpinEdit;
    Label5: TLabel;
    ServerEdit: TEdit;
    AddServerButton: TButton;
    Label6: TLabel;
    ServersPopup: TPopupMenu;
    Copy3: TMenuItem;
    Delete3: TMenuItem;
    N3: TMenuItem;
    JvJoinServerPage: TJvStandardPage;
    JvGradientHeaderPanel4: TJvGradientHeaderPanel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label11: TLabel;
    PrPAthEdit: TEdit;
    ExecParamsEdit: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
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
    MatesColorPicker: TNxColorPicker;
    ServersColorPicker: TNxColorPicker;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label14: TLabel;
    Label15: TLabel;
    JvGameSpyPage: TJvStandardPage;
    JvGradientHeaderPanel5: TJvGradientHeaderPanel;
    NxPageControl1: TNxPageControl;
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
    Label2: TLabel;
    SkinCb: TComboBox;
    NxPageControl2: TNxPageControl;
    EngineNxTabSheet: TNxTabSheet;
    VisualNxTabSheet: TNxTabSheet;
    JoinserverComboBoxActions: TComboBox;
    Label16: TLabel;
    StartAppComboBoxActions: TComboBox;
    Label20: TLabel;
    Label7: TLabel;
    LangNameComboBox: TComboBox;
    CheckUpdatescb: TCheckBox;
    Label22: TLabel;
    Label23: TLabel;
    NameStarCb: TJvImageComboBox;
    NxTextColumn4: TNxTextColumn;
    Button5: TButton;
    Button6: TButton;
    Label21: TLabel;
    Button7: TButton;
    NxTextColumn5: TNxTextColumn;
    Label24: TLabel;
    TagStarCb: TJvImageComboBox;
    Label25: TLabel;
    PrefixStarCb: TJvImageComboBox;
    Label26: TLabel;
    BoldNameCb: TCheckBox;
    BoldPrefixCb: TCheckBox;
    Label27: TLabel;
    NxAutoCompletionNote: TNxAutoCompletion;
    NoteComboBox: TComboBox;
    NxTextColumn6: TNxTextColumn;
    NxComboBoxColumn3: TNxImageColumn;
    NxComboBoxColumn2: TNxImageColumn;
    NxComboBoxColumn4: TNxImageColumn;
    NxComboBoxColumn1: TNxNumberColumn;
    NoteMemo1: TMemo;
    CopyFavServBtn: TButton;
    DelBtnFavServ: TButton;
    NoteMemo2: TMemo;
    ShowMatesStyle: TComboBox;
    Label3: TLabel;
    NextGridFavServers: TNextGrid;
    NxIncrementColumn4: TNxIncrementColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    ServerNoteEdit: TEdit;
    AppEditFavServBtn: TButton;
    procedure SaveOptionsButtonClick(Sender: TObject);
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
    procedure SkinCbChange(Sender: TObject);
    procedure MatesColorPickerChange(Sender: TObject);
    procedure ServersColorPickerChange(Sender: TObject);
    procedure EngineNxTabSheetShow(Sender: TObject);
    procedure LangNameComboBoxChange(Sender: TObject);
    procedure JvPageListTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FavoritesServersWorks(Sender: TObject);
    procedure ResedUnFinishedEdits(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure customfiltercbClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AddEditNote;
    { Public declarations }
  end;



  const
    PREFIX_ADD    = 1;
    PREFIX_EDIT   = 2;
    PREFIX_COPY   = 3;
    PREFIX_DELTE  = 4;
    PREFIX_APPLY  = 5;
    PREFIX_Cancel = 6;

    NAME_ADD    = 7;
    NAME_EDIT   = 8;
    NAME_COPY   = 9;
    NAME_DELTE  = 10;
    NAME_APPLY  = 11;
    NAME_Cancel = 12;

    TAG_ADD    = 13;
    TAG_EDIT   = 14;
    TAG_COPY   = 15;
    TAG_DELTE  = 16;
    TAG_APPLY  = 17;
    TAG_Cancel = 18;





var
  OptionsForm: TOptionsForm;

implementation

uses MUnit, Unit1, UnitGrid, LanguageUnit, MatesUnit;

{$R *.dfm}

procedure TOptionsForm.PopUpAction(Sender:  TObject);
begin

             {
    case (Sender as TComponent).Tag of

       5 :  CopySelectedFromListBox(ServersListBox);
       6 :  ServersListBox.DeleteSelected;// DeleteSelectedFromListBox(ServersListBox);

    end;    }

end;


procedure TOptionsForm.SaveOptionsButtonClick(Sender: TObject);
begin
    SaveOptions;

  ResedUnFinishedEdits(Sender);

  EditPrefix.Text  := '';
  EditPname.Text   := '';
  EditClanTag.Text := '';

  ServerEdit.Text := '';
  PlayerPrefixEdit.Text := '';
  PasswordEdit.Text := '';
  PlayerNameEdit.Text := '';

    Close;
end;

procedure TOptionsForm.FavoritesServersWorks(Sender: TObject);
var TmpStr: string; TmpInt : Integer;
begin


    case (Sender as TComponent).tag of

     {Add}
     1:  begin

            if  ServerEdit.Text = EmptyStr then Exit;
            if  NextGridFavServers.SearchNext(1, Trim(ServerEdit.text), True ) then Exit;

                NextGridFavServers.AddRow();
                NextGridFavServers.BeginUpdate;
                NextGridFavServers.Cells[1, NextGridFavServers.RowCount-1] := Trim(ServerEdit.text);
                NextGridFavServers.Cells[2, NextGridFavServers.RowCount-1] := Trim(ServerNoteEdit.text);

                ServerEdit.Text := '';
                ServerNoteEdit.Text := '';
                NextGridFavServers.EndUpdate;
         end;
     {COPY}
     2:  begin
             if not NextGridFavServers.SelectedRow > -1 then Exit;
             if NextGridFavServers.Cells[2, NextGridFavServers.SelectedRow] = '' then
              TmpStr:= NextGridFavServers.Cells[1, NextGridFavServers.SelectedRow]  else
                TmpStr:= NextGridFavServers.Cells[1, NextGridFavServers.SelectedRow] + ' *** ' + NextGridFavServers.Cells[2, NextGridFavServers.SelectedRow];

             SendToClipBrd(TmpStr);
         end;
     {Delete}
     3:  begin
            NextGridFavServers.BeginUpdate;
            if not NextGridFavServers.SelectedRow > -1 then Exit;
            NextGridFavServers.DeleteRow( NextGridFavServers.SelectedRow );
            NextGridFavServers.EndUpdate;
         end;

     {Edit}
      4: begin
            if not NextGridFavServers.SelectedRow > -1 then Exit;


            ServerEdit.text     := NextGridFavServers.Cells[1, NextGridFavServers.SelectedRow];
            ServerNoteEdit.text := NextGridFavServers.Cells[2, NextGridFavServers.SelectedRow];



            NextGridFavServers.Enabled :=  False;
            AddServerButton.Enabled    :=  False;
            CopyFavServBtn.Enabled     :=  False;
           // DelBtnFavServ.Enabled      :=  False;

            AppEditFavServBtn.Caption := GetWORD(136);
            AppEditFavServBtn.Tag     := 5;

            DelBtnFavServ.Tag         := 6;
            DelBtnFavServ.Caption := GetWORD(66);

         end;

      {Apply}
      5: begin

            TmpInt:= GridCOLStrExists( NextGridFavServers, Trim(ServerEdit.text), 1, True);
           //  Caption:= IntTostr( TmpInt);

            
            NextGridFavServers.Enabled :=  True;
            AddServerButton.Enabled    :=  True;
            CopyFavServBtn.Enabled     :=  True;
           // DelBtnFavServ.Enabled      :=  True;


            AppEditFavServBtn.Tag      := 4;
            AppEditFavServBtn.Caption  := GetWORD(137);

            DelBtnFavServ.Tag         := 3;
            DelBtnFavServ.Caption     := GetWORD(73);

            if ServerEdit.Text = '' then Exit;

            if TmpInt > -1 then
            begin
              NextGridFavServers.ScrollToRow(TmpInt);
              NextGridFavServers.SelectedRow:= TmpInt;
              ServerEdit.Text     := '';
              ServerNoteEdit.Text := '';
              Exit;
            end;


            NextGridFavServers.BeginUpdate;
            NextGridFavServers.Cells[1, NextGridFavServers.SelectedRow] := Trim(ServerEdit.text);
            NextGridFavServers.Cells[2, NextGridFavServers.SelectedRow] := Trim(ServerNoteEdit.text);
            NextGridFavServers.EndUpdate;
            
            ServerEdit.Text := '';
            ServerNoteEdit.Text := '';
         end;

     {Cancel}
     6: begin
            NextGridFavServers.Enabled :=  True;
            AddServerButton.Enabled    :=  True;
            CopyFavServBtn.Enabled     :=  True;

            AppEditFavServBtn.Tag      := 4;
            AppEditFavServBtn.Caption  := GetWORD(137);

            DelBtnFavServ.Tag         := 3;
            DelBtnFavServ.Caption     := GetWORD(73);

            ServerEdit.Text := '';
            ServerNoteEdit.Text := '';


        end;
    end;
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

procedure TOptionsForm.ResedUnFinishedEdits(Sender: TObject);
begin
  {Favorites}
  (Sender as TComponent).Tag:= 6;
  FavoritesServersWorks( Sender );
   {Prefixes}
   (Sender as TComponent).Tag:= PREFIX_Cancel;
   BuddyListWorks( Sender );
   {Names}
   (Sender as TComponent).Tag:=  NAME_Cancel;
   BuddyListWorks( Sender );
   {TAG}
   (Sender as TComponent).Tag:= TAG_Cancel;
   BuddyListWorks( Sender );
end;


procedure TOptionsForm.Button2Click(Sender: TObject);
begin     
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
//const cPPos: array[0..3] of String = ('at the beginning', 'at the end', 'inside name', 'any where');
var i, AROW, lTag: Integer;
begin

  case  (Sender as TComponent).tag of




         {Prefix Apply add}
    PREFIX_ADD,
    PREFIX_APPLY:

          begin
             lTag := (Sender as TComponent).tag;
             {Restore controls}
             Button6.Caption        := GetWORD(137);//'Edit';
             Button6.Tag            := PREFIX_EDIT;
             Button14.Caption       := GetWORD(73);
             Button14.Tag           := PREFIX_DELTE;
             NextGridPrefix.Enabled := True;;
             Button12.Enabled       := True;
             Button13.Enabled       := True;


             if Trim(EditPrefix.Text) = '' then Exit;

             if HasInvalidChars(EditPrefix.Text) then
             begin
              MessageBox(0, PChar(GetWORD(128)), PChar(GetWORD(129)) {'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found'}, (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
             end;


            if lTag = PREFIX_APPLY then AROW := NextGridPrefix.SelectedRow else AROW:= NextGridPrefix.RowCount;

            {Check if Exists then scroll to it and Exit}

            i:= GetMateIndex(  Trim(EditPrefix.Text) + ' ', fpPrefix);

            if i > -1 then
            begin

              if ( lTag = PREFIX_APPLY) and (i = NextGridPrefix.SelectedRow) then
              begin

                 //Allow Editing
              end
              else
              begin
                NextGridPrefix.ScrollToRow(i);
                NextGridPrefix.SelectedRow:= i;
                Exit;
              end;

            end;

            if lTag = PREFIX_ADD then
            NextGridPrefix.AddRow();

            NextGridPrefix.Cell[1,  AROW].AsBoolean := BoldPrefixCb.Checked;
            NextGridPrefix.Cells[2, AROW]           := Trim(EditPrefix.Text);
            NextGridPrefix.Cells[3, AROW]           := NoteComboBox.Text;
            NextGridPrefix.Cell[4,  AROW].AsInteger := PrefixStarCb.ItemIndex;

            AddEditNote;

            PrefixStarCb.ItemIndex := 6;
            NoteComboBox.Text      := '';
            BoldPrefixCb.Checked   := False;
            EditPrefix.Text        := '';
          end;


    {Prefix Edit}
    PREFIX_EDIT :
             if NextGridPrefix.SelectedRow <> -1 then
             begin
               NextGridPrefix.Enabled := False;
               Button12.Enabled       := False;
               Button13.Enabled       := False;

               {Edit to Apply}
               Button6.Caption := GetWORD(136);
               Button6.Tag     := PREFIX_APPLY;
               {Delete to Cancel}
               Button14.Caption := GetWORD(66);
               Button14.Tag       := PREFIX_Cancel;

               BoldPrefixCb.Checked   := NextGridPrefix.Cell[1,  NextGridPrefix.SelectedRow].AsBoolean ;
               EditPrefix.Text        := NextGridPrefix.Cells[2, NextGridPrefix.SelectedRow];
               NoteComboBox.Text      := NextGridPrefix.Cells[3, NextGridPrefix.SelectedRow];
               PrefixStarCb.ItemIndex := NextGridPrefix.Cell[4,  NextGridPrefix.SelectedRow].AsInteger;

             end;

     PREFIX_DELTE: if NextGridPrefix.SelectedRow > -1 then  GridDeleteSelected(NextGridPrefix);

     PREFIX_COPY: SendToClipBrd( GridGetSelectedAsList(NextGridPrefix, 2) );

     PREFIX_Cancel:
           begin
             PrefixStarCb.ItemIndex := 6;
             NoteComboBox.Text      := '';
             BoldPrefixCb.Checked   := False;
             EditPrefix.Text        := '';
             Button6.Caption        := GetWORD(137);//'Edit';
             Button6.Tag            := PREFIX_EDIT;
             Button14.Caption       := GetWORD(73);
             NextGridPrefix.Enabled := True;;
             Button12.Enabled       := True;
             Button13.Enabled       := True;
           end;


    {Name Edit}
    NAME_EDIT :
           begin
             if NextGridPname.SelectedRow <> -1 then
             begin
              Button15.Enabled      := False;
              Button16.Enabled      := False;
              NextGridPname.Enabled := False;

              Button5.Caption  := GetWORD(136);//'Apply';
              Button5.Tag      := NAME_APPLY;
              Button17.Caption := GetWORD(66); //Cancel
              Button17.Tag     := NAME_Cancel;


              BoldNameCb.Checked   :=   NextGridPname.Cell[1,  NextGridPname.SelectedRow].AsBoolean;
              EditPname.Text       :=   NextGridPname.Cells[2, NextGridPname.SelectedRow];
              NoteComboBox.Text    :=   NextGridPname.Cells[3, NextGridPname.SelectedRow];
              NameStarCb.ItemIndex :=   NextGridPname.Cell[4,  NextGridPname.SelectedRow].asInteger;
             end;

           end;


    NAME_ADD, NAME_APPLY:
          begin

              lTag := (Sender as TComponent).tag;

              Button15.Enabled      := True;
              Button16.Enabled      := True;
              NextGridPname.Enabled := True;

              Button5.Caption  := GetWORD(137);//'Edit';
              Button5.Tag      := NAME_EDIT;
              Button17.Caption := GetWORD(73);//Delete
              Button17.Tag     := NAME_DELTE;


            
            if Trim(EditPname.Text) = '' then Exit;

            if HasInvalidChars(EditPname.Text) then
            begin
              MessageBox(0, PChar(GetWORD(128)), PChar(GetWORD(129)) {'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found'}, (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
            end;

            if lTAg = NAME_APPLY then AROW := NextGridPname.SelectedRow else AROW:= NextGridPname.RowCount;

            {Check if Exists then scroll to it and Exit}
            i:= GetMateIndex(Trim(EditPname.Text), fpName);
            if i > -1 then
            begin


              if ( LTag = NAME_APPLY) and (i = NextGridPname.SelectedRow) then
              begin
               //Allow Editing
              end
              else
              begin
               NextGridPname.ScrollToRow(i);
               NextGridPname.SelectedRow:= i;
               Exit;
              end;


            end;

            if lTAg = NAME_ADD then
            NextGridPname.AddRow();

            NextGridPname.Cell[1,  AROW].AsBoolean := BoldNameCb.Checked;
            NextGridPname.Cells[2, AROW]           := Trim(EditPname.Text);
            NextGridPname.Cells[3, AROW]           := NoteComboBox.Text;
            NextGridPname.Cell[4,  AROW].asInteger := NameStarCb.ItemIndex;

            AddEditNote;

            BoldNameCb.Checked   := False;
            NoteComboBox.Text    := '';
            NameStarCb.ItemIndex := 6;
            EditPname.Text       := '';
          end;

   NAME_COPY: SendToClipBrd( GridGetSelectedAsList(NextGridPname, 2) );

   NAME_DELTE: if NextGridPname.SelectedRow > -1 then GridDeleteSelected(NextGridPname);//.DeleteRow( NextGridPname.SelectedRow );

   NAME_Cancel:
          begin
            Button15.Enabled      := True;
            Button16.Enabled      := True;
            NextGridPname.Enabled := True;
            Button5.Caption       := GetWORD(137);//'Edit';
            Button5.Tag           := NAME_EDIT;
            Button17.Caption      := GetWORD(73);//Delete
            Button17.Tag          := NAME_DELTE;
            BoldNameCb.Checked    := False;
            NoteComboBox.Text     := '';
            NameStarCb.ItemIndex  := 6;
            EditPname.Text        := '';
          end;



    TAG_EDIT:
             if NextGridClantag.SelectedRow  <> -1 then
             begin
                Button18.Enabled        := False;
                Button19.Enabled        := False;
                NextGridClantag.Enabled := False;

                Button7.Caption  := GetWORD(136);
                Button7.Tag      := TAG_APPLY;
                Button20.Caption := GetWORD(66);
                Button20.Tag     := TAG_Cancel;

                EditClanTag.Text                := NextGridClantag.Cells[2,  NextGridClantag.SelectedRow];
                RadioGroupClanTag.ItemIndex     := Pred(NextGridClantag.Cell[3,   NextGridClantag.SelectedRow].AsInteger);
                CheckBoxClanTagCaseSens.Checked := NextGridClantag.Cell[4,   NextGridClantag.SelectedRow].AsBoolean;
                TagStarCb.ItemIndex             := NextGridClantag.Cell[5,   NextGridClantag.SelectedRow].asInteger;
                NoteComboBox.Text               := NextGridClantag.Cells[6,  NextGridClantag.SelectedRow];

             end;

    TAG_ADD,TAG_APPLY:
          begin
            lTag := (Sender as TComponent).tag;

            Button18.Enabled        := True;
            Button19.Enabled        := True;
            Button20.Enabled        := True;
            NextGridClantag.Enabled := True;

            Button7.Caption  := GetWORD(137);
            Button7.Tag      := TAG_EDIT;
            Button20.Caption := GetWORD(73);
            Button20.Tag     := TAG_DELTE;
            
            if Trim(EditClanTag.Text) = '' then Exit;

            if HasInvalidChars(EditClanTag.Text) then
            begin
              MessageBox(0, PChar(GetWORD(128)), PChar(GetWORD(129)) {'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found'}, (16*1) or  MB_OK or MB_TOPMOST );
              Exit;
            end;

            if lTag = TAG_APPLY then AROW := NextGridClantag.SelectedRow else AROW:= NextGridClantag.RowCount;

            //Check if Exists then scroll to it and Exit
            i:= GetMateIndex(Trim(EditClanTag.Text), fpClantag, Succ(RadioGroupClanTag.ItemIndex) );
            if i > -1 then
            begin

              if ( lTag = TAG_APPLY) and (i = NextGridClantag.SelectedRow) then
              begin
               //Allow Editing
              end
              else
              begin
               NextGridClantag.ScrollToRow(i);
               NextGridClantag.SelectedRow:= i;
               Exit;
              end;

            end;

            if lTag = TAG_ADD then
            NextGridClantag.AddRow();

            NextGridClantag.Cells[2,  AROW]           := Trim(EditClanTag.Text);
            NextGridClantag.Cell[3,  AROW].AsInteger  := Succ(RadioGroupClanTag.ItemIndex);
            NextGridClantag.Cell[4,   AROW].AsBoolean := CheckBoxClanTagCaseSens.Checked;
            NextGridClantag.Cell[5,   AROW].asInteger := TagStarCb.ItemIndex;
            NextGridClantag.Cells[6,  AROW]           := NoteComboBox.Text;

            AddEditNote;

            EditClanTag.Text                := '';
            CheckBoxClanTagCaseSens.Checked := False;
            NoteComboBox.Text               := '';
            TagStarCb.ItemIndex             := 6;
          end;

   TAG_DELTE: if NextGridClantag.SelectedRow > -1 then GridDeleteSelected(NextGridClantag);//.DeleteRow( NextGridClantag.SelectedRow );
       
   TAG_COPY:  SendToClipBrd( GridGetSelectedAsList(NextGridClantag, 2) );

   TAG_Cancel:
          begin
            Button18.Enabled        := True;
            Button19.Enabled        := True;
            NextGridClantag.Enabled := True;

            Button7.Caption  := GetWORD(137);
            Button7.Tag      := TAG_EDIT;
            Button20.Caption := GetWORD(73);
            Button20.Tag     := TAG_DELTE;

            EditClanTag.Text    := '';
            CheckBoxClanTagCaseSens.Checked := False;
            NoteComboBox.Text   := '';
            TagStarCb.ItemIndex := 6;
          end;


  end;

end;



procedure TOptionsForm.SkinCbChange(Sender: TObject);
begin
   Form1.SkinData1.Active := SkinCb.ItemIndex = 1;
end;

procedure TOptionsForm.MatesColorPickerChange(Sender: TObject);
begin
  if MatesColorPicker.SelectedColor = clNone then MatesColorPicker.SelectedColor:= clWhite;
end;

procedure TOptionsForm.ServersColorPickerChange(Sender: TObject);
begin
  if ServersColorPicker.SelectedColor = clNone then ServersColorPicker.SelectedColor:= clWhite;
end;

procedure TOptionsForm.EngineNxTabSheetShow(Sender: TObject);
begin
   if not OptionsForm.Visible then Exit;
   OptionsForm.TrackBar2.SetFocus;
   OptionsForm.TrackBar1.SetFocus;
end;

procedure TOptionsForm.LangNameComboBoxChange(Sender: TObject);
begin
 ReadLng( ExtractFilePath(ParamStr(0){Application.ExeName}) + 'Lang\' + LangNameComboBox.Text) ;
end;

procedure TOptionsForm.JvPageListTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
     case Node.Parent.Index of
      0: NxPageControl1.ActivePageIndex:= Node.Index;
      2: NxPageControl2.ActivePageIndex:= Node.Index;
     end;
end;


procedure TOptionsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LoadOptions(1);

  ResedUnFinishedEdits(Sender);

  EditPrefix.Text  := '';
  EditPname.Text   := '';
  EditClanTag.Text := '';

  ServerEdit.Text := '';
  PlayerPrefixEdit.Text := '';
  PasswordEdit.Text := '';
  PlayerNameEdit.Text := '';
end;

procedure TOptionsForm.AddEditNote;
var Str: string; iIndex: Integer;
begin
  Str := Trim(NoteComboBox.Text);
   if Str = '' then Exit;
  iIndex :=   NxAutoCompletionNote.Strings.IndexOf(Str);

  if iIndex = -1 then
  begin
    NxAutoCompletionNote.Strings.Append( Str );
   NoteComboBox.Items.CommaText := NxAutoCompletionNote.Strings.CommaText;
   end
     else
      NxAutoCompletionNote.Strings.Move(iIndex, 0);

     OptionsForm.jvpnflstrg1.WriteString('MRURECENTNOTE', NxAutoCompletionNote.Strings.CommaText);

end;








procedure TOptionsForm.customfiltercbClick(Sender: TObject);
begin
 FilterListBox.Enabled :=   customfiltercb.Checked;
end;

end.
