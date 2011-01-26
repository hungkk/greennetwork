object Form3: TForm3
  Left = 330
  Top = 281
  BorderStyle = bsDialog
  ClientHeight = 191
  ClientWidth = 468
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
  object Label12: TLabel
    Left = 210
    Top = 138
    Width = 19
    Height = 13
    Caption = 'Star'
  end
  object Label13: TLabel
    Left = 12
    Top = 140
    Width = 23
    Height = 13
    Caption = 'Note'
  end
  object Label3: TLabel
    Left = 16
    Top = 89
    Width = 129
    Height = 13
    AutoSize = False
    Caption = 'Tag possition:'
  end
  object Bevel1: TBevel
    Left = 338
    Top = 8
    Width = 10
    Height = 177
    Shape = bsRightLine
  end
  object Label1: TLabel
    Left = 16
    Top = 113
    Width = 93
    Height = 13
    Caption = 'Tag case sensetive'
    OnClick = Label1Click
  end
  object CheckBox2: TCheckBox
    Left = 160
    Top = 113
    Width = 169
    Height = 17
    Alignment = taLeftJustify
    TabOrder = 10
  end
  object ComboBox1: TComboBox
    Left = 13
    Top = 156
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object Button3: TButton
    Left = 362
    Top = 153
    Width = 95
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object StarCb: TJvImageComboBox
    Left = 208
    Top = 154
    Width = 124
    Height = 23
    Style = csOwnerDrawFixed
    ButtonStyle = fsLighter
    DroppedWidth = 174
    ImageHeight = 0
    ImageWidth = 16
    Images = Form1.PngImageList1
    ItemHeight = 17
    ItemIndex = 6
    TabOrder = 2
    Items = <
      item
        Brush.Style = bsClear
        ImageIndex = 0
        Indent = 0
        Text = 'Gold'
      end
      item
        Brush.Style = bsClear
        ImageIndex = 1
        Indent = 0
        Text = 'Black'
      end
      item
        Brush.Style = bsClear
        ImageIndex = 2
        Indent = 0
        Text = 'Silver'
      end
      item
        Brush.Style = bsClear
        ImageIndex = 3
        Indent = 0
        Text = 'Red'
      end
      item
        Brush.Style = bsClear
        ImageIndex = 4
        Indent = 0
        Text = 'Green'
      end
      item
        Brush.Style = bsClear
        ImageIndex = 5
        Indent = 0
        Text = 'Blue'
      end
      item
        Brush.Style = bsClear
        Indent = 0
        Text = 'None'
      end>
  end
  object Edit1: TEdit
    Left = 11
    Top = 32
    Width = 65
    Height = 21
    MaxLength = 6
    ReadOnly = True
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 91
    Top = 32
    Width = 113
    Height = 21
    MaxLength = 20
    ReadOnly = True
    TabOrder = 4
  end
  object RadioButton1: TRadioButton
    Left = 11
    Top = 12
    Width = 66
    Height = 17
    Caption = 'Prefix'
    TabOrder = 5
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Tag = 1
    Left = 91
    Top = 12
    Width = 112
    Height = 17
    Caption = 'Player name'
    TabOrder = 6
    OnClick = RadioButton1Click
  end
  object RadioButton3: TRadioButton
    Tag = 2
    Left = 219
    Top = 12
    Width = 113
    Height = 17
    Caption = 'Tag'
    TabOrder = 7
    OnClick = RadioButton1Click
  end
  object Edit4: TEdit
    Left = 219
    Top = 32
    Width = 113
    Height = 21
    MaxLength = 20
    TabOrder = 8
  end
  object CheckBox1: TCheckBox
    Left = 11
    Top = 63
    Width = 318
    Height = 17
    Caption = 'Bolded'
    TabOrder = 9
    OnClick = CheckBox1Click
  end
  object ComboBox3: TComboBox
    Left = 152
    Top = 86
    Width = 179
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 11
    Text = '1) at the beginning'
    Items.Strings = (
      '1) at the beginning'
      '2) at the end'
      '3) inside name'
      '4) any where')
  end
  object Button1: TButton
    Left = 362
    Top = 121
    Width = 95
    Height = 25
    Caption = 'Add\Save'
    TabOrder = 12
    OnClick = Button1Click
  end
end
