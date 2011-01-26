object AddToFavForm: TAddToFavForm
  Left = 505
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Add to favorites'
  ClientHeight = 134
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 13
    Top = 50
    Width = 40
    Height = 13
    Caption = 'IP:QPort'
  end
  object Label13: TLabel
    Left = 149
    Top = 50
    Width = 23
    Height = 13
    Caption = 'Note'
  end
  object favserv: TEdit
    Left = 13
    Top = 66
    Width = 120
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object favnote: TComboBox
    Left = 149
    Top = 66
    Width = 183
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object Button2: TButton
    Left = 91
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object Button3: TButton
    Left = 179
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 13
    Top = 8
    Width = 320
    Height = 34
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
