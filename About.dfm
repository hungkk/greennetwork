object AboutForm: TAboutForm
  Left = 514
  Top = 285
  BorderStyle = bsDialog
  Caption = 'Peace'
  ClientHeight = 302
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 9
    Top = 256
    Width = 265
    Height = 17
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 104
    Top = 560
    Width = 96
    Height = 16
    Caption = 'Greetings to'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 584
    Width = 83
    Height = 39
    Caption = 'Luigi Auriemma'#13#10'Primoz Gabrijelcic'#13#10'Francois Piette'
  end
  object Label5: TLabel
    Left = 104
    Top = 656
    Width = 178
    Height = 13
    Caption = '[UAGs] Funker_Revoke (beta testing)'
  end
  object Label6: TLabel
    Left = 104
    Top = 632
    Width = 82
    Height = 13
    Caption = 'Special thanks to'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 9
    Top = 32
    Width = 265
    Height = 25
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 9
    Top = 8
    Width = 181
    Height = 13
    Caption = 'Project Reality - Green Network'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object VersionLabel: TLabel
    Left = 9
    Top = 40
    Width = 134
    Height = 13
    Caption = 'ver: 1.1.35 Build 2010.03.20'
  end
  object Label8: TLabel
    Left = 9
    Top = 64
    Width = 257
    Height = 57
    AutoSize = False
    Caption = 
      'This is a freeware tool, you can use it freely without any fee. ' +
      'You can copy or distribute it in any form, without any fee. The ' +
      'source code can be obtained from Internet.'
    WordWrap = True
  end
  object Label7: TLabel
    Left = 8
    Top = 144
    Width = 194
    Height = 13
    Cursor = crHandPoint
    Caption = 'http://code.google.com/p/greennetwork'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = Label7Click
  end
  object Label1: TLabel
    Left = 8
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Home'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 198
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Close'
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 9
    Top = 264
    Width = 69
    Height = 25
    Caption = 'Web'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 85
    Top = 264
    Width = 106
    Height = 25
    Caption = 'Check for updates'
    TabOrder = 3
    OnClick = Button5Click
  end
  object UPDPanel: TPanel
    Left = 5
    Top = 296
    Width = 516
    Height = 284
    TabOrder = 2
    object LogRichEdit: TRichEdit
      Left = 8
      Top = 8
      Width = 497
      Height = 233
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object Button4: TButton
      Left = 432
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Download'
      Enabled = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 352
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 176
    Width = 265
    Height = 65
    Color = clBtnFace
    Lines.Strings = (
      'Thanks to: Luigi Auriemma, Primoz Gabrijelcic, '
      'Francois Piette, Funker_Revoke, Marek Mauder')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
