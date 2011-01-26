unit FavAddFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAddToFavForm = class(TForm)
    Label14: TLabel;
    favserv: TEdit;
    Label13: TLabel;
    favnote: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    IPQport:String;
    Capp: String;
    { Public declarations }
  end;

var
  AddToFavForm: TAddToFavForm;

implementation
uses LanguageUnit;

{$R *.dfm}

procedure TAddToFavForm.FormShow(Sender: TObject);
begin
        Memo1.Text:= Capp;
        favserv.Text:=IPQport;
        favnote.Text:='';
        favnote.SetFocus;
end;

end.
