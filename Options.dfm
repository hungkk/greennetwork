object OptionsForm: TOptionsForm
  Left = 496
  Top = 135
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 450
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 625
    Height = 399
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 145
      Top = 1
      Height = 397
    end
    object JvPageListTreeView1: TJvPageListTreeView
      Left = 1
      Top = 1
      Width = 144
      Height = 397
      ShowButtons = True
      PageDefault = 0
      PageList = JvPageList1
      Align = alLeft
      ShowRoot = False
      Indent = 19
      RowSelect = True
      TabOrder = 0
      OnChange = JvPageListTreeView1Change
      Items.Data = {
        05000000230000000000000000000000FFFFFFFFFFFFFFFF0000000003000000
        0A4275646479206C697374210000000000000000000000FFFFFFFFFFFFFFFF00
        00000000000000085072656669786573260000000000000000000000FFFFFFFF
        FFFFFFFF00000000000000000D506C6179657273206E616D6573220000000000
        000000000000FFFFFFFFFFFFFFFF000000000000000009436C616E2074616773
        2A0000000000000000000000FFFFFFFFFFFFFFFF010000000000000011466176
        6F72697465732073657276657273290000000000000000000000FFFFFFFFFFFF
        FFFF02000000020000001047656E6572616C2073657474696E67731F00000000
        00000000000000FFFFFFFFFFFFFFFF020000000000000006456E67696E651F00
        00000000000000000000FFFFFFFFFFFFFFFF0200000000000000065669737561
        6C240000000000000000000000FFFFFFFFFFFFFFFF03000000000000000B4A6F
        696E20736572766572270000000000000000000000FFFFFFFFFFFFFFFF040000
        00000000000E47616D655370792066696C746572}
      Items.Links = {
        0A00000000000000000000000000000000000000010000000200000002000000
        020000000300000004000000}
    end
    object JvPageList1: TJvPageList
      Left = 148
      Top = 1
      Width = 476
      Height = 397
      ActivePage = JvJoinServerPage
      PropagateEnable = False
      Align = alClient
      object JvMatesPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 476
        Height = 397
        object JvGradientHeaderPanel2: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 476
          Height = 30
          GradientStartColor = 14540253
          GradientStyle = grVertical
          LabelCaption = 'Buddy list'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clGray
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = [fsBold]
          LabelAlignment = taLeftJustify
          Align = alTop
          DoubleBuffered = False
          TabOrder = 0
        end
        object NxPageControl1: TNxPageControl
          Left = 0
          Top = 30
          Width = 476
          Height = 367
          ActivePage = NxTabSheet4
          ActivePageIndex = 0
          Align = alClient
          TabOrder = 1
          OnClick = BuddyListWorks
          BackgroundColor = 14540253
          BackgroundKind = bkSolid
          Margin = 0
          Options = [pgBoldActiveTab]
          Spacing = 0
          TabHeight = 17
          TabStyle = tsClassic
          object NxTabSheet4: TNxTabSheet
            Caption = 'Prefixes'
            PageIndex = 0
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            object Label17: TLabel
              Left = 10
              Top = 16
              Width = 26
              Height = 13
              Caption = 'Prefix'
            end
            object Label21: TLabel
              Left = 10
              Top = 64
              Width = 59
              Height = 13
              Caption = 'Custom note'
            end
            object Label25: TLabel
              Left = 210
              Top = 16
              Width = 19
              Height = 13
              Caption = 'Star'
            end
            object NextGridPrefix: TNextGrid
              Left = 10
              Top = 152
              Width = 453
              Height = 184
              AppearanceOptions = [aoHighlightSlideCells]
              HeaderStyle = hsOutlook
              Options = [goDisableColumnMoving, goHeader, goMultiSelect, goSecondClickEdit, goSelectFullRow, goInplaceEditEvents]
              TabOrder = 0
              TabStop = True
              object NxIncrementColumn1: TNxIncrementColumn
                DefaultWidth = 27
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Position = 0
                SortType = stAlphabetic
                Width = 27
              end
              object NxCheckBoxColumn1: TNxCheckBoxColumn
                Alignment = taCenter
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Friend'
                Header.DisplayMode = dmImageOnly
                Header.Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF585858000000000000000000000000000000000000111111C1C1
                  C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED00000000000000
                  00003D3D3D3D3D3D000000000000000000C1C1C1FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF111111000000000000D7D7D7FFFFFF0000000000000000
                  003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27272700000000
                  0000D7D7D7D7D7D7000000000000000000585858FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF2727270000000000000000000000000000000000005858
                  58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27272700000000
                  0000959595585858000000000000EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF272727000000000000D7D7D7D7D7D70000000000003D3D
                  3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07070700000000
                  00009595955858580000000000003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF585858000000000000000000000000000000000000000000EDED
                  EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FFFFFFFF
                  FFFFFFFFFFD7D7D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
                Position = 1
                SortType = stBoolean
                Width = 24
              end
              object NxTextColumn1: TNxTextColumn
                DefaultWidth = 173
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Prefix'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 2
                SortType = stAlphabetic
                Width = 173
              end
              object NxTextColumn5: TNxTextColumn
                DefaultWidth = 172
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Note'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 3
                SortType = stAlphabetic
                Width = 172
              end
              object NxComboBoxColumn2: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Star'
                Header.DisplayMode = dmImageOnly
                Header.Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000058
                  A0100050A0D00048909000488010000000000000000000000000000000000000
                  00000040801000408090004080D0004080100000000000000000000000000068
                  C0201068A0E01070A0FF005080F0004890400000000000000000000000000040
                  8040004870F0005070FF105070F0004080200000000000000000000000000000
                  00001070C0C01098C0FF10A0D0FF005080FF0050909000489010004080900040
                  60FF0078B0FF0068A0FF005070F0000000000000000000000000000000000000
                  00001080D0201070B0F030C8E0FF20C8E0FF1070A0F0005090F0006090FF00A8
                  D0FF00A0D0FF003860FF10588030000000000000000000000000000000000000
                  0000000000002088D0902098C0F040D8F0FF30D0F0FF20B8E0FF10C0E0FF10B8
                  E0FF0068A0FF105880B000000000000000000000000000000000000000000000
                  0000000000003098E0702088C0F050E0F0FF40E0F0FF30D8F0FF20D0E0FF10C8
                  E0FF005080FF00509070000000000000000000000000000000000000000050B0
                  F01050A8F0B040A0D0F070E0F0FF60E8F0FF50E0F0FF50E0F0FF40D8F0FF30D0
                  F0FF10B8E0FF005890FF0058A0B000509010000000000000000060B8F03060B0
                  E0E070C8E0F090F0FFFF90F8FFFF80F0FFFF70E8F0FF60E8F0FF50E0F0FF40D8
                  F0FF30D0F0FF20C8E0FF1080B0FF005890F00050A0300000000060B8F0FF50B0
                  E0FF50B0E0FF50A8E0FF50A8E0FF50B0E0F080F0F0FF80F0F0FF60E8F0FF3088
                  C0E01078C0FF1068B0FF0060B0FF0058A0FF0060B0FF00000000000000000000
                  000000000000000000000000000070B0E0D080D8F0FF90F8FFFF60C8E0F040A0
                  E0B0000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000070B8F05060C0F0FFA0F8FFFF60B0D0E050A8
                  F050000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000060B8F00060B0E0F090E8F0FF60B0E0F060B8
                  F000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000070B8E0A060B8E0F060B8F0900000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000060B8F03060B8F0F060B8F0300000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                Position = 4
                SortType = stNumeric
                Width = 24
                Images = Form1.PngImageList1
              end
            end
            object EditPrefix: TEdit
              Left = 10
              Top = 32
              Width = 183
              Height = 21
              TabOrder = 1
            end
            object Button12: TButton
              Tag = 1
              Left = 365
              Top = 16
              Width = 97
              Height = 25
              Caption = 'Add'
              TabOrder = 2
              OnClick = BuddyListWorks
            end
            object Button13: TButton
              Tag = 3
              Left = 365
              Top = 48
              Width = 97
              Height = 25
              Caption = 'Copy'
              TabOrder = 3
              OnClick = BuddyListWorks
            end
            object Button14: TButton
              Tag = 4
              Left = 365
              Top = 112
              Width = 97
              Height = 25
              Caption = 'Delete'
              TabOrder = 4
              OnClick = BuddyListWorks
            end
            object Button6: TButton
              Tag = 2
              Left = 365
              Top = 80
              Width = 97
              Height = 25
              Caption = 'Edit'
              TabOrder = 5
              OnClick = BuddyListWorks
            end
            object PrefixStarCb: TJvImageComboBox
              Left = 208
              Top = 32
              Width = 137
              Height = 23
              Style = csOwnerDrawFixed
              ButtonStyle = fsLighter
              DroppedWidth = 137
              ImageHeight = 0
              ImageWidth = 16
              Images = Form1.PngImageList1
              ItemHeight = 17
              ItemIndex = 6
              TabOrder = 6
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
            object BoldPrefixCb: TCheckBox
              Left = 10
              Top = 115
              Width = 337
              Height = 17
              Caption = 'In bold'
              TabOrder = 7
            end
          end
          object NxTabSheet5: TNxTabSheet
            Caption = 'Players names'
            PageIndex = 1
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            object Label18: TLabel
              Left = 10
              Top = 16
              Width = 58
              Height = 13
              Caption = 'Player name'
            end
            object Label22: TLabel
              Left = 10
              Top = 64
              Width = 59
              Height = 13
              Caption = 'Custom note'
            end
            object Label23: TLabel
              Left = 210
              Top = 16
              Width = 19
              Height = 13
              Caption = 'Star'
            end
            object NextGridPname: TNextGrid
              Left = 10
              Top = 152
              Width = 453
              Height = 184
              AppearanceOptions = [aoHighlightSlideCells]
              HeaderStyle = hsOutlook
              Options = [goDisableColumnMoving, goHeader, goMultiSelect, goSecondClickEdit, goSelectFullRow, goInplaceEditEvents]
              TabOrder = 0
              TabStop = True
              object NxIncrementColumn2: TNxIncrementColumn
                DefaultWidth = 27
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Position = 0
                SortType = stAlphabetic
                Width = 27
              end
              object NxCheckBoxColumn2: TNxCheckBoxColumn
                Alignment = taCenter
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Friend'
                Header.DisplayMode = dmImageOnly
                Header.Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF585858000000000000000000000000000000000000111111C1C1
                  C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED00000000000000
                  00003D3D3D3D3D3D000000000000000000C1C1C1FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF111111000000000000D7D7D7FFFFFF0000000000000000
                  003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27272700000000
                  0000D7D7D7D7D7D7000000000000000000585858FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF2727270000000000000000000000000000000000005858
                  58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27272700000000
                  0000959595585858000000000000EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF272727000000000000D7D7D7D7D7D70000000000003D3D
                  3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07070700000000
                  00009595955858580000000000003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF585858000000000000000000000000000000000000000000EDED
                  EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FFFFFFFF
                  FFFFFFFFFFD7D7D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
                Position = 1
                SortType = stBoolean
                Width = 24
              end
              object NxTextColumn2: TNxTextColumn
                DefaultWidth = 173
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Player name'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 2
                SortType = stAlphabetic
                Width = 173
              end
              object NxTextColumn4: TNxTextColumn
                DefaultWidth = 172
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Note'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 3
                SortType = stAlphabetic
                Width = 172
              end
              object NxComboBoxColumn3: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Star'
                Header.DisplayMode = dmImageOnly
                Header.Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000058
                  A0100050A0D00048909000488010000000000000000000000000000000000000
                  00000040801000408090004080D0004080100000000000000000000000000068
                  C0201068A0E01070A0FF005080F0004890400000000000000000000000000040
                  8040004870F0005070FF105070F0004080200000000000000000000000000000
                  00001070C0C01098C0FF10A0D0FF005080FF0050909000489010004080900040
                  60FF0078B0FF0068A0FF005070F0000000000000000000000000000000000000
                  00001080D0201070B0F030C8E0FF20C8E0FF1070A0F0005090F0006090FF00A8
                  D0FF00A0D0FF003860FF10588030000000000000000000000000000000000000
                  0000000000002088D0902098C0F040D8F0FF30D0F0FF20B8E0FF10C0E0FF10B8
                  E0FF0068A0FF105880B000000000000000000000000000000000000000000000
                  0000000000003098E0702088C0F050E0F0FF40E0F0FF30D8F0FF20D0E0FF10C8
                  E0FF005080FF00509070000000000000000000000000000000000000000050B0
                  F01050A8F0B040A0D0F070E0F0FF60E8F0FF50E0F0FF50E0F0FF40D8F0FF30D0
                  F0FF10B8E0FF005890FF0058A0B000509010000000000000000060B8F03060B0
                  E0E070C8E0F090F0FFFF90F8FFFF80F0FFFF70E8F0FF60E8F0FF50E0F0FF40D8
                  F0FF30D0F0FF20C8E0FF1080B0FF005890F00050A0300000000060B8F0FF50B0
                  E0FF50B0E0FF50A8E0FF50A8E0FF50B0E0F080F0F0FF80F0F0FF60E8F0FF3088
                  C0E01078C0FF1068B0FF0060B0FF0058A0FF0060B0FF00000000000000000000
                  000000000000000000000000000070B0E0D080D8F0FF90F8FFFF60C8E0F040A0
                  E0B0000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000070B8F05060C0F0FFA0F8FFFF60B0D0E050A8
                  F050000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000060B8F00060B0E0F090E8F0FF60B0E0F060B8
                  F000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000070B8E0A060B8E0F060B8F0900000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000060B8F03060B8F0F060B8F0300000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                Position = 4
                SortType = stNumeric
                Width = 24
                Images = Form1.PngImageList1
              end
            end
            object EditPname: TEdit
              Left = 10
              Top = 32
              Width = 183
              Height = 21
              TabOrder = 1
            end
            object Button15: TButton
              Tag = 7
              Left = 365
              Top = 16
              Width = 97
              Height = 25
              Caption = 'Add'
              TabOrder = 2
              OnClick = BuddyListWorks
            end
            object Button16: TButton
              Tag = 9
              Left = 365
              Top = 48
              Width = 97
              Height = 25
              Caption = 'Copy'
              TabOrder = 3
              OnClick = BuddyListWorks
            end
            object Button17: TButton
              Tag = 10
              Left = 365
              Top = 112
              Width = 97
              Height = 25
              Caption = 'Delete'
              TabOrder = 4
              OnClick = BuddyListWorks
            end
            object NameStarCb: TJvImageComboBox
              Left = 208
              Top = 32
              Width = 137
              Height = 23
              Style = csOwnerDrawFixed
              ButtonStyle = fsLighter
              DroppedWidth = 137
              ImageHeight = 0
              ImageWidth = 16
              Images = Form1.PngImageList1
              ItemHeight = 17
              ItemIndex = 6
              TabOrder = 5
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
            object Button5: TButton
              Tag = 8
              Left = 365
              Top = 80
              Width = 97
              Height = 25
              Caption = 'Edit'
              TabOrder = 6
              OnClick = BuddyListWorks
            end
            object BoldNameCb: TCheckBox
              Left = 10
              Top = 115
              Width = 337
              Height = 17
              Caption = 'In bold'
              TabOrder = 7
            end
          end
          object NxTabSheet6: TNxTabSheet
            Caption = 'Clans tags'
            PageIndex = 2
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            object Label19: TLabel
              Left = 10
              Top = 16
              Width = 19
              Height = 13
              Caption = 'Tag'
            end
            object Label24: TLabel
              Left = 210
              Top = 16
              Width = 19
              Height = 13
              Caption = 'Star'
            end
            object Label26: TLabel
              Left = 10
              Top = 64
              Width = 59
              Height = 13
              Caption = 'Custom note'
            end
            object NextGridClantag: TNextGrid
              Left = 10
              Top = 224
              Width = 453
              Height = 112
              AppearanceOptions = [aoHighlightSlideCells]
              HeaderStyle = hsOutlook
              Options = [goDisableColumnMoving, goHeader, goMultiSelect, goSecondClickEdit, goSelectFullRow, goInplaceEditEvents]
              TabOrder = 0
              TabStop = True
              object NxIncrementColumn3: TNxIncrementColumn
                DefaultWidth = 30
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Position = 0
                SortType = stAlphabetic
                Width = 30
              end
              object NxCheckBoxColumn3: TNxCheckBoxColumn
                Alignment = taCenter
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Friend'
                Header.DisplayMode = dmImageOnly
                Header.Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF585858000000000000000000000000000000000000111111C1C1
                  C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED00000000000000
                  00003D3D3D3D3D3D000000000000000000C1C1C1FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF111111000000000000D7D7D7FFFFFF0000000000000000
                  003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27272700000000
                  0000D7D7D7D7D7D7000000000000000000585858FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF2727270000000000000000000000000000000000005858
                  58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27272700000000
                  0000959595585858000000000000EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF272727000000000000D7D7D7D7D7D70000000000003D3D
                  3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07070700000000
                  00009595955858580000000000003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF585858000000000000000000000000000000000000000000EDED
                  EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7FFFFFFFF
                  FFFFFFFFFFD7D7D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
                ParentFont = False
                Position = 1
                SortType = stBoolean
                Width = 24
              end
              object NxTextColumn3: TNxTextColumn
                DefaultWidth = 92
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Tag'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 2
                SortType = stAlphabetic
                Width = 92
              end
              object NxComboBoxColumn1: TNxNumberColumn
                Alignment = taCenter
                DefaultValue = '0'
                DefaultWidth = 74
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Possition'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                Position = 3
                SortType = stNumeric
                Width = 74
                Increment = 1.000000000000000000
                Precision = 0
              end
              object NxCheckBoxColumn4: TNxCheckBoxColumn
                Alignment = taCenter
                DefaultWidth = 128
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Case sensetive'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
                Position = 4
                SortType = stBoolean
                Width = 128
              end
              object NxComboBoxColumn4: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Star'
                Header.DisplayMode = dmImageOnly
                Header.Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000058
                  A0100050A0D00048909000488010000000000000000000000000000000000000
                  00000040801000408090004080D0004080100000000000000000000000000068
                  C0201068A0E01070A0FF005080F0004890400000000000000000000000000040
                  8040004870F0005070FF105070F0004080200000000000000000000000000000
                  00001070C0C01098C0FF10A0D0FF005080FF0050909000489010004080900040
                  60FF0078B0FF0068A0FF005070F0000000000000000000000000000000000000
                  00001080D0201070B0F030C8E0FF20C8E0FF1070A0F0005090F0006090FF00A8
                  D0FF00A0D0FF003860FF10588030000000000000000000000000000000000000
                  0000000000002088D0902098C0F040D8F0FF30D0F0FF20B8E0FF10C0E0FF10B8
                  E0FF0068A0FF105880B000000000000000000000000000000000000000000000
                  0000000000003098E0702088C0F050E0F0FF40E0F0FF30D8F0FF20D0E0FF10C8
                  E0FF005080FF00509070000000000000000000000000000000000000000050B0
                  F01050A8F0B040A0D0F070E0F0FF60E8F0FF50E0F0FF50E0F0FF40D8F0FF30D0
                  F0FF10B8E0FF005890FF0058A0B000509010000000000000000060B8F03060B0
                  E0E070C8E0F090F0FFFF90F8FFFF80F0FFFF70E8F0FF60E8F0FF50E0F0FF40D8
                  F0FF30D0F0FF20C8E0FF1080B0FF005890F00050A0300000000060B8F0FF50B0
                  E0FF50B0E0FF50A8E0FF50A8E0FF50B0E0F080F0F0FF80F0F0FF60E8F0FF3088
                  C0E01078C0FF1068B0FF0060B0FF0058A0FF0060B0FF00000000000000000000
                  000000000000000000000000000070B0E0D080D8F0FF90F8FFFF60C8E0F040A0
                  E0B0000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000070B8F05060C0F0FFA0F8FFFF60B0D0E050A8
                  F050000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000060B8F00060B0E0F090E8F0FF60B0E0F060B8
                  F000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000070B8E0A060B8E0F060B8F0900000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000060B8F03060B8F0F060B8F0300000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                Position = 5
                SortType = stNumeric
                Width = 24
                Images = Form1.PngImageList1
              end
              object NxTextColumn6: TNxTextColumn
                DefaultWidth = 160
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Note'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 6
                SortType = stAlphabetic
                Width = 160
              end
            end
            object RadioGroupClanTag: TRadioGroup
              Left = 10
              Top = 140
              Width = 455
              Height = 73
              Caption = 'Tag possition in name'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                '1) at the beginning'
                '2) at the end'
                '3) inside name'
                '4) any where')
              TabOrder = 1
            end
            object CheckBoxClanTagCaseSens: TCheckBox
              Left = 10
              Top = 115
              Width = 337
              Height = 17
              Caption = 'Case sensetive'
              TabOrder = 2
            end
            object EditClanTag: TEdit
              Left = 10
              Top = 32
              Width = 183
              Height = 21
              TabOrder = 3
            end
            object Button18: TButton
              Tag = 13
              Left = 365
              Top = 16
              Width = 97
              Height = 25
              Caption = 'Add'
              TabOrder = 4
              OnClick = BuddyListWorks
            end
            object Button19: TButton
              Tag = 15
              Left = 365
              Top = 48
              Width = 97
              Height = 25
              Caption = 'Copy'
              TabOrder = 5
              OnClick = BuddyListWorks
            end
            object Button20: TButton
              Tag = 16
              Left = 365
              Top = 112
              Width = 97
              Height = 25
              Caption = 'Delete'
              TabOrder = 6
              OnClick = BuddyListWorks
            end
            object Button7: TButton
              Tag = 14
              Left = 365
              Top = 80
              Width = 97
              Height = 25
              Caption = 'Edit'
              TabOrder = 7
              OnClick = BuddyListWorks
            end
            object TagStarCb: TJvImageComboBox
              Left = 208
              Top = 32
              Width = 137
              Height = 23
              Style = csOwnerDrawFixed
              ButtonStyle = fsLighter
              DroppedWidth = 137
              ImageHeight = 0
              ImageWidth = 16
              Images = Form1.PngImageList1
              ItemHeight = 17
              ItemIndex = 6
              TabOrder = 8
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
          end
        end
        object NoteComboBox: TComboBox
          Left = 10
          Top = 131
          Width = 334
          Height = 21
          ItemHeight = 13
          MaxLength = 255
          TabOrder = 2
        end
      end
      object JvServersPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 476
        Height = 397
        object Label6: TLabel
          Left = 10
          Top = 156
          Width = 23
          Height = 13
          Caption = 'Note'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 10
          Top = 112
          Width = 124
          Height = 13
          Caption = 'Server ( Format: IP:QPort )'
        end
        object JvGradientHeaderPanel1: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 476
          Height = 30
          GradientStartColor = 14540253
          GradientStyle = grVertical
          LabelCaption = 'Favorites servers'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clGray
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = [fsBold]
          LabelAlignment = taLeftJustify
          Align = alTop
          DoubleBuffered = False
          TabOrder = 0
        end
        object ServerEdit: TEdit
          Left = 10
          Top = 128
          Width = 151
          Height = 21
          TabOrder = 1
        end
        object AddServerButton: TButton
          Tag = 1
          Left = 368
          Top = 112
          Width = 95
          Height = 25
          Caption = 'Add'
          TabOrder = 2
          OnClick = FavoritesServersWorks
        end
        object NoteMemo1: TMemo
          Left = 10
          Top = 48
          Width = 453
          Height = 49
          Lines.Strings = (
            
              '*Note: In order to get valid server details you must enter Query' +
              'Port instead of GamePort,'
            'by default GamePort is 16567 and QueryPort is 29900.')
          ParentColor = True
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object CopyFavServBtn: TButton
          Tag = 2
          Left = 368
          Top = 144
          Width = 95
          Height = 25
          Caption = 'Copy'
          TabOrder = 4
          OnClick = FavoritesServersWorks
        end
        object DelBtnFavServ: TButton
          Tag = 3
          Left = 368
          Top = 208
          Width = 95
          Height = 25
          Caption = 'Delete'
          TabOrder = 5
          OnClick = FavoritesServersWorks
        end
        object NextGridFavServers: TNextGrid
          Left = 10
          Top = 208
          Width = 343
          Height = 176
          AppearanceOptions = [aoHighlightSlideCells]
          HeaderStyle = hsOutlook
          Options = [goDisableColumnMoving, goHeader, goMultiSelect, goSecondClickEdit, goSelectFullRow, goInplaceEditEvents]
          TabOrder = 6
          TabStop = True
          object NxIncrementColumn4: TNxIncrementColumn
            DefaultWidth = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Position = 0
            SortType = stAlphabetic
            Width = 27
          end
          object NxTextColumn7: TNxTextColumn
            DefaultWidth = 133
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'IP:QPort'
            Position = 1
            SortType = stAlphabetic
            Width = 133
          end
          object NxTextColumn8: TNxTextColumn
            DefaultWidth = 172
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Note'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 2
            SortType = stAlphabetic
            Width = 172
          end
        end
        object ServerNoteEdit: TEdit
          Left = 10
          Top = 172
          Width = 343
          Height = 21
          MaxLength = 255
          TabOrder = 7
        end
        object AppEditFavServBtn: TButton
          Tag = 4
          Left = 368
          Top = 176
          Width = 95
          Height = 25
          Caption = 'Edit'
          TabOrder = 8
          OnClick = FavoritesServersWorks
        end
      end
      object JvGeneralPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 476
        Height = 397
        object JvGradientHeaderPanel3: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 476
          Height = 30
          GradientStartColor = 14540253
          GradientStyle = grVertical
          LabelCaption = 'General settings'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clGray
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = [fsBold]
          LabelAlignment = taLeftJustify
          Align = alTop
          DoubleBuffered = False
          TabOrder = 0
        end
        object NxPageControl2: TNxPageControl
          Left = 0
          Top = 30
          Width = 476
          Height = 367
          ActivePage = VisualNxTabSheet
          ActivePageIndex = 1
          Align = alClient
          TabOrder = 1
          OnClick = BuddyListWorks
          BackgroundColor = 14540253
          BackgroundKind = bkSolid
          Margin = 0
          Options = [pgBoldActiveTab]
          Spacing = 0
          TabHeight = 17
          TabStyle = tsClassic
          object EngineNxTabSheet: TNxTabSheet
            Caption = 'Engine'
            PageIndex = 0
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            OnShow = EngineNxTabSheetShow
            object Label4: TLabel
              Left = 52
              Top = 23
              Width = 39
              Height = 13
              Caption = 'Threads'
            end
            object Label5: TLabel
              Left = 52
              Top = 55
              Width = 64
              Height = 13
              Caption = 'Timeout (sec)'
            end
            object Label1: TLabel
              Left = 52
              Top = 87
              Width = 169
              Height = 13
              Caption = 'Retry count on update server failure'
            end
            object Label16: TLabel
              Left = 52
              Top = 117
              Width = 128
              Height = 13
              Caption = 'On action "Join server" do:'
            end
            object Label20: TLabel
              Left = 52
              Top = 149
              Width = 114
              Height = 13
              Caption = 'On application starts do:'
            end
            object TrackBar1: TTrackBar
              Left = 134
              Top = 23
              Width = 225
              Height = 25
              Max = 200
              Min = 1
              PageSize = 1
              Frequency = 10
              Position = 10
              TabOrder = 0
              ThumbLength = 15
              OnChange = TrackBar1Change
            end
            object threads: TSpinEdit
              Left = 366
              Top = 23
              Width = 57
              Height = 22
              MaxValue = 200
              MinValue = 1
              TabOrder = 1
              Value = 10
              OnChange = threadsChange
            end
            object TimeOutSpin: TSpinEdit
              Left = 366
              Top = 55
              Width = 57
              Height = 22
              MaxValue = 20
              MinValue = 1
              TabOrder = 2
              Value = 10
              OnChange = TimeOutSpinChange
            end
            object TrackBar2: TTrackBar
              Left = 134
              Top = 55
              Width = 225
              Height = 25
              Max = 20
              Min = 1
              PageSize = 1
              Position = 10
              TabOrder = 3
              ThumbLength = 15
              OnChange = TrackBar2Change
            end
            object updRetrySpin: TSpinEdit
              Left = 366
              Top = 87
              Width = 57
              Height = 22
              MaxValue = 20
              MinValue = 0
              TabOrder = 4
              Value = 0
              OnChange = TimeOutSpinChange
            end
            object JoinserverComboBoxActions: TComboBox
              Left = 248
              Top = 117
              Width = 175
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 2
              TabOrder = 5
              Text = 'Minimize application'
              Items.Strings = (
                '(Nothing)'
                'Terminate application'
                'Minimize application'
                'Minimize application to try')
            end
            object StartAppComboBoxActions: TComboBox
              Left = 248
              Top = 149
              Width = 175
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 6
              Items.Strings = (
                '(Nothing)'
                'Update Favorites'
                'Update GameSpy'
                'Update PlayersOnline')
            end
            object CheckUpdatescb: TCheckBox
              Left = 52
              Top = 184
              Width = 370
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Check for updates automatically'
              TabOrder = 7
            end
          end
          object VisualNxTabSheet: TNxTabSheet
            Caption = 'Visual'
            PageIndex = 1
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            object Label14: TLabel
              Left = 25
              Top = 23
              Width = 72
              Height = 13
              Caption = 'Highlight mates'
            end
            object Label2: TLabel
              Left = 25
              Top = 87
              Width = 74
              Height = 13
              Caption = 'Application skin'
            end
            object Label15: TLabel
              Left = 25
              Top = 55
              Width = 126
              Height = 13
              Caption = 'Highlight server with mates'
            end
            object Label7: TLabel
              Left = 25
              Top = 119
              Width = 48
              Height = 13
              Caption = 'Language'
            end
            object Label3: TLabel
              Left = 24
              Top = 152
              Width = 86
              Height = 13
              Caption = 'View mates format'
            end
            object SkinCb: TComboBox
              Left = 208
              Top = 87
              Width = 242
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'Default'
              OnChange = SkinCbChange
              Items.Strings = (
                'Default'
                'Luna')
            end
            object ServersColorPicker: TNxColorPicker
              Left = 340
              Top = 24
              Width = 109
              Height = 21
              TabOrder = 1
              Text = '#FFFFFF'
              ShowPreview = True
              OnChange = ServersColorPickerChange
              Options = [coColorsButton]
              HideFocus = False
              SelectedColor = clWhite
              WebColorFormat = True
            end
            object MatesColorPicker: TNxColorPicker
              Left = 340
              Top = 55
              Width = 110
              Height = 21
              TabOrder = 2
              Text = '#FFFFFF'
              ShowPreview = True
              OnChange = MatesColorPickerChange
              Options = [coColorsButton]
              HideFocus = False
              SelectedColor = clWhite
              WebColorFormat = True
            end
            object LangNameComboBox: TComboBox
              Left = 208
              Top = 119
              Width = 242
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 3
              OnChange = LangNameComboBoxChange
              Items.Strings = (
                '(Default)')
            end
            object ShowMatesStyle: TComboBox
              Left = 208
              Top = 152
              Width = 243
              Height = 22
              Style = csOwnerDrawFixed
              ItemHeight = 16
              ItemIndex = 0
              TabOrder = 4
              Text = 'Mates : {Stars}'
              Items.Strings = (
                'Mates : {Stars}'
                'Mates : [bolded]'
                'Mates : (Notes)'
                'Mates : {Stars}, [bolds], (Notes)')
            end
          end
        end
      end
      object JvJoinServerPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 476
        Height = 397
        object JvGradientHeaderPanel4: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 476
          Height = 30
          GradientStartColor = 14540253
          GradientStyle = grVertical
          LabelCaption = 'Join server'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clGray
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = [fsBold]
          LabelAlignment = taLeftJustify
          Align = alTop
          DoubleBuffered = False
          TabOrder = 0
        end
        object GroupBox2: TGroupBox
          Left = 11
          Top = 80
          Width = 455
          Height = 119
          BiDiMode = bdLeftToRight
          Caption = 'PR execution'
          ParentBiDiMode = False
          TabOrder = 1
          object Label11: TLabel
            Left = 16
            Top = 69
            Width = 59
            Height = 13
            Caption = 'Parameters: '
          end
          object Label8: TLabel
            Left = 16
            Top = 20
            Width = 97
            Height = 13
            AutoSize = False
            Caption = 'pr.exe path:'
          end
          object ExecParamsEdit: TEdit
            Left = 16
            Top = 85
            Width = 425
            Height = 21
            TabOrder = 0
            Text = '+menu 1 +fullscreen 1 +restart 1'
          end
          object PrPAthEdit: TEdit
            Left = 16
            Top = 39
            Width = 345
            Height = 21
            TabOrder = 1
          end
          object Button1: TButton
            Left = 376
            Top = 35
            Width = 65
            Height = 25
            Caption = 'Browse ...'
            TabOrder = 2
            OnClick = Button1Click
          end
        end
        object GroupBox1: TGroupBox
          Left = 10
          Top = 208
          Width = 456
          Height = 169
          Caption = 'Online accounts'
          TabOrder = 2
          object Label9: TLabel
            Left = 16
            Top = 26
            Width = 26
            Height = 13
            Caption = 'Prefix'
          end
          object Label10: TLabel
            Left = 72
            Top = 26
            Width = 58
            Height = 13
            Caption = 'Player name'
          end
          object Label12: TLabel
            Left = 216
            Top = 26
            Width = 46
            Height = 13
            Caption = 'Password'
          end
          object Button3: TButton
            Left = 368
            Top = 48
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 4
            OnClick = Button3Click
          end
          object PlayerPrefixEdit: TEdit
            Left = 16
            Top = 48
            Width = 49
            Height = 21
            MaxLength = 6
            TabOrder = 0
          end
          object ColumnListBox1: TColumnListBox
            Left = 16
            Top = 80
            Width = 337
            Height = 73
            Columns = <
              item
                Color = clWindow
                ColumnType = ctText
                Ellipsis = etAtEnd
                Width = 60
                Alignment = taLeftJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
              end
              item
                Color = clWindow
                ColumnType = ctText
                Ellipsis = etAtEnd
                Width = 145
                Alignment = taLeftJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
              end
              item
                Color = clWindow
                ColumnType = ctText
                Ellipsis = etAtEnd
                Width = 200
                Alignment = taLeftJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
              end>
            ListBoxItems = <>
            GridLines = False
            ItemHeight = 16
            ItemIndex = -1
            LookupIncr = False
            LookupColumn = 0
            ShowItemHint = False
            SortColumn = 0
            Sorted = False
            TabOrder = 3
            Version = '1.2.2.1'
          end
          object PlayerNameEdit: TEdit
            Left = 72
            Top = 48
            Width = 137
            Height = 21
            MaxLength = 20
            TabOrder = 1
          end
          object PasswordEdit: TEdit
            Left = 216
            Top = 48
            Width = 137
            Height = 21
            TabOrder = 2
          end
          object Button4: TButton
            Left = 368
            Top = 80
            Width = 75
            Height = 25
            Caption = 'Delete'
            TabOrder = 5
            OnClick = Button4Click
          end
        end
        object NoteMemo2: TMemo
          Left = 10
          Top = 41
          Width = 455
          Height = 29
          Lines.Strings = (
            
              '*Note: Your password will be stored in settings file without enc' +
              'ription')
          ParentColor = True
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
      object JvGameSpyPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 476
        Height = 397
        Caption = 'JvGameSpyPage'
        object JvGradientHeaderPanel5: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 476
          Height = 30
          GradientStartColor = 14540253
          GradientStyle = grVertical
          LabelCaption = 'GameSpy filter'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clGray
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = [fsBold]
          LabelAlignment = taLeftJustify
          Align = alTop
          DoubleBuffered = False
          TabOrder = 0
        end
        object customfiltercb: TCheckBox
          Left = 119
          Top = 49
          Width = 239
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Use custom filter'
          TabOrder = 1
          OnClick = customfiltercbClick
        end
        object FilterListBox: TCheckListBox
          Left = 119
          Top = 71
          Width = 239
          Height = 298
          ItemHeight = 13
          Items.Strings = (
            'map size 64'
            'map size 32'
            'map size 16'
            'gpm_insurgency'
            'gpm_cq'
            'gpm_skirmish'
            'gmp_cnc'
            'gpm_training'
            'gmp_coop'
            'gmp_vehicles'
            'punkbuster'
            'populated'
            'voip'
            'not full'
            'no password')
          TabOrder = 2
        end
      end
    end
  end
  object SaveOptionsButton: TButton
    Left = 8
    Top = 416
    Width = 89
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveOptionsButtonClick
  end
  object Button2: TButton
    Left = 104
    Top = 416
    Width = 89
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ServersPopup: TPopupMenu
    Left = 40
    Top = 176
    object Copy3: TMenuItem
      Tag = 5
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = PopUpAction
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Delete3: TMenuItem
      Tag = 6
      Caption = 'Delete'
      ShortCut = 46
      OnClick = PopUpAction
    end
  end
  object jvpnflstrg1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    AutoReload = True
    FileName = 'Settings.ini'
    DefaultSection = 'PR'
    SubStorages = <>
    Left = 108
    Top = 329
  end
  object TntOpenDialog1: TTntOpenDialog
    Filter = 'Executables (*.exe)|*.exe'
    Options = [ofEnableSizing]
    Left = 104
    Top = 296
  end
  object NxAutoCompletionNote: TNxAutoCompletion
    Associate = NoteComboBox
    Enabled = True
    Sources = [asList]
    Left = 72
    Top = 296
  end
end
