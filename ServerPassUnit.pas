unit ServerPassUnit;

interface

uses
  Windows, Messages, Classes, Controls, Forms,
   StdCtrls;

type
  TPasswordForm2 = class(TForm)
    passwordEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure passwordEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordForm2: TPasswordForm2;

implementation

{$R *.dfm}

procedure TPasswordForm2.passwordEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = 13 then begin ModalResult:= mrOk; Close; end;
end;

end.
