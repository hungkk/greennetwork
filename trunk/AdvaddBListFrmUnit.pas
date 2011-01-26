unit AdvaddBListFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, JvListComb, Unit1,
  NxCollection, ExtCtrls;

  const
   EDIT_FIELD   = 1;
   ADD_NEWFIELD = 0;

type
  TForm3 = class(TForm)
    Label12: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Button3: TButton;
    StarCb: TJvImageComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit4: TEdit;
    ComboBox3: TComboBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure ControlsState(i: integer);
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    PlayerName : String;
    Section : Integer; // 0 - PRefix 1 - Pname - 2 - Tag
    Mode : Integer; //0 ADd 1 Edit
    Mateindex: Double;
    procedure ClearEdits;
    procedure AddNewValue;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

USES MUnit, Options, MatesUnit, LanguageUnit;

{$R *.dfm}

procedure TForm3.ClearEdits;
begin
  Edit1.Text:= '';
  Edit2.Text:= '';
  Edit4.Text:= '';
  CheckBox2.Checked:=False;
  ComboBox1.Text := '';
  StarCb.ItemIndex := 6;
  CheckBox1.Checked:=False;
  RadioButton1.Enabled:=True;
  RadioButton2.Enabled:=True;
  RadioButton3.Enabled:=True;
  Edit4.ReadOnly := False;

end;

procedure TForm3.FormShow(Sender: TObject);
var Str: string;  LastRow: Integer;
begin

  RadioButton1.Checked:= Section = 0;
  RadioButton2.Checked:= Section = 1;
  RadioButton3.Checked:= Section = 2;


   Edit1.Text := ExtractPrefix(PlayerName);
   Edit2.Text := ExtractName(PlayerName);
   Edit4.Text := '';
   ComboBox3.Items.Assign( OptionsForm.RadioGroupClanTag.Items );
   ComboBox3.ItemIndex:=0;
   ComboBox1.Items.Assign( OptionsForm.NoteComboBox.Items );
   ComboBox1.ItemIndex:=-1;

   if  Mode = ADD_NEWFIELD then
   begin

                      RadioButton2.Enabled:= not ( Trunc(Mateindex) in [1,3,7] );
                      RadioButton1.Enabled:= not ( Trunc(Mateindex) in [7,3,2] );
                      RadioButton1.Enabled:=  Trim(Edit1.Text) <> '';
                      RadioButton3.Enabled:= True; //not ( Trunc(Mateindex) in [5,7,6] ); // 4,
                     Button1.Caption:=  GetWORD(72);
   end;

    {EDIT MODE}
    if  Mode > ADD_NEWFIELD then
    begin     

        RadioButton1.Enabled:= Edit1.Enabled;
        RadioButton2.Enabled:= Edit2.Enabled;
        RadioButton3.Enabled:= Edit4.Enabled;


      if RadioButton1.Checked then
      begin
        Str:= Edit1.Text;

        Edit1.SetFocus;
        LastRow:= GetMateIndex(  Str + ' ', fpPrefix);
        if LastRow <> -1 then
        begin

         CheckBox1.Checked := OptionsForm.NextGridPrefix.Cell[1,  LastRow].AsBoolean;
        // Edit1.Text      := OptionsForm.NextGridPrefix.Cells[2, LastRow];
         ComboBox1.Text  := OptionsForm.NextGridPrefix.Cells[3, LastRow];
         StarCb.ItemIndex:= OptionsForm.NextGridPrefix.Cell[4,  LastRow].asInteger;
        end;
      end;

      if RadioButton2.Checked then
      begin
       Str:= Edit2.Text;

       Edit2.SetFocus;
       LastRow:= GetMateIndex(  Str, fpName);
       if LastRow <> -1 then
       begin

         CheckBox1.Checked := OptionsForm.NextGridPname.Cell[1,  LastRow].AsBoolean;
       //  Edit2.Text      := OptionsForm.NextGridPname.Cells[2, LastRow];
         ComboBox1.Text  := OptionsForm.NextGridPname.Cells[3, LastRow];
         StarCb.ItemIndex:= OptionsForm.NextGridPname.Cell[4,  LastRow].asInteger;
       end;
      end;

      if RadioButton3.Checked then
      begin

      
       Str:= Edit2.Text;

        LastRow:=GetMateIndex(Str,  fpClantag); // GetTagIndexByName(  Str);
               
        if LastRow > -1 then
        begin
          Edit4.ReadOnly      :=   True;
          Edit4.Text          :=   OptionsForm.NextGridClantag.Cells[2,  LastRow];
          ComboBox3.ItemIndex :=   Pred(OptionsForm.NextGridClantag.Cell[3, LastRow].AsInteger);
          CheckBox2.Checked   :=   OptionsForm.NextGridClantag.Cell[4,    LastRow ].AsBoolean;
          ComboBox1.Text      :=   OptionsForm.NextGridClantag.Cells[6,   LastRow ];
          StarCb.ItemIndex    :=   OptionsForm.NextGridClantag.Cell[5,    LastRow ].asInteger;
          CheckBox1.Checked   :=   OptionsForm.NextGridClantag.Cell[1,    LastRow ].AsBoolean;
        end;  {}
        { }
        Edit4.SetFocus;




        
      end;

      {Write def params}
      



      Button1.Caption:=  GetWORD(137);
    end;

end;





procedure TForm3.ControlsState(i: integer);
const
  PREFIX_PP = 0; NAME_PP = 1; TAG_PP = 2;
begin
  Edit1.Enabled:=  i = PREFIX_PP;
  Edit2.Enabled:=  i = NAME_PP;
  Edit4.Enabled:=  i = TAG_PP;


  Label3.Enabled    :=  Edit4.Enabled;
  ComboBox3.Enabled :=  Edit4.Enabled;
  CheckBox2.Enabled :=  Edit4.Enabled;
  Label1.Enabled    :=  Edit4.Enabled;



end;

procedure TForm3.Button2Click(Sender: TObject);
begin
 // eAddPrefix
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
  ControlsState( (Sender as TComponent).Tag);
  CheckBox1Click(nil);
end;

procedure TForm3.Label1Click(Sender: TObject);
begin
  CheckBox2.Checked := not CheckBox2.Checked;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin

        if RadioButton3.Checked then
            if HasInvalidChars(Edit4.Text) then
            begin
              MessageBox(0, PChar(GetWORD(128)), PChar(GetWORD(129)) {'Chars (  \ " ~ ,  ) and spaces inside name or prefix are not allowed!', 'Error: invalid character found'}, (16*1) or  MB_OK or MB_TOPMOST );
              Edit4.SetFocus;
              Exit;
            end;


 OptionsForm.AddToGridFromMain;
 ModalResult:= MrOk;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
 if RadioButton1.Checked and CheckBox1.Checked then
 Edit1.Font.Style := [fsBold] else Edit1.Font.Style := [];
 if RadioButton2.Checked and CheckBox1.Checked then
 Edit2.Font.Style := [fsBold] else Edit2.Font.Style := [];
 if RadioButton3.Checked and CheckBox1.Checked then
 Edit4.Font.Style := [fsBold] else Edit4.Font.Style := [];

end;


procedure TForm3.AddNewValue;
var arow: Integer;  
begin
  case Section of


  0: begin


     end;


  end;
     //
end;

end.
