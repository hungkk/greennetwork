object OptionsForm: TOptionsForm
  Left = 416
  Top = 269
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 450
  ClientWidth = 660
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
    Left = 9
    Top = 8
    Width = 641
    Height = 399
    BorderWidth = 1
    TabOrder = 0
    object JvPageListTreeView1: TJvPageListTreeView
      Left = 2
      Top = 2
      Width = 157
      Height = 395
      AutoExpand = False
      ShowButtons = True
      PageDefault = 0
      PageList = JvPageList1
      Align = alLeft
      HotTrack = True
      Images = PngImageList1
      Indent = 19
      RowSelect = True
      TabOrder = 0
      OnChange = JvPageListTreeView1Change
      Items.Data = {
        05000000230000000000000000000000FFFFFFFFFFFFFFFF0000000003000000
        0A4275646479206C697374210000000900000009000000FFFFFFFFFFFFFFFF00
        00000000000000085072656669786573260000000700000007000000FFFFFFFF
        FFFFFFFF00000000000000000D506C6179657273206E616D6573220000000800
        000008000000FFFFFFFFFFFFFFFF000000000000000009436C616E2074616773
        2A0000000300000003000000FFFFFFFFFFFFFFFF010000000000000011466176
        6F72697465732073657276657273290000000C0000000C000000FFFFFFFFFFFF
        FFFF02000000020000001047656E6572616C2073657474696E67731F00000015
        00000015000000FFFFFFFFFFFFFFFF020000000000000006456E67696E651F00
        00000D0000000D000000FFFFFFFFFFFFFFFF0200000000000000065669737561
        6C240000001100000002000000FFFFFFFFFFFFFFFF03000000000000000B4A6F
        696E20736572766572270000001400000014000000FFFFFFFFFFFFFFFF040000
        00000000000E47616D655370792066696C746572}
      Items.Links = {
        0A00000000000000000000000000000000000000010000000200000002000000
        020000000300000004000000}
    end
    object JvPageList1: TJvPageList
      Left = 159
      Top = 2
      Width = 480
      Height = 395
      ActivePage = JvMatesPage
      PropagateEnable = False
      Align = alClient
      object JvMatesPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 480
        Height = 395
        object JvGradientHeaderPanel2: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 480
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
          Width = 480
          Height = 365
          ActivePage = NxTabSheet4
          ActivePageIndex = 0
          Align = alClient
          TabOrder = 1
          BackgroundColor = 14540253
          BackgroundKind = bkSolid
          Images = PngImageList1
          Margin = 0
          Options = [pgBoldActiveTab]
          Spacing = 0
          TabHeight = 17
          TabStyle = tsClassic
          object NxTabSheet4: TNxTabSheet
            Caption = 'Prefixes'
            DisplayMode = tdImageIndex
            ImageIndex = 9
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
              Height = 153
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
              MaxLength = 6
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
            object ImportprefixButton: TButton
              Tag = 1
              Left = 287
              Top = 314
              Width = 177
              Height = 25
              Caption = 'Import prefixes ...'
              TabOrder = 8
              OnClick = ImportprefixButtonClick
            end
            object CheckBox2: TCheckBox
              Left = 13
              Top = 318
              Width = 257
              Height = 17
              Caption = 'Import mode rewrite'
              TabOrder = 9
            end
          end
          object NxTabSheet5: TNxTabSheet
            Caption = 'Players names'
            DisplayMode = tdImageIndex
            ImageIndex = 7
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
              Height = 153
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
              MaxLength = 20
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
            object ImportNameButton: TButton
              Tag = 2
              Left = 287
              Top = 314
              Width = 177
              Height = 25
              Caption = 'Import names ...'
              TabOrder = 8
              OnClick = ImportprefixButtonClick
            end
            object CheckBox1: TCheckBox
              Left = 13
              Top = 318
              Width = 257
              Height = 17
              Caption = 'Import mode rewrite'
              TabOrder = 9
            end
          end
          object NxTabSheet6: TNxTabSheet
            Caption = 'Clans tags'
            DisplayMode = tdImageIndex
            ImageIndex = 8
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
              MaxLength = 20
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
          object NxTabSheet1: TNxTabSheet
            Caption = 'NxTabSheet1'
            PageIndex = 3
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            TabVisible = False
            object TempGrid: TNextGrid
              Left = 23
              Top = 119
              Width = 402
              Height = 202
              AppearanceOptions = [aoHighlightSlideCells]
              HeaderStyle = hsOutlook
              Options = [goDisableColumnMoving, goHeader, goMultiSelect, goSecondClickEdit, goSelectFullRow, goInplaceEditEvents]
              TabOrder = 0
              TabStop = True
              object NxIncrementColumn5: TNxIncrementColumn
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
              object NxCheckBoxColumn5: TNxCheckBoxColumn
                Alignment = taCenter
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Friend'
                Header.DisplayMode = dmImageOnly
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
                Position = 1
                SortType = stBoolean
                Width = 24
              end
              object NxTextColumn9: TNxTextColumn
                DefaultWidth = 71
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Prefix'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 2
                SortType = stAlphabetic
                Width = 71
              end
              object NxTextColumn10: TNxTextColumn
                DefaultWidth = 52
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Note'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                Position = 3
                SortType = stAlphabetic
                Width = 52
              end
              object NxImageColumn1: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Star'
                Header.DisplayMode = dmImageOnly
                Header.Alignment = taCenter
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                Position = 4
                SortType = stNumeric
                Width = 24
                Images = Form1.PngImageList1
              end
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
        Width = 480
        Height = 395
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
          Width = 480
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
        Width = 480
        Height = 395
        object JvGradientHeaderPanel3: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 480
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
          Width = 480
          Height = 365
          ActivePage = VisualNxTabSheet
          ActivePageIndex = 1
          Align = alClient
          TabOrder = 1
          OnClick = BuddyListWorks
          BackgroundColor = 14540253
          BackgroundKind = bkSolid
          Images = PngImageList1
          Margin = 0
          Options = [pgBoldActiveTab]
          Spacing = 0
          TabHeight = 17
          TabStyle = tsClassic
          object EngineNxTabSheet: TNxTabSheet
            Caption = 'Engine'
            DisplayMode = tdImageIndex
            ImageIndex = 21
            PageIndex = 0
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            OnShow = EngineNxTabSheetShow
            object Label4: TLabel
              Left = 54
              Top = 23
              Width = 39
              Height = 13
              Caption = 'Threads'
            end
            object Label5: TLabel
              Left = 54
              Top = 55
              Width = 64
              Height = 13
              Caption = 'Timeout (sec)'
            end
            object Label1: TLabel
              Left = 54
              Top = 87
              Width = 169
              Height = 13
              Caption = 'Retry count on update server failure'
            end
            object Label16: TLabel
              Left = 54
              Top = 117
              Width = 128
              Height = 13
              Caption = 'On action "Join server" do:'
            end
            object Label20: TLabel
              Left = 54
              Top = 149
              Width = 114
              Height = 13
              Caption = 'On application starts do:'
            end
            object TrackBar1: TTrackBar
              Left = 136
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
              Left = 368
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
              Left = 368
              Top = 55
              Width = 57
              Height = 22
              MaxValue = 6
              MinValue = 1
              TabOrder = 2
              Value = 1
              OnChange = TimeOutSpinChange
            end
            object TrackBar2: TTrackBar
              Left = 136
              Top = 55
              Width = 225
              Height = 25
              Max = 6
              Min = 1
              PageSize = 1
              Position = 1
              TabOrder = 3
              ThumbLength = 15
              OnChange = TrackBar2Change
            end
            object updRetrySpin: TSpinEdit
              Left = 368
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
              Left = 250
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
              Left = 250
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
              Left = 54
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
            DisplayMode = tdImageIndex
            ImageIndex = 13
            PageIndex = 1
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -11
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            object Label14: TLabel
              Left = 27
              Top = 23
              Width = 72
              Height = 13
              Caption = 'Highlight mates'
            end
            object Label2: TLabel
              Left = 27
              Top = 87
              Width = 74
              Height = 13
              Caption = 'Application skin'
            end
            object Label15: TLabel
              Left = 27
              Top = 55
              Width = 126
              Height = 13
              Caption = 'Highlight server with mates'
            end
            object Label7: TLabel
              Left = 27
              Top = 119
              Width = 48
              Height = 13
              Caption = 'Language'
            end
            object Label3: TLabel
              Left = 26
              Top = 152
              Width = 86
              Height = 13
              Caption = 'View mates format'
            end
            object SkinCb: TComboBox
              Left = 210
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
              Left = 342
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
              Left = 342
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
              Left = 210
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
              Left = 210
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
            object GroupBox3: TGroupBox
              Left = 25
              Top = 184
              Width = 430
              Height = 105
              Caption = 'Live Sort'
              TabOrder = 5
              object LivePoCb: TCheckBox
                Left = 16
                Top = 72
                Width = 145
                Height = 17
                Caption = 'PlayersOnline'
                Checked = True
                State = cbChecked
                TabOrder = 0
              end
              object LiveFavCb: TCheckBox
                Left = 16
                Top = 24
                Width = 145
                Height = 17
                Caption = 'Favorites'
                Checked = True
                State = cbChecked
                TabOrder = 1
              end
              object liveGSCb: TCheckBox
                Left = 16
                Top = 48
                Width = 145
                Height = 17
                Caption = 'GameSpy'
                Checked = True
                State = cbChecked
                TabOrder = 2
              end
            end
          end
        end
      end
      object JvJoinServerPage: TJvStandardPage
        Left = 0
        Top = 0
        Width = 480
        Height = 395
        object JvGradientHeaderPanel4: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 480
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
          Left = 17
          Top = 80
          Width = 448
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
            Width = 417
            Height = 21
            TabOrder = 0
            Text = '+menu 1 +fullscreen 1 +restart 1'
          end
          object PrPAthEdit: TEdit
            Left = 16
            Top = 39
            Width = 337
            Height = 21
            TabOrder = 1
          end
          object Button1: TButton
            Left = 368
            Top = 35
            Width = 65
            Height = 25
            Caption = 'Browse ...'
            TabOrder = 2
            OnClick = Button1Click
          end
        end
        object GroupBox1: TGroupBox
          Left = 17
          Top = 208
          Width = 448
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
            Left = 75
            Top = 26
            Width = 58
            Height = 13
            Caption = 'Player name'
          end
          object Label12: TLabel
            Left = 198
            Top = 26
            Width = 46
            Height = 13
            Caption = 'Password'
          end
          object Button3: TButton
            Left = 344
            Top = 48
            Width = 91
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
            Width = 297
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
            Left = 75
            Top = 48
            Width = 113
            Height = 21
            MaxLength = 20
            TabOrder = 1
          end
          object PasswordEdit: TEdit
            Left = 198
            Top = 48
            Width = 113
            Height = 21
            TabOrder = 2
          end
          object Button4: TButton
            Left = 344
            Top = 80
            Width = 91
            Height = 25
            Caption = 'Delete'
            TabOrder = 5
            OnClick = Button4Click
          end
        end
        object NoteMemo2: TMemo
          Left = 17
          Top = 41
          Width = 448
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
        Width = 480
        Height = 395
        Caption = 'JvGameSpyPage'
        object JvGradientHeaderPanel5: TJvGradientHeaderPanel
          Left = 0
          Top = 0
          Width = 480
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
        object FilterInspector: TNextInspector
          Left = 20
          Top = 69
          Width = 439
          Height = 307
          AppearanceOptions = [iaStyleColors]
          CategoriesColor = 14145495
          EnableVisualStyles = True
          HighlightTextColor = clHighlight
          MarginColor = clSilver
          RowHeight = 18
          ParentColor = True
          SelectionColor = 14338242
          SplitterPosition = 300
          SuffixWidth = 30
          TabOrder = 1
          object NxTextItem1: TNxTextItem
            Caption = 'Filter settings'
            ExpandLock = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ReadOnly = True
            ParentIndex = -1
            object NxTextItem3: TNxTextItem
              Caption = 'Include'
              Color = clCream
              Enabled = False
              ExpandLock = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              ParentIndex = 0
              object NxCheckBoxItem3: TNxCheckBoxItem
                Caption = 'map size 16'
                Value = 'true'
                AllowAllUp = True
                Buttons = <
                  item
                    Checked = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 1
              end
              object NxCheckBoxItem2: TNxCheckBoxItem
                Caption = 'map size 32'
                Value = 'true'
                AllowAllUp = True
                Buttons = <
                  item
                    Checked = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 1
              end
              object NxCheckBoxItem1: TNxCheckBoxItem
                Caption = 'map size 64'
                Value = 'true'
                AllowAllUp = True
                Buttons = <
                  item
                    Checked = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 1
              end
              object NxTrackBarItem1: TNxTrackBarItem
                Caption = 'minimum players'
                DefaultValue = '0'
                EmptyValue = '0'
                Options = [itoAutoApply]
                Value = '7'
                Margin = 6
                Max = 64
                Position = 7
                ParentIndex = 1
              end
            end
            object NxTextItem2: TNxTextItem
              Caption = 'Exclude'
              Color = clCream
              Enabled = False
              ExpandLock = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              ParentIndex = 0
              object NxCheckBoxItem6: TNxCheckBoxItem
                Caption = 'full servers'
                Value = 'false'
                AllowAllUp = True
                Buttons = <
                  item
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 6
              end
              object NxCheckBoxItem13: TNxCheckBoxItem
                Caption = 'empty servers'
                Value = 'false'
                AllowAllUp = True
                Buttons = <
                  item
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 6
              end
              object NxCheckBoxItem7: TNxCheckBoxItem
                Caption = 'password protected'
                Value = 'false'
                AllowAllUp = True
                Buttons = <
                  item
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 6
              end
              object NxCheckBoxItem15: TNxCheckBoxItem
                Caption = 'without voip'
                Value = 'true'
                AllowAllUp = True
                Buttons = <
                  item
                    Checked = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 6
              end
              object NxCheckBoxItem14: TNxCheckBoxItem
                Caption = 'without punkbuster'
                Value = 'true'
                AllowAllUp = True
                Buttons = <
                  item
                    Checked = True
                    Glyph.Data = {
                      F6000000424DF600000000000000760000002800000010000000100000000100
                      0400000000008000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
                      AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                    Text = 'true'
                  end>
                ParentIndex = 6
              end
              object NxComboBoxItem1: TNxComboBoxItem
                Caption = 'game play mode to exclude'
                Value = 'gmp_coop'
                ItemIndex = 6
                Lines.Strings = (
                  '(none)'
                  'gpm_insurgency'
                  'gpm_cq'
                  'gpm_skirmish'
                  'gpm_cnc'
                  'gpm_training'
                  'gmp_coop'
                  'gmp_vehicles'
                  'gpm_scenario'
                  'gpm_counter')
                Style = cbDropDownList
                ParentIndex = 6
              end
            end
          end
        end
        object customfiltercb: TCheckBox
          Left = 22
          Top = 43
          Width = 435
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Use custom filter'
          TabOrder = 2
          OnClick = customfiltercbClick
        end
      end
    end
  end
  object SaveOptionsButton: TButton
    Left = 9
    Top = 416
    Width = 89
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveOptionsButtonClick
  end
  object Button2: TButton
    Left = 105
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
  object TntImportDialog: TTntOpenDialog
    Filter = 'Gnetwork configuration file (*.cfg)|*.cfg|all files (*.*)|*.*'
    Left = 108
    Top = 340
  end
  object NxColorScheme1: TNxColorScheme
    ColorScheme = csSilver2010
    Left = 343
    Top = 409
  end
  object PngImageList1: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'user_silhouette'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001EC4944415478DA63FCFFFF3F03232323033AE8E99B7015
          28AE056203D55C2B292AD0465703D68BCD808EAEEED52C2C6C211C1C1C60FE8F
          1F3F18FEFCF9B5A6A2AC349428039A5ADAFE0B8B8832FCF8FE0DCCE7E0E46278
          FBE635435D4D15235106D43736FF9794926678FBFA15982F2C2AC6F0FCD95386
          C6FA5AE20CA8AEADFFAFA8A8CCF0E8D103305F4E4E81E1FEFDBB0CADCD8DC419
          505159FD53565E9EEDED9B3710178888303C7EF8F057477B2B3B510644C7C475
          6A6A6A95B1B143D4FFFAF993E1FAF56B5D4B972C2A27CA002010CB2F287A292E
          2E01E6BC7CF98261E2843E7120F315B10630E4E4E6FD97919503B39F3C7ECC30
          65F2440C4518066464667302A97940B1087E7E7E86BF7FFF81C5999999183E7E
          FCC8C0C4C4B40228973463FAD4EF2806A4A665F0020D39C2CCCCACC7C1C1C9C0
          C5C5C9F0FBD76F86D7AF5F820D1015156760656365F8F6ED3BC37760DAF8F7EF
          DF3EA0BEC0D9B3667C021B909C9CFA9F9D9393819D8D8DE1E7AF9F0C5FBE7C61
          F8F7E72FDC6520354C2CCC0C3C3CBC1035C094F91318B073E7CE66041B909090
          F49F1D986CDFBF7B07F71F582B2C6C806AFE23F95D5048086CC88205F32006C4
          C4C4FD4756C08025506106215BB064C92288018181C107D8D9D9ED194800402F
          1C5CBF7EAD032C1694816202A41800041F807AEF020066F704F01FA9055F0000
          000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'server'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000020D4944415478DA63FCFFFF3F030C3032323234CF58B306
          2814FC9F01491C041919D6D666848420AB07CB210B3402352BC849058B8B8930
          80C4FF8335430C7EF9EA0DC38347CFD6D6030DC16940CDA4E5FF2B32C218FEFC
          FAC3806C11503F030B1B0B43C78C550C2D79918C380DA89AB0EC7F714A30C3A9
          EB8F80BCFF60A7C3DC61A629C7D03B672D435B41146E032AFA16FF2F4C0E6678
          F4EA3B031323D46AA0FC3FA01239314E86FEB96B193A8A62711B50D6BBF87F7E
          4200C3C24D4718989818C1FE07C9FE039A10EF67C33071C10686AE627C06742F
          FC9F15E7C7F0FE2B03D80018001920C8CDC0306DD12686AED278DC0694742FF8
          9F16EDC3B076D719B01740A1FF1FEA8560371386594BB730F49426E036A0A873
          DEFFA4704F863F0C5C90E8837A01845918BE31CC5BB99DA1AF3C098F011D73FF
          C7867830EC3E76156C3B23D80426B02B5CACB51816AF061A50918CDB8082B6D9
          FFC3835C195EBFFB04B69F999185819989036C80B0003BC3B2F5DB192654A6E0
          36200F6840B0B703C3DB8F5FC006B00235779CD004CB75BB3F6158B9793BC3C4
          2A7C06B4CCFCEFEB69CFF0E72F1BC3D71FEF19783945197EFEFCCEC0CD290854
          F99961E3B63D0C936AD2711B90DB3AF3BFB79B0DC38F5FBF19E01901929518D8
          814979EBAE230C93ABD3701B905AD573808D83DB1E3DC741F20323C3AF1F5F0F
          CE6E2B71C06900509132901260C00D3E00D5DF451600002DEDF8E193C88DD600
          00000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'bullet_black'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000000F94944415478DA63FCFFFF3F03258071981AC0C8C8C890
          929232FDDFBF7F192079109F898969C69C397332D1D56335203535753A171777
          8699B939032B3333C3EFBF7F194E9D3CCEF0EDDBF719B367CFCE2468404A4AF2
          7F27275786ABD7AE31FCFEFD9B81959595415B4B8B61DFBEDD0C73E6CC6524CA
          000D4D1D8667CF5FC0C5A42425186E5CBF429C01A9A929FF65E59580B24C0C0C
          2079601830FCFFC7F0F8E13D86D9B3E71036203232728D989878B0A2B21A0333
          300CFE02C3E0FEDD5B0CAF5EBD5CBB7CF9F2106262412E2222A28F9B9B3B18E6
          82AF5FBFAE5DB162451150FD23A2A21108E480581449F835103F222A1A4901C3
          C00000FBA88EE1438397730000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'star'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000023F4944415478DA63FCFFFF3F032323230336F06A81553A
          90D2124B38968F4D1EAC179F015F8F67FEFDFFF70F138FCD6C46920D7839D7B8
          51C8ADAE0EC47EB7ABA9493CF96C3DD106BC5A60C1C5C8C6F75524A415CC7FB3
          A69A41346A1723D1063C9F63B288CF24299643E20398FFE38500C397B3F31689
          279F89C76AC09BC5368B807ED5FBFFEF8F3EC3BFBF0C0CAC3C0C421E450C0CDF
          76435472B932BCDBD1C7C0F0FB2B03031333032313CB454666E64B22B147E2C0
          06BC5A68F585DF2A819B5DD198016810509130C3BFE74B18FEFD7C01D6CFC42E
          C1C02419C3C0F0EF2D0323C34F861F77F7337C3ABDEBAB58FC511E98170C9ECC
          36DD25A02527CA26C2CFF0FFDF3FA0FB9818181899A16E05BA8AF11F90CBC4F0
          EBF527868FD71EBD964E3DE506D47B01390CF42EF418B6A958287BB3CB1831FC
          FD7A136437D4B7FF189879D4197E3C38CD70F7F483AD0625E7AB808297300291
          9D9549F1F5AEB07B9C2A360C7FDE9F443540C084E1FBB5C30C62BEEB947EFEFE
          771F6B2CBC9A671EC96BEEB60C18F30CFF7FBF070616C40BFF8101CBC426C8F0
          F73B1FC3D74BFBA3C4124F2CC76AC0FD59E6B3A45CFD52FF7EB8C8F0EFEB6F86
          1F8FDE81C539E4841898B859815893E1D99EADB395B2CEA46135E0CD96E017DC
          F242E23F1E3C60F8F0F4D34DADBCD3B120F16B934C170B48F3A973286B317CB9
          7AFBA568E83609AC06BCDBE0F3FFEFE777FFD61D7D939B3EE3D67EA0D0756820
          68CECC50730CB69398CCC8C2CA241CB69711574A3486D2B781F8135ACAE50362
          5528FB2C8A019400005A6222F0FC8430A00000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'servers'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001D24944415478DA9D93BB6B625110C6677C145A5AA6B1DA
          DA2236A6B0B1B09020A8B0F6E2E39A9B7722911593151783FBC8EBC6EB038B74
          063108B1B0B0B1B18804AC6CB6B1DA3F4105153303AB0B773945F235F73BBF99
          33F7CC700E06020140C46D00D8008D96CBE52BC536E17FFDA1D873BD5E07F4F9
          7C0C62C562519DCD66EB0CA3D108B1584C1271B2C546A301E8F57A994B8AA214
          2693C93AD16432812CCB711127AB369B4D408FC7C37C279148285C7D25FE6B2A
          95FA92CD66BF69793E9F97C9DEB75A2D40B7DBCD7CB75C2EDF6A8F1A8944F644
          9CEC5DBBDD0674B95CCCF70B85C2F5783C5E279ACD6688C7E307224EF6A6D3E9
          003A9D4EE687C964F297C1605827CEE7736EE1825AB8D0F25C2E7744F6AADBED
          023A1C0EE6C7D56AF587F6A8A150E844C4C9FEECF57A8076BB9DF969A954CAAF
          8E3A1C0E8179341A4D88382DBFF7FB7D409BCDC6B1B34AA5925B255A2C16984E
          A7100E8793224ECBCBC1600068B55A3996AED56A5FB5C30A0683E7224E36331A
          8D00753A1DF39ADFEFFFACBDAF74D31E459C3EC1C56201F877C2779224C93C61
          D64BE805B61EB640555545C4F9EEF07051AFD77FA20723653299C355228B0BA7
          D3E92B11A7C7A412FFCD2DF06BF2C1FBF5442D3C2155FAC0DE7F7A03231A0DF0
          B94850200000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'user-silhouette'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001C04944415478DAA5934D48024114C747F103578B0821AC
          53186860A1508190851474D5A48307A14310D4A5E85C519DA32E054187A08B90
          891E83120A41A8F060422A65A7924022CAD66FED3FCB0A26990B0DFC989DF7F6
          FD66F6EDAEA85AAD129148441A860ACC83297E7D060E40A6FE26AEB6896045AB
          D52E9A4CA61EBA0887C3CFC964720F97DB42051776BB7D542291C868BE542A15
          7C3E5F10F10921826170E8743A0751C8DD041171BBDD11C4E7C04D2BC19DC562
          E955ABD54A5AC89F80A4D3E9AF6030F884FC402BC111043310300D02168213E4
          6785F4E0DC66B38D4BA55209CD178BC592DFEFBF447C526813A7753ADDBED168
          EC2A97CB241289BC26128905C4BD4205DDE0CAE57269B3D92CF1783C8F588F81
          1721020758C23760D0EBF51D383E89C562EF510CC477C16933C1085806430E87
          A3AF52A990FA268AC562E2F57A1F90BF053BE0BA5EE062186653A3D174E2D9DB
          A94D2E97FF10E4F3796EA3783CFE914AA5DE58965D43EEB826889ACDE67EEC22
          96C96444A150FC2AC8E572F48D1034B6120A85EE9133D4049F56AB55458F490B
          FF12D099C602814006735B4DB08A536F802CFFC7515850E0FB25070CFF972A81
          02ACA3768B13FC677C034C8B28F0A88CA3860000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'heart-empty'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000025E4944415478DAA5534D8B5261147E5FBFC62FFC887072
          310DA32E22689157CB6E342ECAA8FE400B5741BB366DEA17B89A366DDA0581E0
          22C18D8BCAC885938D35A22D4A0844874AD191C81445C78F7B7BCEC5B994489B
          2E1CCE79CF39EFF33EE7E3725996D9FF7CBC582C2A1ADF36B400D14346908F00
          7FB7085E863A0F3141A6901262BBD0322F140A9420DAEDF6AB3E9FCFA5D3E90C
          D3E9F4A856ABFDE8F7FB7B0460B3D944AFD77B52AFD7AFCD66B349B55AED2096
          05C81ECFE7F3F4FA7D4110B670794DA5C6F91CECBE911D08044E43698F630039
          2A954A070078CC73B99C4EA3D13C0C06839BC3E150ADCD6432B1C160D023DB6A
          B5DA47A3911AB3582C0CE05F2549DAE1D96C96901F8442A1AD4EA7A326019499
          CD66999A8CCB1CC96ACCE170B072B97C00F311CF64320C49F744513CD36C360D
          C749E8035D54643299B0F97CAEF8512673BBDD9346A3F105653EE1E9749AFCB7
          3C1ECF15A7D379A2DBED1275361E8FD9AA111B8D4602FCD9EBF5DEE2F882A752
          29F2BB40F90ECAD868B7DB7A7A7DD5476581C1B45EAF7F07F833B83A3C994C2A
          415014D19C6BE8B81B0C34AB5E0765A952A9B4C0EE8D56AB5546CCE3F1B81A47
          A3AEA38C4B60B20E5B05C1457A4042E70F41BD0026AF69899601A8711C893700
          722112899C025D05047E09D36AA33FFB78F915164AA5B70C400DE4D8879BE8F4
          C56834BA4EFE442271D86AB53EA0C497D8091900EC5F000CFBA0C1F86E87C3E1
          73E4C7B27DC2623D77B95C1200D85F00B1584C3DD0B2D0CC692301E0C0F9EEA2
          FB4F01F08B36D0603028D350013EB3B38AB12F6CB2F7C2C672E3B7177AF74F27
          FE1BE6F7FB15FB3791953A6CE7C4B0B60000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'edit-shadow'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001054944415478DACDD3BF8E015114C77177588A6914BADD
          256CA3D47901EFB01B5148B6902D142849245B7801854AA3D4EAF5DAAD6D28D8
          622322149BF837FBBDC9B989609028907C7227E79EF9CD3D33A11CC7F15CF353
          F7136059D66EBD21EB87DB034CFD584004458451607F24F58DBEEF928077FC21
          8D0EFB5DA90FB1BA24A0852A3288B3FFC91A9080F9B98018CAA823812C4AF42C
          59A7F83163B805E4F1B6F7BEDAF474E4147D33865B806E2CE846EAB652AAC6F5
          0BD739D61006668C83009ADB2C49F4F08A149A72E42F543031631C0BD83DB61F
          CFF8C5025E44F1806F2C4F05E8591E11C40C63D87882CFD4B86FEB16A0A451C9
          F1D712EA355F50D7CC0CB7FF33FD03AFBA9BE12504B89E0000000049454E44AE
          426082}
      end
      item
        Background = clWindow
        Name = 'edit-superscript'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000000BD4944415478DA63FCFFFF3F032580719819C0C4C4842C
          371D4A6742E94620D606E2AB405CFFEFDF3FBC06C803711110CB017101103F84
          8ADB01713410A71332201988BF03711410AF07E2B9508DA640DC0EC42F0919B0
          08E44C208E016255208E03E22E20D687CA97010DB888CB002520AE06E2C9406C
          00C4F15017DD430E207C2EC805E208B4C05E01359028033603712110DF810A83
          9CAE09C4BE040D6064645C05A4CC81F824108701B115102F874AC3C4C000A66F
          90A5C4013100001E9462E1D768651C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'edit-uppercase'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000015A4944415478DAAD933D4842511480EF752ADA84A02941
          A8080AA3256808825A84A0492A22FB5B1AFA5D2332B082201A1A726969A8ACC1
          416A0CA1864CA2A65AC478F0FCC92522A8CDD777E10AA619595EF838EF9E73CF
          C7E15E9EB42C4BFC67C9AA096C365B1BC157503B85E04FCDB95CEE8B605DE797
          C10F4A385889209FEF873E680777258206C236A8C433B8B4E8D78213C21D6CC2
          84A6A7E0FC9E8E33E504378433F66B52CA00DF9DFA0E52E08025688405304A04
          34CDE9A25AF3300DEFE4878953F001231082FD12C1A43FEBBE0AFBCECDF8A5A8
          6F1E172F89A078CBC69458950F601546A109C6BE13840CE36923994CC784A8B5
          EC76676FFA211031EE779CFA6977A103BC7AA244B1A005C1A169265D52D69908
          1C08248259CA43450F70AC84C50281403081C84FF078E18DBC66AEC3241621AE
          9BB7A01506CA0832EC6A44EA7645DD817ADA2E888207BAE1488BA2F47AAAF733
          FD757D0233E2C1E19FEB7FEA0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'application-rename'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002024944415478DAA5533B689A5114FEAED18868453358EA
          50DAAA53706A0717115D1C7C80AF8AAB82B536AD696D208AA390C11869883F42
          EAE2E256C11785149C053B3814E92481740D62452ABE7AFF9F985A441CFCE070
          EFF9B8E7DCEFDC732E99CFE7D80644229160381C728E4020804C2643AFD7C368
          347A41A9E7D4BE2F568542D132180C9B13B02B4DC059BFDF3F904AA5176AB51A
          2A956A55815C2EF78DC7E3C7ACB34361369B5FF2783CE1E2C0643299F2F9FC9D
          C160F0532412D597627F536B12BD5E7F58281432EB6A2C168BF0F97CB8BAFA86
          FD7D2D08D9A517EDE2F6B6F7E3F2F2EC84389DCEB7D96CF63CFE9987EBEB2E6E
          6E7ED14362ECED3DC397D307601806E17018F57A1D5401AB08B3D90CD3E914C1
          60F015F1FBFD6F3299CCC5E1F99F95045F998748269348241268B55A30994CFF
          A9F3783C211289445EA75229665D09D16814E9741ACD66133A9DEEDFE31102B7
          DB1D26B158CC4E9D472C49BBF1C4EBF51E2FCF463E9F47201080582C8646A3B9
          E7E943C3E5721D90783CCE39B45DE8743AEF4AA5D227B6CE0542A11072B9DC8A
          32DA19381C8E0897800D6EB7DB2CFFBE5C2E9FD1B6A25AADA252A9C06AB5727B
          9BCDC6ED176067C56EB77F205432BADDEE82FF58ABD552EC006D82502884C562
          39225AAD76993F6E341A27CB25AC035B82D1688C11A552794FD2DEFAA93DDD18
          7D073AB85DB2F56FDC36C15F5FF3CF107EB0F9F50000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'application-table'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001C84944415478DA63FCFFFF3F0325803134345409489B03
          312F897A3F03F149C6A0A0A0E89292924A313131EDBF7FFF30FCF9F317887F33
          FCFE0D62FF61F8F7EF1F03C491CC0C8C8C2C60CCC2C2C6F0F6EDDBABB366F5B5
          33060404646667674F037905A41884FFFEFD0BC6F8D8209C0E04202FA4AF5AB5
          6A0639FE0F0B0BCB600C0C0CCC58B366CD74F7F34C0C2057C030CC96FF201A99
          0F953FE9C8C710121292C9E8EBEB9BB576EDDAA95E9758195C80C1B9EBCE3F06
          674588A29DB7FF3238294034EEBEFB1FCEDE738F81E1981D374370707036A3A7
          A767CEBA75EB26FB5EE5006B52FCFF09883F137441BDB52203300272195D5C5C
          F2D6AF5F3F31F0260FD805FFEE3C6128D21305FBF1ECD9B30CC6C6C660F68913
          27182C2C2CC0EC23478E30989B9B3300BD9FCF68676757B869D3A6BE903BFC60
          939DFF3F05E26760DB38383818BE7CF90216E7E4E464F8FCF933DC052626260C
          7E7E7E458C40538BB76EDDDA137E5F08EE825C4D01B04D972E5D62D0D3D3C370
          CDC99327190C0D0D19BCBDBD4B188D8C8CCA76ECD8D119F54814C305C8FE460F
          0390C11E1E1EE58CEAEAEAD5403FB580521D2980858585C1C6C6A68651484828
          0568B2223909898989E93E23C5B99152030041B34067939EB283000000004945
          4E44AE426082}
      end
      item
        Background = clWindow
        Name = 'application-task'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001B34944415478DA63FCFFFF3F0325803134345409489B03
          312F897A3F03F149C6A0A0A0E89292924A313131EDBF7FFF30FCF9F317887F33
          FCFE0D62FF61F8F7EF1F03C491CC0C8C8C2C60CCC2C2C6F0F6EDDBABB366F5B5
          33060404646667674F037905A41884FFFEFD0BC6F8D8209C0E04202FA4AF5AB5
          6A0639FE0F0B0BCB600C0C0CCC58B366CDF4B3AF4F32188998319C7B738A21F3
          500CC3C9A05BF8038F91912124242493D1D7D7376BEDDAB553CDD7A931A468E4
          30CCB93185E178C00D86A74F9F32DCBB778F41505010AEE9FBF7EF0C9C9C9C60
          DADCDC9C213838389BD1D3D33367DDBA7593417EB3DAA8C970CCFF3A51CE6766
          66660046402EA38B8B4BDEFAF5EB2782429C14C0C2C2C200F47E3EA39D9D5DE1
          A64D9BFA4EBF38C660206CCA70E1ED6986BC13490C87BC2FE33580959595C1CF
          CFAF88D1C2C2A278EBD6AD3D961B34181254331916DC9ECE70C0F322C38B172F
          C061202525C5F0ECD93394B0F8F1E30703501F83B7B77709A3919151D98E1D3B
          3A41824E3B0D19F6B99F27CA0B1C1C1C0C1E1E1EE58CEAEAEAD5478E1C692127
          0C6C6C6C6A188584845280A94A9124DD50C0C4C4749F91E2DC48A9010028A8D0
          588C0AA88C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'dummy'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000000E14944415478DAA5D3D10686301400E07FAF5222125D44
          22F64F6F5497A98BD265BD51D68844179188D4ABF4F7EF3022D1DACD393B763E
          676368DFF7CF9B85FEC0B66DF591E387BD4C51942F07D675951A435555C48165
          59A4004DD30098E759004992F098A6E9E9F0555DD77500A66912401CC73C6659
          7602AEEA866100308EA300A228E231CFF3137055374D13806118A4DEC0B22C00
          FABE97026CDB06A0EB3A29C0711C00DAB615401886B74D455188DC755D009AA6
          11401004B740599622F73C0F00C698D41530C600504AA5004208005555D163FF
          7DD85FFBBE4FD0DBEFFC03E8A981E154B8F5CB0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'cog'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002DC4944415478DA75535D485361187ECE9C88A4B1621BCA
          D2B59928F9172AEA2464126A374576651616D64D88F83B356B3F4E317FB328EA
          AA5192E65584DDA4C21A154E45698AD6866D73E59AE88491620EDD4EDF996EB8
          C8F7E63BEF799FF37CEFF3BECFA17048F43C784893004551A8AFADA6FE87F1D5
          FD496777EF30393C8DB2BA6226BFDFD94DDF282BC38BFE7EDC6994F9701D5D3D
          EB84F013C15C0A2220E0E1C4C4840B1E8F070B0B5F9D04C4E571B938291663C9
          62C19AD3C980E9A4A4D3544848088C46D33B427A3140A050A947C56271417656
          960F2C14C6626BEB0F1CBF1CE0F379883C1A099BCD061E9787C9A929582C9631
          B54A517850429C5CA99E263770040201363736E1D7EF8F88C808D8ED76D2E182
          ABB54599495E998366704FA1A2AF5D2D85EDC732BC5E2FBE198DA0C9C962B120
          1209111E7E04C2D818BC1A18409B5A450566A052B7D1BBBBBBA4552E7273CF62
          E3F7060CB3062C2D59DF4C4E4CBCCCCEC9B92E12892EA7A59EF149191FFF8CD5
          5527D86C3694F2BB142557B6D0E5E5E570BBDD585D5B058B6241AFD7636C7424
          6F74E4FD5461D1F9AC82C2A28F1289045EDA0B3E8F8FB0B03068341A9039EC11
          ECECEC903645484B4DF3C9D14FE8E170389E935BDA4977CDD1D1D1372539125F
          6D766E1656AB15A1A1A17B04E45D0653A86F689A2E2D2D0523C7E572617E7E1E
          0C31034C4E4E0687C3F1B53D3838889EAE8ECCFD19CC0486582B6BF0E6E7E553
          2762044C0514195EC0716498642558FE698756A775F5F5761F0B32524353F37A
          7C7CFC71A9540A93C984B8B83830A6F2EE6F81318FD96C46424202743A1D1617
          17DF7675B41707082A2AAB3EA4A7A74B998FE6E6E65C64FF9CA8A8285C2929C1
          EBA121ACACAC309EA05352522886D06030681F3FEA3B1764A4DB15951AD293F7
          D9D327D524675756D54C2BE472A85B5B41C03ECDD5B5F55AF7F6F61782B945D2
          EF414622718A91C5388C496AEA64B45F02D1ECC7316BDAF463FE25F837320E3C
          CF1CF63BFF05C6B555F08ACDCA4C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'radiolocator'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003454944415478DA65937F4CD4651CC75FCF7177DCCD0B24
          60A5B1B3F0E0EE984A30FCB9B2650DFA4B3669885DE6A9E89263126D612D8749
          358B3F040747332D31A50EB416F64F52F6C3B55542A4C8E280B316C8CADDA970
          77C071C0F7DB034E87F4D99EEDF97E3EEFEFFB799ECFE7FD16CC8B534D1EB7AA
          A83B5430DCCD0988088DF878ABA3C83517ABAAEA4CED4E347ED294AB2A9C5FBB
          2A07AB3D7D3E2FBD3D7DFC7CA903A121CFF992A3ED3E82C6934D0EAD5677BA60
          633E3F5EB94845EDEB74F5744AB0568214B2EC59BC577688A732D773F65C2B53
          539379CE6D8EB67B04C78E37AACF6FDC44CD9923543556B2284387C6A4674CE8
          B8ADDE869004F5090E3AABD85B50C6D9D62FD855EC14B3041F1E3FE15E9EB1AC
          E4AF5B036CAF2D60DD2688068C84FD3AC6C675F4FB25815181444972199AF77F
          8E39DECCD53FBA1B76ED74BA44C307C72279CFE6C66E782D97B53B7BD14C6919
          BEA12534AC616C44CB6FC12004F41023DB6A9CC41CB2F2FDBB6D9CFFB66D62CF
          CBC50651EF3EAA6E78F21932765B782C1FD6672C40D147080DC6120E092E7CA3
          A2A64F30F4E53493F2128FA642779D8F1F2E5EC055B25B88BAFAA3EAEAC757B2
          EA8D6CB04984BCFED27511D213B5C427A878BE92B90485A1330A5372BB240D7E
          39D849FBE5764A5D92A0F648839A695FC1D3879E8074419C2F81A02584A1CF44
          C29A51821D0B18B58689B916C774EA2DF0AA7CB7EF2739A52ECAF6EE11E2704D
          DD843DD5A62F6EDECE90E13A0F04164AE5A88C2D1E954F518899D4601C34A1C8
          798D260DB33892C2479B4FD0F3A7375AFE4A69AC7873FF8166ABC556E80BF753
          F57525A4C0C2C107D187F54492C731F88D444D5186CDF2F441A87CAE0A8B298D
          5E9FB7E59DB7DFDA3CA303737575CDDF368B9DD3574ED2F2FB67900C5A74B2F3
          B23A8D7CBB6C9F1F0AB3B6F062E636BCBE1E2A2ACA97481D0CCC0AA9A8C8E1CA
          CECEA9B72DB5D2F1EFAF34B4BB090402B326404E2F29298992952E721E5E8DF7
          5A2F9D9D1DA51E4F937BAE17E20A8B5ED8BA7CD98AFA4716A5F0506232468391
          BB0CE391716EDCF433F4CF75AE767795B6783E3D250BC1FBCC344322575AF9AB
          15FBE2E2E3F305427FCF75A8D1E0C8486BCDE1EAF7E567FFCCCFFF73E39C3073
          47B89A3939A9656ECA3530DFCEFF0190744EF036A4BB0A0000000049454E44AE
          426082}
      end
      item
        Background = clWindow
        Name = 'application-monitor'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002374944415478DAA5534D68134114FE66779374B11B1B4D
          02F6B087A6108CE0212A0908F112C18081249083488FBADA54451B14F1E04528
          8214448C12F020A2E025A5482946A4E450C4E249F420DE4C4183C4846CC9DFEE
          26CE4C9AA017A176E0E30DCB7CDFFBDE7BFB48BFDFC76E0E49A7D35334862894
          1D72758AF724954A9DCD66B337BD5EEF21CB32619A168501C3607713BD5E0F03
          932208913824C98E6AB5FA399F5F5C208944E2622693C9B152D86306CBB238FE
          7567D0E8612568E572F9B1C7E3E1BE86422CFE296A1806DAED2E04813990B8CB
          8D8D771A49269317A8D547814060948559EF1C9B8655FAC8898D864ED184280E
          EC33349B0DACADBDD6483C1E9FA5991EFAFD7E4E6460A4FE9913683D59A5C42D
          FAB8CB49369B7D3BDAA0EB35148BAF34128BC5E608210F7C3E1F270E31767B06
          956B396ADB1C651D0A48928D0AFFC4CA4A4123D168F4B2288AF7555545FF7800
          AD371FB8C0C4C2396C5ECA41F6ABD83F771A9DB79F6096BE70322BA55EAF6079
          F9A5462291C855F9E4D1C5C9D06174BE6E62FC546834E87A6E1513B331FCBAF1
          0CCAF9286CBE0398945D38E29AC2D3992B585A7AA19170383CEF7038EEB9DD6E
          DEC44EA7C3E7BEE7E034F665E2D0F345D87FB06F3D0E4206E2ADD6160A85E71A
          090683D79D4EE75D0ADE403605BB7D1C8AE206D4BD7054BADCB220887FFD86B5
          DAF78100EDFE2D97CB7587BAC0702F64D94945C64644412034334B4D4602EDB6
          8EF5F5D23C511445A34D54FF6791A8DB6F4C52DE5E2469877C932D14D9ED3AFF
          06D0A72BB238013D020000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'json'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002A64944415478DAA5934F68927118C71F379D22737FD495
          E96A933934E81278704B2F8AA193C988EDD210A22E1188875842870E1D828206
          5DA24B11083170CBC3D8DED6A0C320100C621873088359C33FD339DC5474A9EB
          FB7BF18D4141877EF0457F2FCFF379BECFF33EAFE8F4F494FEE78818A0A3A3E3
          ECB3739013BA0A5D683FCB405FA175685F086CB55A7F00EC62B1F88E46A3B932
          38387851A7D329F47A3DE1F7389148FC0887C3DF0E0F0F5F23EED3DF0076A954
          7ADF60305CEBC5914824D4D5D54532998C140A0559AD56EAEFEF2FCDCDCD7DDE
          DBDB7BCE206701E751F985C96472F5F4F4F4B244DC299FCF1303198D46EAEEEE
          268BC542B55AAD140C063F1C1D1D0500C809805BB0FC00762FC305E13F73B41D
          8BC5A61968686868717474D40463A4D56A291289245656569E01F05600BC1C1B
          1BBBC9ACA35F9A9999218EE326B6B6B6B862B1484AA5D23D3E3EBECADA69341A
          843994E6E7E7DF01704F002C4F4D4DB951ADD3E3F11086480B0B0B2AB82866B3
          59E646E970380E583B3B3B3B6C364D003800260500E7F3F99C9D385EAF97AFB2
          B4B4C403AAD52A0F70B95C07E572993637370961CD5028B40E805B00BC999D9D
          9D56A9540AB3D9CC06456B6B6B13B95C8EEBEBEB230CD66DB3D956A3D1283F58
          808E3736361601B82D00EEA2C7A0D3E91C6609272727148FC7B793C9E4346B07
          5A44922993C950BD5EA75D9C743AFD14805702402B97CB437EBFDF323030202F
          140AC48607089F80F7CFBBAA542A84D7574DA552D166B3E903207D769126D56A
          F5E3402060C25D86CDA352A9C4ECF2894CB8D730D46DCCE811E2977F2F924824
          1256F90616E6A1DD6E1F1E191951A05F09AA11ACFF84AB6354DF45D213C4BD67
          C17C6E1B20C69D4D5D0DE9A0EB9019BAD4067F87BE401FDB1F561E2A20B72100
          580FF2B6C4FFF8829B5005AA22B7F50B54F169F0866692200000000049454E44
          AE426082}
      end
      item
        Background = clWindow
        Name = 'fingerprint-recognition'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000024B4944415478DA75935D4854411886BF59AB5D0A8352B3
          0DFAC1E8075208A9DC884234338BC83225CB205B41F26A63E907E9626FDA8BA0
          BA088208A20B4332A402FB872EBA8830A562214929DA022DDB2D6FACDD3D7BCE
          F48C2DD1C13AF0F07E33F37EEFCC19CE515A6B31CFDEF741F9EBC9D3A25B1D71
          8EDA62FBE16556B2572DB16EA72465332FFD250FA78CEA1F011ED84CD31C4842
          01CDABE100F5D78C647613909916B0E7DD11514A99B212E33158070B681C8701
          EA2EB41CD29C2EF2A2E4913BA07EA4D5046CB0957D13F33D780CA3342C426BD0
          1D70117C96635D88AD783AE90AD8F9FA206FAE6E61EE737EEFDC4CBD043E5277
          E74E728AF149187A53FA6CC815B0ED79E3628E1662F1331CC67C161D8695D427
          D06BA8B9D085DC4168243030EE0AD8F26057BD16C7C2D00997602DB4E4DEFD15
          DA01514E77C616A736BE3DF6C515B0BEABAA9D804116BBD9A109732F34400F34
          D3781DDD6FC68EE8C058CB70D215507AAEC20424692E23A4113597194383E879
          F434211DE815026A12E1B8FB129787D76C642142C865F40321CBB4D8ED34F432
          2E42B330CA3D556AAF6E9B888E695780BF69A98FC54398EB503F661CFABE3915
          DAC6388C76B27E037BDF64CF37F77730BFAA589CB4BD0F936948402154C0261C
          C7D16A08A87C4F507955E6C79D0977C0EC55F9228E2ED3B68E325320A2BFA34F
          D0BB6835BA55F224C4871E37FECCDB943B6056A157B4C31EB69E8B169B1F0ACA
          A196E6AC785484994FCA33F5B94B3661B90372FFC10CF0C23CA8832218847EF8
          693606C718FFF4FD27C00733CD34D890CE312DE0175168BCF0F381EDEC000000
          0049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'funnel'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002294944415478DAA593CF6FD27018C6DF52C60F29508290
          CC7124FE015E38B344BDB0D8C4493C71DB2F4F8B3199BAC425C6C9A2F1E08118
          C2C593F1E081661B0957343384D362301E6091643A93058C944219057CBE4837
          96E13CF8264FDABEE9F3E9FB3E6DB97EBF4FFF531C03489234532E97274BA512
          699AC6FA66C86332995C76BB9D0441D05D2E575B14C5368E1AAEBFA6D3697914
          309F4AA592BAAE0F00AD568B54B54D87874DE2F909009C0423399D0231E0C242
          F40E00AF4E013001251289A4A22830ABA4280DAAD51A64365B06668FC7436EB7
          9BE2F147CB98E0E81420128950A55299CF6432C96AB50A630D931CD1C141832C
          163B79BD5EF2F97C248A6E5A5ABABDEC70385ECAB27C92412814A266B3194406
          D3F97C3E59AFD7B18646FBFBBFC86613C8EFF70F26585C8CDEC73432CFF35FB2
          D9EC190001104406D3854221A9AA4D4C55258743A4A9A94B148BCDAC21C47700
          7C0680FE06602106D1BFB6B3F331B1B7F703FBFB686EEEE65318DF02F089E5F1
          2F00EB5F866E6D6F7F78128D5E7F86D0DEC0B80B008D05040201EA743A83F0D8
          AB1CD6AA01B05AAD2B10F2B0113BE2FBA062B17802E0386EDC47760C8061C568
          76BBDD8186939E0B7808C03A001B003C30CC6C5556C62F700630727E6F6BEBFD
          F3D9D9AB6BE83DEEF57AC74F3D17C08AED88BABBB9997B214961F6F40D96D168
          8D03F090005D607D2896CBEDC6C3E12BAB18FDF5D0D78214481F07988026A18B
          43C08D3F1B7105DCF36D08F8097D873403F01BF0D23DF07A7A44130000000049
          454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'game-monitor'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002634944415478DAA5535D68527114FFFDFD987119344710
          73C87091980F810F3E34620F3EC81A4892483D449123BC5EDD3453B7B6568DAD
          B944A26D4EAFD02C1914088510D44B8F45CFBDF7301FF651B1A99B2C697EF4FF
          5FFBD8EBD681C3F99F87DFC7B9E75CD26C36F13F419C4EA78DD6AE23E23788C3
          E170A75229717F7FFF5048A552098FC7C313BBDDEE49241249AFD78B46A30136
          D29F3CD8D7EB7554AB3FC126EEEC54431493F0F97C02B1D96CC2120D46603018
          24D0AE300045EE03EAAB9B60CE6A1A358EDD184041588442A1C4DEDE2EB2D9A7
          A0182F191C1CF451FC2265835EAF47AD5643F9781B7AF92B58BDBB8472B982B3
          0B117C8E3DA3845B92F54AA584743AC1088689D56A1DA6040B7EBF1F3A9D4E22
          6806ECBF276DE2DF92088AF75E4A0E7676B6313F1F630423C462B1F893C9E493
          402000AD560B3272110CB3362A421375531CC1E6F832BAA243124935F696BAFA
          86586C1A822004487F7FFF2D4AF038180CA2E791B7A54B6535ED27B05ED96218
          74FF7D13D6E2FBD40B4C4F4F308220E9EBEBBB4DD7186704BA3901DBD977505F
          BB20A911420E54E047EE23B8CBE7B11DCD617232CCD6182266B3392C8A622C14
          0AA1F7218FAFB32B3839711DC595F768AC972093C920EB56A3F3AA1558FE040C
          9D4331FE0A636301F03C1F21269369349D4ECF452211A8542AC8E54AB49F3E85
          33372FA1107F4D7B05B4413BBE3C7F03AE4C3F64714372130EFBE076BBC788D1
          68BC93C96466676666E87A2A1280E33A5ACA32B9540961D9DA040B954A4E8FC8
          0D97CB354E341ACD837C3E7FFF28A74CAF788A701CC753959EA3FC49F46A0BCC
          531BCD0E9A8A43E26B344BBF00609EFADDDE4711CD0000000049454E44AE4260
          82}
      end
      item
        Background = clWindow
        Name = 'gear'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002EE4944415478DAA5535D489361147E37A7CCFCC3B5B512
          654622CB8DB9A1985B4A1114A6101674B57953E42CA60649D38513274D1706A9
          A39C51376E171294049A1444A16D2493CDB149889143A1D6D664FEA4ECCFCEF9
          B605D145177D7078BFEF39CF79CE777E5EDAFEFE3EF99F8786020D0D0D844EA7
          93F4F47442A3D1086269696952F08B923C572C16B3A57C914884C4E371323535
          F5A70083C19001A91CB097705E9898987888648542712385C1B9188D46AD7F09
          80F3A44020B8DCD1D1D1AE56ABEFF8FDFED0D898C988E99B9B952A0E87936730
          18EE0E0E0E0E793C9E6710F7E1B7405D5D1DF25A4D26D3B0DFFF9D1414141087
          C3B922168B4BD0E1743A57F87C7EC9C646907038878852A96C03786466662621
          2093C948464646219BCDBEA2D576F722969B9B8B25510D805F269B9B9B547F74
          BABE9E4020F0341C0EAF5BADD68480542A3D05CE4A24B7B428AF5754541C73B9
          5C9FF4FAFEB78869345D674422117F6161E1F3E8A8E911621067B7D96CEF2901
          08B80DF51AB6B6B60893C9245959D9442E570C2C2D79BA905C5626E8B758CC9D
          3B3BDB646F6F8FE4E4E4605FD420788F12100A855D50BF7E77779764666692BC
          3C16696A52F42D2E3AB428505E2ED18D8F9BBB43A1204971A00F1AB7DBDD4F09
          9496969E85F30492DBDB6F5EADA9395DBCB6F6CDD9DBAB798E584F8FFE5251D1
          61F1DCDCBBD5A1A1074FA805A2D13E2E2F2FBFA104783C1ED6540C1D56198DA6
          5B98A5B0F028FCC941AA89A1D00FB2BEFE85CAAC5229EFC3A48C20B0EAF57A13
          4DE472B9C8D34D4EBEEEC631E6E7B388CBE5F056554979E8989FB7794522092F
          35C6C6C6737D006B7D3E5F4280C56221EFBC445229371846E40AC5C5619FEFEB
          F6F4F4AC061DF5F5B57A2EF748B6D9FCA24DAD6EB5381C760BC0AF82C1604200
          E78B3387BB500F2B5D0B737F0CDFD7ECF695CE683442AAAB8F0FA43058E15958
          EF69DC0D2A3629801B8305B3C1989815C484205686EF10B40441EEE4C50A83F9
          C102101B4D09D001389034C63F6E700C6C07EC27C4C67F014BA884F0255B2027
          0000000049454E44AE426082}
      end>
    Left = 145
    Top = 368
    Bitmap = {}
  end
end
