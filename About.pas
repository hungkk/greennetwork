unit About;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls, ShellAPI, ExtCtrls, ComCtrls;
                  //536
type
  TAboutForm = class(TForm)
    Button1: TButton;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel3: TBevel;
    Label2: TLabel;
    VersionLabel: TLabel;
    Label8: TLabel;
    Button3: TButton;
    UPDPanel: TPanel;
    LogRichEdit: TRichEdit;
    Button4: TButton;
    Button5: TButton;
    Button2: TButton;
    Label7: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure CnWaterImage1BeforeRender(Sender: TObject; ABitmap: TBitmap);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label7Click(Sender: TObject);
  private
    // FY: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;


var
  AboutForm: TAboutForm;
  DownLink : string;
implementation

uses Unit1;

{$R *.dfm}

procedure TAboutForm.Button1Click(Sender: TObject);
begin
close;
end;

procedure TAboutForm.CnWaterImage1BeforeRender(Sender: TObject;
  ABitmap: TBitmap);


  function iL(c, i: Integer):Integer;
  begin
     Result := c + (i * 15);

  end;



begin
     (*
  CnWaterImage1.Radius:= Random(50);


  with ABitmap.Canvas do
  begin
    Font.Name   := 'Courier New';
    Font.Size   := 10;
    Font.Height := -13;
    Font.Charset:= DEFAULT_CHARSET;
    Font.Pitch  := fpDefault;
    Brush.Style := bsClear;


    Font.Color  := $000080FF;//$00CAFFCA; //clBlack;
    Font.Style  := [fsBold];
    TextOut(10, iL(FY,1) , 'PR - Green Network ' + VerNo);


    Font.Color  := clAqua; //clNavy;
    Font.Style  := [fsUnderline];
    TextOut(10, iL(FY,3) , 'Greetings to:');

    Font.Color  := $000080FF;//clBlack;
    Font.Style  := Font.Style - [fsUnderline];
    TextOut(10, iL(FY,4), 'Luigi Auriemma');
    TextOut(10, iL(FY,5), 'Primoz Gabrijelcic');
    TextOut(10, iL(FY,6), 'Francois Piette');


    Font.Color  := clAqua;//clNavy;
    Font.Style  := [fsUnderline];
    TextOut(10, iL(FY,9), 'Special thanks to:');

    Font.Color  := $000080FF;//clBlack;
    Font.Style  := Font.Style - [fsUnderline];
    TextOut(10, iL(FY,10),'[UAGs] Funker_Revoke');
    { }

    Font.Color  := clAqua;//clNavy;
    Font.Style  := [fsUnderline];
    TextOut(10, iL(FY,13), 'Home page:');

    Font.Color  := $000080FF;//clBlack;
    Font.Style  := Font.Style - [fsUnderline];
    TextOut(10, iL(FY,14),'prgnetwork.blogspot.com');

  end;    *)
end;

procedure TAboutForm.Timer1Timer(Sender: TObject);
begin
 { Dec(FY);
   if FY < -10 then
   Timer1.Enabled:= False; }
 //   FY := CnWaterImage1.Height;
end;

procedure TAboutForm.FormShow(Sender: TObject);
begin
 // UPDPanel.Visible := False;
 // UPDPanel.top := 500;
  VersionLabel.Caption := Format('ver: %s Build %s',[VerNo, BuildDate]);
 { Randomize;
  FY:=273;
  Timer1.Enabled:= True;  }
end;

procedure TAboutForm.Button5Click(Sender: TObject);
begin
  AboutForm.Width := 536;

  UPDPanel.Visible := true;
  Memo1.Visible :=      False;
  UPDPanel.top := 8;
  UPDPanel.left:= 5;
  Form1.GetUpdates(DownLink);

  Button4.Enabled := DownLink <> '';

end;

procedure TAboutForm.Button2Click(Sender: TObject);
begin
     if not Button4.Enabled then
        FHttpCli.Abort;

     AboutForm.Width := 291;
     //FHttpCli.a
     UPDPanel.Visible := False;
     Memo1.Visible :=  true;
     UPDPanel.top := 500;
     Close;
     //UPDPanel.left:= 5;
end;

procedure TAboutForm.Button4Click(Sender: TObject);
begin
ShellExecute(0,'OPEN', pChar(DownLink),           NIL, NIL, SW_SHOWNORMAL);
end;

procedure TAboutForm.Button3Click(Sender: TObject);
begin
ShellExecute(0,'OPEN', pChar('http://code.google.com/p/greennetwork/'),  NIL, NIL, SW_SHOWNORMAL);
end;

procedure TAboutForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Width := 291;
end;

procedure TAboutForm.Label7Click(Sender: TObject);
begin
  Button3Click(nil);
end;

end.
