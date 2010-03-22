object PasswordForm2: TPasswordForm2
  Left = 686
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Password required'
  ClientHeight = 122
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 37
    Top = 20
    Width = 73
    Height = 13
    Caption = 'Enter password'
  end
  object passwordEdit: TEdit
    Left = 36
    Top = 44
    Width = 185
    Height = 21
    TabOrder = 0
    OnKeyDown = passwordEditKeyDown
  end
  object Button1: TButton
    Left = 146
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Button2: TButton
    Left = 37
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
end
