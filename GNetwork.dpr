program GNetwork;

uses
  FastMM4,
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UnitGrid in 'UnitGrid.pas',
  MUnit in 'MUnit.pas',
  Options in 'Options.pas' {OptionsForm},
  KOLTrans in 'KOLTrans.pas',
  About in 'About.pas' {AboutForm},
  ServerPassUnit in 'ServerPassUnit.pas' {PasswordForm2},
  LanguageUnit in 'LanguageUnit.pas',
  MatesUnit in 'MatesUnit.pas',
  CanelsUnit in 'CanelsUnit.pas',
  FavAddFrm in 'FavAddFrm.pas' {AddToFavForm},
  AdvaddBListFrmUnit in 'AdvaddBListFrmUnit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Green Network';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TOptionsForm, OptionsForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TPasswordForm2, PasswordForm2);
  Application.CreateForm(TAddToFavForm, AddToFavForm);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
