program GNetwork;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UnitGrid in 'UnitGrid.pas',
  MUnit in 'MUnit.pas',
  Options in 'Options.pas' {OptionsForm},
  KOLTrans in 'KOLTrans.pas',
  About in 'About.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Green Network';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TOptionsForm, OptionsForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
