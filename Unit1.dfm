object Form1: TForm1
  Left = 348
  Top = 250
  Width = 894
  Height = 618
  Caption = ' PR - Green Network (Build# 0037)'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 364
    Width = 886
    Height = 8
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    Beveled = True
    ResizeStyle = rsUpdate
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 372
    Width = 886
    Height = 196
    Align = alBottom
    TabOrder = 0
    object JvNetscapeSplitter1: TJvNetscapeSplitter
      Left = 704
      Top = 1
      Width = 16
      Height = 194
      Align = alRight
      Beveled = True
      Color = clWhite
      MinSize = 1
      ParentColor = False
      ResizeStyle = rsUpdate
      OnCanResize = JvNetscapeSplitter1CanResize
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
      WindowsButtons = []
      ButtonColor = clWhite
      ButtonHighlightColor = clSilver
    end
    object NxPageControl2: TNxPageControl
      Left = 1
      Top = 1
      Width = 703
      Height = 194
      ActivePage = NxTabSheet3
      ActivePageIndex = 0
      Align = alClient
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      BackgroundColor = 14540253
      BackgroundKind = bkVertGradient
      Margin = 0
      Options = [pgBoldActiveTab, pgTopBorder]
      Spacing = 0
      TabHeight = 17
      TabStyle = tsClassic
      object NxTabSheet3: TNxTabSheet
        Caption = 'Players'
        PageIndex = 0
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PlayersGrid: TNextGrid
          Left = 0
          Top = 0
          Width = 703
          Height = 173
          Align = alClient
          AppearanceOptions = [aoAlphaBlendedSelection, aoHighlightSlideCells]
          HeaderStyle = hsVista
          HighlightedTextColor = clHighlight
          Options = [goGrid, goHeader, goSelectFullRow]
          PopupMenu = TBPopupPlayers
          TabOrder = 0
          TabStop = True
          OnAfterSort = GridAfterSort
          OnCellColoring = PlayersGridCellColoring
          OnSelectCell = PlayersGridSelectCell
          OnCellFormating = PlayersGridCellFormating
          object NxIncrementColumn2: TNxIncrementColumn
            DefaultWidth = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = '#'
            MinWidth = 20
            Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing]
            Position = 0
            SortType = stAlphabetic
            Width = 20
          end
          object NxTextColumn5: TNxHtmlColumn
            Alignment = taCenter
            DefaultWidth = 58
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Prefix'
            Position = 1
            SortType = stAlphabetic
            Width = 58
          end
          object NxTextColumn6: TNxHtmlColumn
            DefaultWidth = 141
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Name'
            Position = 2
            SortType = stAlphabetic
            Width = 141
          end
          object NxNumberColumn3: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Score'
            Position = 3
            SortType = stNumeric
            Width = 62
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn4: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 51
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Ping'
            Position = 4
            SortType = stNumeric
            Width = 51
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn5: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 55
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Deaths'
            Position = 5
            SortType = stNumeric
            Width = 55
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn6: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 75
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Pid'
            Position = 6
            SortType = stNumeric
            Width = 75
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn7: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 58
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Kills'
            Position = 7
            SortType = stNumeric
            Width = 58
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn7: TNxTextColumn
            Alignment = taCenter
            DefaultWidth = 58
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Team'
            Position = 8
            SortType = stAlphabetic
            Width = 58
          end
          object NxCheckBoxColumn1: TNxNumberColumn
            Alignment = taLeftJustify
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Position = 9
            SortType = stNumeric
            Visible = False
            FormatMask = '#,#0.0'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxImageColumn11: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 34
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Star'
            Header.DisplayMode = dmImageOnly
            Header.Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000006060605B5B5B5252524E4E4E00000000000000
              0000000000000000494949494949494949494949000000000000000000737373
              6D6D6D7373735454545252520000000000000000004949494B4B4B5151515252
              524949490000000000000000000000007A7A7A9696969F9F9F54545457575752
              52524949494242427B7B7B6C6C6C515151000000000000000000000000000000
              888888767676C2C2C2C0C0C0737373575757636363A4A4A49E9E9E3C3C3C5B5B
              5B0000000000000000000000000000000000008F8F8F979797D2D2D2CBCBCBB5
              B5B5BABABAB4B4B46C6C6C5B5B5B000000000000000000000000000000000000
              0000009F9F9F8C8C8CD9D9D9D7D7D7D0D0D0C6C6C6BFBFBF5454545757570000
              00000000000000000000000000B6B6B6B0B0B0A3A3A3DBDBDBDFDFDFD9D9D9D9
              D9D9D2D2D2CBCBCBB4B4B45D5D5D606060575757000000000000BDBDBDB4B4B4
              C6C6C6ECECECF1F1F1EBEBEBE1E1E1DFDFDFD9D9D9D2D2D2CBCBCBC0C0C08282
              825D5D5D5B5B5B000000BDBDBDB3B3B3B3B3B3ADADADADADADB3B3B3E7E7E7E7
              E7E7DFDFDF8D8D8D7F7F7F7070706A6A6A6060606A6A6A000000000000000000
              000000000000000000B5B5B5D6D6D6F1F1F1C5C5C5A6A6A60000000000000000
              00000000000000000000000000000000000000000000000000BEBEBEC3C3C3F3
              F3F3B1B1B1B0B0B0000000000000000000000000000000000000000000000000
              000000000000000000BDBDBDB4B4B4E3E3E3B4B4B4BDBDBD0000000000000000
              00000000000000000000000000000000000000000000000000000000BBBBBBBA
              BABABDBDBD000000000000000000000000000000000000000000000000000000
              000000000000000000000000BDBDBDBDBDBDBDBDBD0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Header.Alignment = taCenter
            Position = 10
            SortType = stNumeric
            Width = 34
            Images = PngImageList1
          end
          object NxTextColumn26: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Note'
            Position = 11
            SortType = stAlphabetic
          end
          object NxNumberColumn23: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'ID'
            Position = 12
            SortType = stNumeric
            Visible = False
            Increment = 1.000000000000000000
            Precision = 0
          end
        end
      end
      object NxTabSheet1: TNxTabSheet
        Caption = ' Mates'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000040B0C00040C0C00030B0C01030B0C02030B0C01030B0
          B01030A8B00030A8B00030A0B0001098A0000000000000000000000000000000
          00000000000050D0D0102098A04020889090108890E0108080E0208080D01078
          80A0207880701078803030A8C0101098A0001098A000000000000000000000D8
          F00030E0F01010A0B09010A0B0FF10A0B0FF10A0C0FF0098C0FF0098C0FF0090
          C0FF1088A0FF208090FF1078805020A8B01030A8B0001098A0000000000010E0
          F01010A8B0B010B8C0FF10C8D0FF20D0E0FF10C0D0FF10B8D0FF10B0D0FF10A8
          D0FF10A0C0FF0090C0FF1088A0F01078805020A8B01040B0C00000C0D00010C0
          D06020C8D0FF20D0E0FF20D8E0FF107070FF103030FF001010FF004850FF0068
          70FF10B8D0FF10A8D0FF1098C0FF108890B01078803030B0C00040E8F00020C8
          D0E020D0E0FF20E0F0FF205860FF207880FF30B0C0FF30C8D0FF30A0B0FF0070
          80FF005860FF20C0D0FF10A0C0FF1090B0FF207880703098A01060F0FF1020D0
          E0FF30E8F0FF20B0C0FF40A8B0FF50E8F0FF50F0FFFF40F0F0FF20E0F0FF50D8
          E0FF107880FF20C8D0FF10B0D0FF1098C0FF108080B03080800060F0FF1030D0
          D0FF60F0FFFF60F0FFFF50F0FFFF60F8FFFF60F8FFFF50F0FFFF40F0FFFF20E8
          F0FF10E0F0FF20D8F0FF20C0E0FF10A8D0FF1090A0F00000000050F0FF0030D0
          D0FF80F8FFFF90F8FFFF60D0D0FF60D0D0FF70F8FFFF60F8FFFF50F8FFFF30D0
          E0FF20C8D0FF20E0F0FF20C8E0FF10B0D0FF108890C00000000070F0FF0030D8
          E0FF70F0F0FFC0F8FFFF203030FF101820FF70F8FFFF60F8FFFF50F8FFFF1028
          20FF101820FF20E0F0FF20D0E0FF10A8C0FF108090A080D8E00080E8FF0030D8
          E0C050E0F0FFC0F8FFFF707070FF303830FF80F8FFFF70F8FFFF50F8FFFF6068
          70FF203830FF10E0F0FF10C8E0FF1098B0F01080907080E8F0000000000020E0
          E04050D8E0FF80F0FFFFE0FFFFFFE0FFFFFFA0F8FFFF90F8FFFF70F8FFFF30F0
          FFFF20E8F0FF10D8F0FF10C8E0FF008890C00090A020D0F8FF00000000000000
          000020C8D0B050E8F0FF90F8FFFFC0F8FFFFC0F8FFFFB0F8FFFF80F8FFFF30E8
          F0FF20E0F0FF20D0E0FF10A0B0FF0090A07080F8FF0000000000000000000000
          00000000000020C8D0B050E0E0FF50F0F0FF80F0FFFF80F8FFFF30F0F0FF20D8
          E0FF20C8D0FF10B8C0FF0098A06060E8F0000000000000000000000000000000
          000000000000E0F0FF0020D0E05020C8D08030D0D0E030C8D0FF20C8D0FF20C8
          D0F020C8D0B010B8C020D0FFFF00000000000000000000000000000000000000
          000000000000000000000000000090F8FF00A0F8FF00A0F0FF0080F0FF00E0F8
          FF0060F8FF0000000000E0E8FF00000000000000000000000000}
        PageIndex = 1
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object MatestGrid: TNextGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 703
          Height = 173
          Align = alClient
          AppearanceOptions = [aoAlphaBlendedSelection, aoHighlightSlideCells]
          HeaderStyle = hsVista
          HighlightedTextColor = clHighlight
          Options = [goGrid, goHeader, goSelectFullRow]
          PopupMenu = TBPopupPlayers
          TabOrder = 0
          TabStop = True
          OnAfterSort = GridAfterSort
          OnCellFormating = MatestGridCellFormating
          object NxIncrementColumn3: TNxIncrementColumn
            DefaultWidth = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = '#'
            MinWidth = 20
            Position = 0
            SortType = stAlphabetic
            Width = 20
          end
          object NxTextColumn8: TNxHtmlColumn
            Alignment = taCenter
            DefaultWidth = 58
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Prefix'
            Position = 1
            SortType = stAlphabetic
            Width = 58
          end
          object NxTextColumn9: TNxHtmlColumn
            DefaultWidth = 141
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Name'
            Position = 2
            SortType = stAlphabetic
            Width = 141
          end
          object NxNumberColumn10: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Score'
            Position = 3
            SortType = stNumeric
            Width = 62
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn11: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 51
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Ping'
            Position = 4
            SortType = stNumeric
            Width = 51
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn12: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 55
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Deaths'
            Position = 5
            SortType = stNumeric
            Width = 55
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn13: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 75
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Pid'
            Position = 6
            SortType = stNumeric
            Width = 75
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxNumberColumn14: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 58
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Kills'
            Position = 7
            SortType = stNumeric
            Width = 58
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn10: TNxTextColumn
            Alignment = taCenter
            DefaultWidth = 58
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Team'
            Position = 8
            SortType = stAlphabetic
            Width = 58
          end
          object NxCheckBoxColumn2: TNxNumberColumn
            Alignment = taLeftJustify
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Position = 9
            SortType = stNumeric
            Visible = False
            FormatMask = '#,#0.0'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxImageColumn14: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 34
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Star'
            Header.DisplayMode = dmImageOnly
            Header.Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000006060605B5B5B5252524E4E4E00000000000000
              0000000000000000494949494949494949494949000000000000000000737373
              6D6D6D7373735454545252520000000000000000004949494B4B4B5151515252
              524949490000000000000000000000007A7A7A9696969F9F9F54545457575752
              52524949494242427B7B7B6C6C6C515151000000000000000000000000000000
              888888767676C2C2C2C0C0C0737373575757636363A4A4A49E9E9E3C3C3C5B5B
              5B0000000000000000000000000000000000008F8F8F979797D2D2D2CBCBCBB5
              B5B5BABABAB4B4B46C6C6C5B5B5B000000000000000000000000000000000000
              0000009F9F9F8C8C8CD9D9D9D7D7D7D0D0D0C6C6C6BFBFBF5454545757570000
              00000000000000000000000000B6B6B6B0B0B0A3A3A3DBDBDBDFDFDFD9D9D9D9
              D9D9D2D2D2CBCBCBB4B4B45D5D5D606060575757000000000000BDBDBDB4B4B4
              C6C6C6ECECECF1F1F1EBEBEBE1E1E1DFDFDFD9D9D9D2D2D2CBCBCBC0C0C08282
              825D5D5D5B5B5B000000BDBDBDB3B3B3B3B3B3ADADADADADADB3B3B3E7E7E7E7
              E7E7DFDFDF8D8D8D7F7F7F7070706A6A6A6060606A6A6A000000000000000000
              000000000000000000B5B5B5D6D6D6F1F1F1C5C5C5A6A6A60000000000000000
              00000000000000000000000000000000000000000000000000BEBEBEC3C3C3F3
              F3F3B1B1B1B0B0B0000000000000000000000000000000000000000000000000
              000000000000000000BDBDBDB4B4B4E3E3E3B4B4B4BDBDBD0000000000000000
              00000000000000000000000000000000000000000000000000000000BBBBBBBA
              BABABDBDBD000000000000000000000000000000000000000000000000000000
              000000000000000000000000BDBDBDBDBDBDBDBDBD0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Header.Alignment = taCenter
            Position = 10
            SortType = stNumeric
            Width = 34
            Images = PngImageList1
          end
          object NxTextColumn27: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Note'
            Position = 11
            SortType = stAlphabetic
          end
          object NxNumberColumn24: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Position = 12
            SortType = stNumeric
            Visible = False
            Increment = 1.000000000000000000
            Precision = 0
          end
        end
      end
      object NxTabSheet4: TNxTabSheet
        Caption = 'Detailed Info'
        PageIndex = 2
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object ServerInfoRich: TRichEdit
          Left = 0
          Top = 0
          Width = 703
          Height = 173
          Align = alClient
          PopupMenu = TBPopupMenuDetailedInfo
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
      end
      object NxTabSheet5: TNxTabSheet
        Caption = 'Debug'
        PageIndex = 3
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        DesignSize = (
          703
          173)
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 577
          Height = 173
          Anchors = [akLeft, akTop, akRight, akBottom]
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object mapPanel: TPanel
      Left = 720
      Top = 1
      Width = 165
      Height = 194
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      OnResize = mapPanelResize
      object PaintBox: TPaintBox
        Left = 0
        Top = 0
        Width = 165
        Height = 194
        Align = alClient
        Color = clWhite
        ParentColor = False
        OnPaint = PaintBoxPaint
      end
    end
  end
  object NxPageControl1: TNxPageControl
    Left = 0
    Top = 113
    Width = 886
    Height = 251
    ActivePage = NxTabSheet2
    ActivePageIndex = 0
    Align = alClient
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    OnChange = OnPopup
    BackgroundColor = 14540253
    BackgroundKind = bkVertGradient
    Margin = 0
    Options = [pgBoldActiveTab, pgTopBorder]
    Spacing = 0
    TabHeight = 17
    TabStyle = tsClassic
    object NxTabSheet2: TNxTabSheet
      Caption = 'Favorites (0)'
      PageIndex = 0
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TransparentColor = clBlack
      object GlobalServersGrid: TNextGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 886
        Height = 230
        Align = alClient
        AppearanceOptions = [aoAlphaBlendedSelection, aoHighlightSlideCells]
        Caption = 
          'List empty. If you have favorites servers in the list, press Alt' +
          '+F to update information about them.'
        GridLinesStyle = lsHorizontalOnly
        HeaderStyle = hsVista
        HighlightedTextColor = clHighlight
        Options = [goGrid, goHeader, goIndicator, goSelectFullRow]
        PopupMenu = TBPopupMenu1
        TabOrder = 0
        TabStop = True
        OnAfterSort = GlobalServersGridAfterSort
        OnCellClick = GlobalServersGridCellClick
        OnCellColoring = GlobalServersGridCellColoring
        OnClick = ClickUpdate
        OnColumnResize = GridColumnResize
        OnSelectCell = ComOnGridSelectCell
        OnCompare = GlobalServersGridCompare
        object NxIncrementColumn1: TNxIncrementColumn
          DefaultWidth = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = '#'
          MinWidth = 20
          Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing]
          Position = 0
          SortType = stAlphabetic
          Width = 25
        end
        object NxImageColumn1: TNxImageColumn
          Tag = 1
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'OS'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D535353FFFFFFFF
            FFFFFFFFFFFFFFFF9A9A9AB4B4B49393938D8D8D515151FFFFFFFFFFFFFFFFFF
            FFFFFF5151515B5B5B7070706767674B4B4BFFFFFFFFFFFF5252527A7A7A7D7D
            7D595959444444FFFFFFFFFFFFFFFFFF5D5D5D8F8F8F5555556F6F6F76767671
            71713E3E3E7E7E7EB6B6B66F6F6F5A5A5A515151FFFFFFFFFFFFFFFFFF4E4E4E
            AEAEAEB0B0B05252527272727474746767673E3E3E5F5F5F8E8E8EAAAAAAAFAF
            AFB1B1B18585853D3D3DFFFFFF525252D3D3D39B9B9B5555557575757C7C7C7E
            7E7E4545456363638F8F8F9595959595959494948C8C8C484848FFFFFF515151
            CACACA9C9C9C5757577979797979797A7A7A3F3F3F717171B1B1B1BBBBBBB9B9
            B9B1B1B19494943D3D3DFFFFFF515151D0D0D09E9E9E5757577B7B7B78787878
            78783B3B3B7D7D7DD0D0D0E5E5E5DDDDDDCBCBCBA5A5A5343434FFFFFF515151
            D6D6D6A1A1A15858587F7F7F7A7A7A7F7F7F3E3E3E707070B6B6B6CBCBCBCCCC
            CCC7C7C7B3B3B3262626FFFFFF535353ECECECB3B3B353535378787881818193
            93935F5F5F4F4F4F5C5C5C5F5F5F6363636A6A6A5C5C5CFFFFFFFFFFFF535353
            E4E4E48787875C5C5C8F8F8F5353537070709191915A5A5AFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA7A7A7BABABA78787878787879797977
            77776B6B6B565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF515151
            F8F8F8F0F0F0CCCCCCA3A3A3909090818181828282646464FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF656565707070FFFFFFFDFDFDEAEAEAC1C1C174
            7474474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF535353535353535353505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Hint = 'Operating system'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 1
          SortType = stNumeric
          Width = 23
          Images = Png16ImgList
        end
        object NxImageColumn2: TNxCheckBoxColumn
          Tag = 2
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'PB'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF666666666666B2B2B2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF6666666666667D7D7D7D7D7D666666FFFFFFFFFFFFFFFFFF666666
            666666B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666666666667D7D7D7D7D
            7D666666666666FFFFFFFFFFFF666666666666B2B2B2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF666666666666666666FFFFFF666666666666FFFFFFFFFFFF666666
            666666B2B2B27D7D7D9B9B9BFFFFFFFFFFFFFFFFFF666666666666666666FFFF
            FF6A6A6A666666FFFFFFFFFFFF666666666666B2B2B2666666666666666666FF
            FFFFFFFFFF6666666666666666667D7D7D666666FFFFFFFFFFFFFFFFFF666666
            666666B2B2B27D7D7D6666666666668B8B8BFFFFFF666666666666666666FFFF
            FF666666666666FFFFFFFFFFFF666666666666A5A5A5FFFFFF6666666666667D
            7D7DFFFFFF666666666666666666FFFFFF666666666666FFFFFFFFFFFF666666
            666666666666666666666666666666B2B2B2FFFFFF6666666666666666666666
            66666666666666FFFFFFFFFFFFFFFFFF666666666666666666666666707070FF
            FFFFFFFFFF666666666666666666666666666666FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Hint = 'PunkBuster presence'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 2
          SortType = stBoolean
          Width = 23
        end
        object NxImageColumn3: TNxCheckBoxColumn
          Tag = 3
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'VOIP'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            A6020000424DA6020000000000003600000028000000100000000D0000000100
            1800000000007002000000000000000000000000000000000000000000000000
            0000004E4E4E5C5C5C0000000000000000000000000000000000008080803E3E
            3E808080000000000000000000000000363636AAAAAA36363600000000000000
            00000000009A9A9A414141676767CFCFCF6D6D6D737373000000000000000000
            363636B1B1B1363636000000000000000000545454525252444444C5C5C5CDCD
            CDD4D4D44E4E4E000000000000000000363636B1B1B136363600000068686851
            51517777775D5D5D676767C6C6C6D3D3D3DCDCDC8D8D8D8D8D8D000000000000
            3636363636363636363F3F3F6A6A6A7272727575755959593939393B3B3B5454
            54E6E6E6EAEAEA6666666868685C5C5C7A7A7A4D4D4D3636365C5C5C7B7B7B8C
            8C8C9E9E9E5757578B8B8BC0C0C03B3B3BD9D9D9F3F3F35454545454545C5C5C
            7A7A7A4D4D4D3636365C5C5C7B7B7B8C8C8C9E9E9E5757578B8B8BC0C0C02727
            27D9D9D9F3F3F3545454545454AFAFAFACACAC606060363636818181C4C4C4CA
            CACACDCDCD7F7F7FA6A6A69C9C9C3B3B3BD7D7D7EFEFEF5D5D5D000000515151
            6B6B6B5757573636363F3F3FA7A7A7C8C8C8C1C1C17777773B3B3B3B3B3B7C7C
            7CDADADAE0E0E053535300000000000000000000000000000000000068686868
            6868A2A2A2949494555555ABABABBCBCBCC8C8C8C6C6C6666666000000000000
            0000000000000000000000000000000000005757576B6B6B3F3F3F9D9D9DAAAA
            AAB4B4B4666666A5A5A500000000000000000000000000000000000000000000
            00000000009A9A9A424242505050A5A5A57E7E7E454545000000000000000000
            0000000000000000000000000000000000000000000000000000008D8D8D3F3F
            3F525252000000000000}
          Header.Hint = 'VOIP support'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 3
          SortType = stBoolean
          Width = 23
        end
        object NxImageColumn4: TNxImageColumn
          Tag = 4
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'PW'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            76020000424D760200000000000036000000280000000C000000100000000100
            1800000000004002000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB5B5B5393142393142393142393142393142393142393142393142B5B5B5FF
            FFFFFFFFFFB5B5B5393142B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5393142
            B5B5B5FFFFFFFFFFFFB5B5B53931423931423931423931423931423931423931
            42393142B5B5B5FFFFFFFFFFFFB5B5B5393142B5B5B5B5B5B5B5B5B5B5B5B5B5
            B5B5B5B5B5393142B5B5B5FFFFFFFFFFFFB5B5B5393142393142393142393142
            393142393142393142393142B5B5B5FFFFFFFFFFFFB5B5B5393142B5B5B5B5B5
            B5B5B5B5B5B5B5B5B5B5B5B5B5393142B5B5B5FFFFFFFFFFFFB5B5B539314239
            3142393142393142393142393142393142393142B5B5B5FFFFFFFFFFFFB5B5B5
            B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5FFFFFFFFFF
            FFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF282828B5B5B5FFFFFFFF
            FFFFFFFFFFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF282828B5B5B5
            FFFFFFFFFFFFFFFFFFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF2828
            28B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFCECECE282828282828FFFFFFFFFFFF28
            2828282828CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD282828282828
            282828282828BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECE
            CEB5B5B5B5B5B5CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 4
          SortType = stNumeric
          Width = 23
          Images = Png16ImgList
        end
        object NxImageColumn5: TNxImageColumn
          Tag = 5
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'M'
          Header.Hint = 'Current mod'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 5
          SortType = stNumeric
          Width = 23
          Images = ImageList2
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Server name'
          Position = 6
          SortType = stAlphabetic
          Width = 186
        end
        object NxNumberColumn1: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 48
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Ping'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 7
          SortType = stCustom
          Width = 48
        end
        object NxTextColumn2: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 55
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Players'
          Position = 8
          SortKind = skDescending
          SortType = stCustom
          Width = 55
        end
        object NxTextColumn3: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Map name'
          Position = 9
          SortType = stAlphabetic
          Width = 109
        end
        object NxTextColumn4: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 97
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Type'
          Position = 10
          SortType = stAlphabetic
          Width = 97
        end
        object NxNumberColumn2: TNxHtmlColumn
          Alignment = taCenter
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Mates'
          Header.DisplayMode = dmTextAndImage
          Header.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000040B0C00040C0C00030B0C01030B0C02030B0C01030B0
            B01030A8B00030A8B00030A0B0001098A0000000000000000000000000000000
            00000000000050D0D0102098A04020889090108890E0108080E0208080D01078
            80A0207880701078803030A8C0101098A0001098A000000000000000000000D8
            F00030E0F01010A0B09010A0B0FF10A0B0FF10A0C0FF0098C0FF0098C0FF0090
            C0FF1088A0FF208090FF1078805020A8B01030A8B0001098A0000000000010E0
            F01010A8B0B010B8C0FF10C8D0FF20D0E0FF10C0D0FF10B8D0FF10B0D0FF10A8
            D0FF10A0C0FF0090C0FF1088A0F01078805020A8B01040B0C00000C0D00010C0
            D06020C8D0FF20D0E0FF20D8E0FF107070FF103030FF001010FF004850FF0068
            70FF10B8D0FF10A8D0FF1098C0FF108890B01078803030B0C00040E8F00020C8
            D0E020D0E0FF20E0F0FF205860FF207880FF30B0C0FF30C8D0FF30A0B0FF0070
            80FF005860FF20C0D0FF10A0C0FF1090B0FF207880703098A01060F0FF1020D0
            E0FF30E8F0FF20B0C0FF40A8B0FF50E8F0FF50F0FFFF40F0F0FF20E0F0FF50D8
            E0FF107880FF20C8D0FF10B0D0FF1098C0FF108080B03080800060F0FF1030D0
            D0FF60F0FFFF60F0FFFF50F0FFFF60F8FFFF60F8FFFF50F0FFFF40F0FFFF20E8
            F0FF10E0F0FF20D8F0FF20C0E0FF10A8D0FF1090A0F00000000050F0FF0030D0
            D0FF80F8FFFF90F8FFFF60D0D0FF60D0D0FF70F8FFFF60F8FFFF50F8FFFF30D0
            E0FF20C8D0FF20E0F0FF20C8E0FF10B0D0FF108890C00000000070F0FF0030D8
            E0FF70F0F0FFC0F8FFFF203030FF101820FF70F8FFFF60F8FFFF50F8FFFF1028
            20FF101820FF20E0F0FF20D0E0FF10A8C0FF108090A080D8E00080E8FF0030D8
            E0C050E0F0FFC0F8FFFF707070FF303830FF80F8FFFF70F8FFFF50F8FFFF6068
            70FF203830FF10E0F0FF10C8E0FF1098B0F01080907080E8F0000000000020E0
            E04050D8E0FF80F0FFFFE0FFFFFFE0FFFFFFA0F8FFFF90F8FFFF70F8FFFF30F0
            FFFF20E8F0FF10D8F0FF10C8E0FF008890C00090A020D0F8FF00000000000000
            000020C8D0B050E8F0FF90F8FFFFC0F8FFFFC0F8FFFFB0F8FFFF80F8FFFF30E8
            F0FF20E0F0FF20D0E0FF10A0B0FF0090A07080F8FF0000000000000000000000
            00000000000020C8D0B050E0E0FF50F0F0FF80F0FFFF80F8FFFF30F0F0FF20D8
            E0FF20C8D0FF10B8C0FF0098A06060E8F0000000000000000000000000000000
            000000000000E0F0FF0020D0E05020C8D08030D0D0E030C8D0FF20C8D0FF20C8
            D0F020C8D0B010B8C020D0FFFF00000000000000000000000000000000000000
            000000000000000000000000000090F8FF00A0F8FF00A0F0FF0080F0FF00E0F8
            FF0060F8FF0000000000E0E8FF00000000000000000000000000}
          Position = 11
          SortType = stAlphabetic
        end
        object NxImageColumn6: TNxTextColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Country'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 12
          SortType = stAlphabetic
        end
        object NxTextColumn11: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'IP:GPort:QPort'
          Position = 13
          SortType = stAlphabetic
        end
        object NxNumberColumn8: TNxNumberColumn
          DefaultValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'itemid'
          Position = 14
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn22: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 15
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn28: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Server note'
          Position = 16
          SortType = stAlphabetic
        end
      end
    end
    object NxTabSheet6: TNxTabSheet
      Caption = 'GameSpy (0)'
      PageIndex = 1
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object GameSpyGrid: TNextGrid
        Tag = 2
        Left = 0
        Top = 0
        Width = 886
        Height = 230
        Align = alClient
        AppearanceOptions = [aoAlphaBlendedSelection, aoHighlightSlideCells]
        Caption = 'List empty. Update gamespy server list by pressing Alt+G'
        GridLinesStyle = lsHorizontalOnly
        HeaderStyle = hsVista
        HighlightedTextColor = clHighlight
        Options = [goGrid, goHeader, goIndicator, goSelectFullRow]
        PopupMenu = TBPopupMenu1
        TabOrder = 0
        TabStop = True
        OnAfterSort = GameSpyGridAfterSort
        OnCellClick = GlobalServersGridCellClick
        OnCellColoring = GameSpyGridCellColoring
        OnClick = ClickUpdate
        OnColumnResize = GameSpyGridColumnResize
        OnSelectCell = ComOnGridSelectCell
        OnCellFormating = GridCellFormating
        OnCompare = GlobalServersGridCompare
        object NxIncrementColumn4: TNxIncrementColumn
          DefaultWidth = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = '#'
          MinWidth = 20
          Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing]
          Position = 0
          SortType = stAlphabetic
          Width = 25
        end
        object NxImageColumn7: TNxImageColumn
          Tag = 1
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'OS'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D535353FFFFFFFF
            FFFFFFFFFFFFFFFF9A9A9AB4B4B49393938D8D8D515151FFFFFFFFFFFFFFFFFF
            FFFFFF5151515B5B5B7070706767674B4B4BFFFFFFFFFFFF5252527A7A7A7D7D
            7D595959444444FFFFFFFFFFFFFFFFFF5D5D5D8F8F8F5555556F6F6F76767671
            71713E3E3E7E7E7EB6B6B66F6F6F5A5A5A515151FFFFFFFFFFFFFFFFFF4E4E4E
            AEAEAEB0B0B05252527272727474746767673E3E3E5F5F5F8E8E8EAAAAAAAFAF
            AFB1B1B18585853D3D3DFFFFFF525252D3D3D39B9B9B5555557575757C7C7C7E
            7E7E4545456363638F8F8F9595959595959494948C8C8C484848FFFFFF515151
            CACACA9C9C9C5757577979797979797A7A7A3F3F3F717171B1B1B1BBBBBBB9B9
            B9B1B1B19494943D3D3DFFFFFF515151D0D0D09E9E9E5757577B7B7B78787878
            78783B3B3B7D7D7DD0D0D0E5E5E5DDDDDDCBCBCBA5A5A5343434FFFFFF515151
            D6D6D6A1A1A15858587F7F7F7A7A7A7F7F7F3E3E3E707070B6B6B6CBCBCBCCCC
            CCC7C7C7B3B3B3262626FFFFFF535353ECECECB3B3B353535378787881818193
            93935F5F5F4F4F4F5C5C5C5F5F5F6363636A6A6A5C5C5CFFFFFFFFFFFF535353
            E4E4E48787875C5C5C8F8F8F5353537070709191915A5A5AFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA7A7A7BABABA78787878787879797977
            77776B6B6B565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF515151
            F8F8F8F0F0F0CCCCCCA3A3A3909090818181828282646464FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF656565707070FFFFFFFDFDFDEAEAEAC1C1C174
            7474474747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF535353535353535353505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 1
          SortType = stNumeric
          Width = 23
          Images = Png16ImgList
        end
        object NxImageColumn8: TNxCheckBoxColumn
          Tag = 2
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'PB'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF666666666666B2B2B2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF6666666666667D7D7D7D7D7D666666FFFFFFFFFFFFFFFFFF666666
            666666B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666666666667D7D7D7D7D
            7D666666666666FFFFFFFFFFFF666666666666B2B2B2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF666666666666666666FFFFFF666666666666FFFFFFFFFFFF666666
            666666B2B2B27D7D7D9B9B9BFFFFFFFFFFFFFFFFFF666666666666666666FFFF
            FF6A6A6A666666FFFFFFFFFFFF666666666666B2B2B2666666666666666666FF
            FFFFFFFFFF6666666666666666667D7D7D666666FFFFFFFFFFFFFFFFFF666666
            666666B2B2B27D7D7D6666666666668B8B8BFFFFFF666666666666666666FFFF
            FF666666666666FFFFFFFFFFFF666666666666A5A5A5FFFFFF6666666666667D
            7D7DFFFFFF666666666666666666FFFFFF666666666666FFFFFFFFFFFF666666
            666666666666666666666666666666B2B2B2FFFFFF6666666666666666666666
            66666666666666FFFFFFFFFFFFFFFFFF666666666666666666666666707070FF
            FFFFFFFFFF666666666666666666666666666666FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 2
          SortType = stBoolean
          Width = 23
        end
        object NxCheckBoxColumn3: TNxCheckBoxColumn
          Tag = 3
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'VOIP'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            A6020000424DA6020000000000003600000028000000100000000D0000000100
            1800000000007002000000000000000000000000000000000000000000000000
            0000004E4E4E5C5C5C0000000000000000000000000000000000008080803E3E
            3E808080000000000000000000000000363636AAAAAA36363600000000000000
            00000000009A9A9A414141676767CFCFCF6D6D6D737373000000000000000000
            363636B1B1B1363636000000000000000000545454525252444444C5C5C5CDCD
            CDD4D4D44E4E4E000000000000000000363636B1B1B136363600000068686851
            51517777775D5D5D676767C6C6C6D3D3D3DCDCDC8D8D8D8D8D8D000000000000
            3636363636363636363F3F3F6A6A6A7272727575755959593939393B3B3B5454
            54E6E6E6EAEAEA6666666868685C5C5C7A7A7A4D4D4D3636365C5C5C7B7B7B8C
            8C8C9E9E9E5757578B8B8BC0C0C03B3B3BD9D9D9F3F3F35454545454545C5C5C
            7A7A7A4D4D4D3636365C5C5C7B7B7B8C8C8C9E9E9E5757578B8B8BC0C0C02727
            27D9D9D9F3F3F3545454545454AFAFAFACACAC606060363636818181C4C4C4CA
            CACACDCDCD7F7F7FA6A6A69C9C9C3B3B3BD7D7D7EFEFEF5D5D5D000000515151
            6B6B6B5757573636363F3F3FA7A7A7C8C8C8C1C1C17777773B3B3B3B3B3B7C7C
            7CDADADAE0E0E053535300000000000000000000000000000000000068686868
            6868A2A2A2949494555555ABABABBCBCBCC8C8C8C6C6C6666666000000000000
            0000000000000000000000000000000000005757576B6B6B3F3F3F9D9D9DAAAA
            AAB4B4B4666666A5A5A500000000000000000000000000000000000000000000
            00000000009A9A9A424242505050A5A5A57E7E7E454545000000000000000000
            0000000000000000000000000000000000000000000000000000008D8D8D3F3F
            3F525252000000000000}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 3
          SortType = stBoolean
          Width = 23
        end
        object NxImageColumn9: TNxImageColumn
          Tag = 4
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'PW'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            76020000424D760200000000000036000000280000000C000000100000000100
            1800000000004002000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB5B5B5393142393142393142393142393142393142393142393142B5B5B5FF
            FFFFFFFFFFB5B5B5393142B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5393142
            B5B5B5FFFFFFFFFFFFB5B5B53931423931423931423931423931423931423931
            42393142B5B5B5FFFFFFFFFFFFB5B5B5393142B5B5B5B5B5B5B5B5B5B5B5B5B5
            B5B5B5B5B5393142B5B5B5FFFFFFFFFFFFB5B5B5393142393142393142393142
            393142393142393142393142B5B5B5FFFFFFFFFFFFB5B5B5393142B5B5B5B5B5
            B5B5B5B5B5B5B5B5B5B5B5B5B5393142B5B5B5FFFFFFFFFFFFB5B5B539314239
            3142393142393142393142393142393142393142B5B5B5FFFFFFFFFFFFB5B5B5
            B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5FFFFFFFFFF
            FFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF282828B5B5B5FFFFFFFF
            FFFFFFFFFFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF282828B5B5B5
            FFFFFFFFFFFFFFFFFFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF2828
            28B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFCECECE282828282828FFFFFFFFFFFF28
            2828282828CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD282828282828
            282828282828BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECE
            CEB5B5B5B5B5B5CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 4
          SortType = stNumeric
          Width = 23
          Images = Png16ImgList
        end
        object NxImageColumn10: TNxImageColumn
          Tag = 5
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'M'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 5
          SortType = stNumeric
          Width = 23
          Images = ImageList2
        end
        object NxTextColumn12: TNxTextColumn
          DefaultWidth = 186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Server name'
          Position = 6
          SortType = stAlphabetic
          Width = 186
        end
        object NxNumberColumn9: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 48
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Ping'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 7
          SortType = stCustom
          Width = 48
        end
        object NxTextColumn13: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 55
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Players'
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
          Position = 8
          SortKind = skDescending
          SortType = stCustom
          Width = 55
        end
        object NxTextColumn14: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Map name'
          Position = 9
          SortType = stAlphabetic
          Width = 109
        end
        object NxTextColumn15: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 97
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Type'
          Position = 10
          SortType = stAlphabetic
          Width = 97
        end
        object NxNumberColumn15: TNxHtmlColumn
          Alignment = taCenter
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Mates'
          Header.DisplayMode = dmTextAndImage
          Header.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000040B0C00040C0C00030B0C01030B0C02030B0C01030B0
            B01030A8B00030A8B00030A0B0001098A0000000000000000000000000000000
            00000000000050D0D0102098A04020889090108890E0108080E0208080D01078
            80A0207880701078803030A8C0101098A0001098A000000000000000000000D8
            F00030E0F01010A0B09010A0B0FF10A0B0FF10A0C0FF0098C0FF0098C0FF0090
            C0FF1088A0FF208090FF1078805020A8B01030A8B0001098A0000000000010E0
            F01010A8B0B010B8C0FF10C8D0FF20D0E0FF10C0D0FF10B8D0FF10B0D0FF10A8
            D0FF10A0C0FF0090C0FF1088A0F01078805020A8B01040B0C00000C0D00010C0
            D06020C8D0FF20D0E0FF20D8E0FF107070FF103030FF001010FF004850FF0068
            70FF10B8D0FF10A8D0FF1098C0FF108890B01078803030B0C00040E8F00020C8
            D0E020D0E0FF20E0F0FF205860FF207880FF30B0C0FF30C8D0FF30A0B0FF0070
            80FF005860FF20C0D0FF10A0C0FF1090B0FF207880703098A01060F0FF1020D0
            E0FF30E8F0FF20B0C0FF40A8B0FF50E8F0FF50F0FFFF40F0F0FF20E0F0FF50D8
            E0FF107880FF20C8D0FF10B0D0FF1098C0FF108080B03080800060F0FF1030D0
            D0FF60F0FFFF60F0FFFF50F0FFFF60F8FFFF60F8FFFF50F0FFFF40F0FFFF20E8
            F0FF10E0F0FF20D8F0FF20C0E0FF10A8D0FF1090A0F00000000050F0FF0030D0
            D0FF80F8FFFF90F8FFFF60D0D0FF60D0D0FF70F8FFFF60F8FFFF50F8FFFF30D0
            E0FF20C8D0FF20E0F0FF20C8E0FF10B0D0FF108890C00000000070F0FF0030D8
            E0FF70F0F0FFC0F8FFFF203030FF101820FF70F8FFFF60F8FFFF50F8FFFF1028
            20FF101820FF20E0F0FF20D0E0FF10A8C0FF108090A080D8E00080E8FF0030D8
            E0C050E0F0FFC0F8FFFF707070FF303830FF80F8FFFF70F8FFFF50F8FFFF6068
            70FF203830FF10E0F0FF10C8E0FF1098B0F01080907080E8F0000000000020E0
            E04050D8E0FF80F0FFFFE0FFFFFFE0FFFFFFA0F8FFFF90F8FFFF70F8FFFF30F0
            FFFF20E8F0FF10D8F0FF10C8E0FF008890C00090A020D0F8FF00000000000000
            000020C8D0B050E8F0FF90F8FFFFC0F8FFFFC0F8FFFFB0F8FFFF80F8FFFF30E8
            F0FF20E0F0FF20D0E0FF10A0B0FF0090A07080F8FF0000000000000000000000
            00000000000020C8D0B050E0E0FF50F0F0FF80F0FFFF80F8FFFF30F0F0FF20D8
            E0FF20C8D0FF10B8C0FF0098A06060E8F0000000000000000000000000000000
            000000000000E0F0FF0020D0E05020C8D08030D0D0E030C8D0FF20C8D0FF20C8
            D0F020C8D0B010B8C020D0FFFF00000000000000000000000000000000000000
            000000000000000000000000000090F8FF00A0F8FF00A0F0FF0080F0FF00E0F8
            FF0060F8FF0000000000E0E8FF00000000000000000000000000}
          Position = 11
          SortKind = skDescending
          SortType = stAlphabetic
        end
        object NxTextColumn16: TNxTextColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Country'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 12
          SortType = stAlphabetic
        end
        object NxTextColumn17: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'IP:GPort:QPort'
          Position = 13
          SortType = stAlphabetic
        end
        object NxNumberColumn16: TNxNumberColumn
          DefaultValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'itemid'
          Position = 14
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn20: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 15
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn29: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Server note'
          Position = 16
          SortType = stAlphabetic
        end
      end
    end
    object NxTabSheet7: TNxTabSheet
      Caption = 'PlayersOnline (0)'
      PageIndex = 2
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object PROnlinePlayersGrid: TNextGrid
        Tag = 3
        Left = 0
        Top = 0
        Width = 886
        Height = 230
        Align = alClient
        AppearanceOptions = [aoAlphaBlendedSelection, aoHighlightSlideCells]
        Caption = 
          'List empty. Update the list of online playing players by pressin' +
          'g Alt+P'
        GridLinesStyle = lsHorizontalOnly
        HeaderStyle = hsVista
        HighlightedTextColor = clHighlight
        Options = [goGrid, goHeader, goIndicator, goSelectFullRow]
        PopupMenu = OnlinePlayersPopupMenu
        TabOrder = 0
        TabStop = True
        OnAfterSort = PROnlinePlayersGridAfterSort
        OnCellColoring = PROnlinePlayersGridCellColoring
        OnColumnResize = GridColumnResize
        OnSelectCell = ComOnGridSelectCell
        OnCellFormating = PROnlinePlayersGridCellFormating
        OnCompare = GlobalServersGridCompare
        object NxIncrementColumn5: TNxIncrementColumn
          DefaultWidth = 34
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = '#'
          MinWidth = 20
          Options = [coCanClick, coCanInput, coCanSort, coDisableMoving, coPublicUsing]
          Position = 0
          SortType = stAlphabetic
          Width = 34
        end
        object NxTextColumn24: TNxHtmlColumn
          DefaultWidth = 52
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Prefix'
          Position = 1
          SortType = stAlphabetic
          Width = 52
        end
        object NxTextColumn25: TNxHtmlColumn
          DefaultWidth = 112
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Player name'
          Position = 2
          SortType = stAlphabetic
          Width = 112
        end
        object NxImageColumn12: TNxCheckBoxColumn
          Tag = 2
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'PB'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF666666666666B2B2B2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF6666666666667D7D7D7D7D7D666666FFFFFFFFFFFFFFFFFF666666
            666666B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666666666667D7D7D7D7D
            7D666666666666FFFFFFFFFFFF666666666666B2B2B2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF666666666666666666FFFFFF666666666666FFFFFFFFFFFF666666
            666666B2B2B27D7D7D9B9B9BFFFFFFFFFFFFFFFFFF666666666666666666FFFF
            FF6A6A6A666666FFFFFFFFFFFF666666666666B2B2B2666666666666666666FF
            FFFFFFFFFF6666666666666666667D7D7D666666FFFFFFFFFFFFFFFFFF666666
            666666B2B2B27D7D7D6666666666668B8B8BFFFFFF666666666666666666FFFF
            FF666666666666FFFFFFFFFFFF666666666666A5A5A5FFFFFF6666666666667D
            7D7DFFFFFF666666666666666666FFFFFF666666666666FFFFFFFFFFFF666666
            666666666666666666666666666666B2B2B2FFFFFF6666666666666666666666
            66666666666666FFFFFFFFFFFFFFFFFF666666666666666666666666707070FF
            FFFFFFFFFF666666666666666666666666666666FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 3
          SortType = stBoolean
          Width = 23
        end
        object NxImageColumn13: TNxImageColumn
          Tag = 4
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'PW'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            76020000424D760200000000000036000000280000000C000000100000000100
            1800000000004002000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB5B5B5393142393142393142393142393142393142393142393142B5B5B5FF
            FFFFFFFFFFB5B5B5393142B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5393142
            B5B5B5FFFFFFFFFFFFB5B5B53931423931423931423931423931423931423931
            42393142B5B5B5FFFFFFFFFFFFB5B5B5393142B5B5B5B5B5B5B5B5B5B5B5B5B5
            B5B5B5B5B5393142B5B5B5FFFFFFFFFFFFB5B5B5393142393142393142393142
            393142393142393142393142B5B5B5FFFFFFFFFFFFB5B5B5393142B5B5B5B5B5
            B5B5B5B5B5B5B5B5B5B5B5B5B5393142B5B5B5FFFFFFFFFFFFB5B5B539314239
            3142393142393142393142393142393142393142B5B5B5FFFFFFFFFFFFB5B5B5
            B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5FFFFFFFFFF
            FFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF282828B5B5B5FFFFFFFF
            FFFFFFFFFFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF282828B5B5B5
            FFFFFFFFFFFFFFFFFFFFFFFFB5B5B5282828FFFFFFFFFFFFFFFFFFFFFFFF2828
            28B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFCECECE282828282828FFFFFFFFFFFF28
            2828282828CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD282828282828
            282828282828BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECE
            CEB5B5B5B5B5B5CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing]
          Position = 4
          SortType = stNumeric
          Width = 23
          Images = Png16ImgList
        end
        object NxCheckBoxColumn4: TNxImageColumn
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Mi'
          Header.DisplayMode = dmImageOnly
          Header.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000006060605B5B5B5252524E4E4E00000000000000
            0000000000000000494949494949494949494949000000000000000000737373
            6D6D6D7373735454545252520000000000000000004949494B4B4B5151515252
            524949490000000000000000000000007A7A7A9696969F9F9F54545457575752
            52524949494242427B7B7B6C6C6C515151000000000000000000000000000000
            888888767676C2C2C2C0C0C0737373575757636363A4A4A49E9E9E3C3C3C5B5B
            5B0000000000000000000000000000000000008F8F8F979797D2D2D2CBCBCBB5
            B5B5BABABAB4B4B46C6C6C5B5B5B000000000000000000000000000000000000
            0000009F9F9F8C8C8CD9D9D9D7D7D7D0D0D0C6C6C6BFBFBF5454545757570000
            00000000000000000000000000B6B6B6B0B0B0A3A3A3DBDBDBDFDFDFD9D9D9D9
            D9D9D2D2D2CBCBCBB4B4B45D5D5D606060575757000000000000BDBDBDB4B4B4
            C6C6C6ECECECF1F1F1EBEBEBE1E1E1DFDFDFD9D9D9D2D2D2CBCBCBC0C0C08282
            825D5D5D5B5B5B000000BDBDBDB3B3B3B3B3B3ADADADADADADB3B3B3E7E7E7E7
            E7E7DFDFDF8D8D8D7F7F7F7070706A6A6A6060606A6A6A000000000000000000
            000000000000000000B5B5B5D6D6D6F1F1F1C5C5C5A6A6A60000000000000000
            00000000000000000000000000000000000000000000000000BEBEBEC3C3C3F3
            F3F3B1B1B1B0B0B0000000000000000000000000000000000000000000000000
            000000000000000000BDBDBDB4B4B4E3E3E3B4B4B4BDBDBD0000000000000000
            00000000000000000000000000000000000000000000000000000000BBBBBBBA
            BABABDBDBD000000000000000000000000000000000000000000000000000000
            000000000000000000000000BDBDBDBDBDBDBDBDBD0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Header.Hint = 'Buddy'
          Header.Alignment = taCenter
          Position = 5
          SortType = stNumeric
          Width = 25
          Images = PngImageList1
        end
        object NxTextColumn18: TNxTextColumn
          DefaultWidth = 186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Server name'
          Position = 6
          SortType = stAlphabetic
          Width = 186
        end
        object NxNumberColumn17: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 48
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Ping'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 7
          SortType = stCustom
          Width = 48
        end
        object NxTextColumn19: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 55
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Players'
          Options = [coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
          Position = 8
          SortKind = skDescending
          SortType = stCustom
          Width = 55
        end
        object NxTextColumn20: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Map name'
          Position = 9
          SortType = stAlphabetic
          Width = 109
        end
        object NxTextColumn21: TNxTextColumn
          Alignment = taCenter
          DefaultWidth = 97
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Type'
          Position = 10
          SortType = stAlphabetic
          Width = 97
        end
        object NxNumberColumn18: TNxHtmlColumn
          Alignment = taCenter
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Mates'
          Header.DisplayMode = dmTextAndImage
          Header.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000040B0C00040C0C00030B0C01030B0C02030B0C01030B0
            B01030A8B00030A8B00030A0B0001098A0000000000000000000000000000000
            00000000000050D0D0102098A04020889090108890E0108080E0208080D01078
            80A0207880701078803030A8C0101098A0001098A000000000000000000000D8
            F00030E0F01010A0B09010A0B0FF10A0B0FF10A0C0FF0098C0FF0098C0FF0090
            C0FF1088A0FF208090FF1078805020A8B01030A8B0001098A0000000000010E0
            F01010A8B0B010B8C0FF10C8D0FF20D0E0FF10C0D0FF10B8D0FF10B0D0FF10A8
            D0FF10A0C0FF0090C0FF1088A0F01078805020A8B01040B0C00000C0D00010C0
            D06020C8D0FF20D0E0FF20D8E0FF107070FF103030FF001010FF004850FF0068
            70FF10B8D0FF10A8D0FF1098C0FF108890B01078803030B0C00040E8F00020C8
            D0E020D0E0FF20E0F0FF205860FF207880FF30B0C0FF30C8D0FF30A0B0FF0070
            80FF005860FF20C0D0FF10A0C0FF1090B0FF207880703098A01060F0FF1020D0
            E0FF30E8F0FF20B0C0FF40A8B0FF50E8F0FF50F0FFFF40F0F0FF20E0F0FF50D8
            E0FF107880FF20C8D0FF10B0D0FF1098C0FF108080B03080800060F0FF1030D0
            D0FF60F0FFFF60F0FFFF50F0FFFF60F8FFFF60F8FFFF50F0FFFF40F0FFFF20E8
            F0FF10E0F0FF20D8F0FF20C0E0FF10A8D0FF1090A0F00000000050F0FF0030D0
            D0FF80F8FFFF90F8FFFF60D0D0FF60D0D0FF70F8FFFF60F8FFFF50F8FFFF30D0
            E0FF20C8D0FF20E0F0FF20C8E0FF10B0D0FF108890C00000000070F0FF0030D8
            E0FF70F0F0FFC0F8FFFF203030FF101820FF70F8FFFF60F8FFFF50F8FFFF1028
            20FF101820FF20E0F0FF20D0E0FF10A8C0FF108090A080D8E00080E8FF0030D8
            E0C050E0F0FFC0F8FFFF707070FF303830FF80F8FFFF70F8FFFF50F8FFFF6068
            70FF203830FF10E0F0FF10C8E0FF1098B0F01080907080E8F0000000000020E0
            E04050D8E0FF80F0FFFFE0FFFFFFE0FFFFFFA0F8FFFF90F8FFFF70F8FFFF30F0
            FFFF20E8F0FF10D8F0FF10C8E0FF008890C00090A020D0F8FF00000000000000
            000020C8D0B050E8F0FF90F8FFFFC0F8FFFFC0F8FFFFB0F8FFFF80F8FFFF30E8
            F0FF20E0F0FF20D0E0FF10A0B0FF0090A07080F8FF0000000000000000000000
            00000000000020C8D0B050E0E0FF50F0F0FF80F0FFFF80F8FFFF30F0F0FF20D8
            E0FF20C8D0FF10B8C0FF0098A06060E8F0000000000000000000000000000000
            000000000000E0F0FF0020D0E05020C8D08030D0D0E030C8D0FF20C8D0FF20C8
            D0F020C8D0B010B8C020D0FFFF00000000000000000000000000000000000000
            000000000000000000000000000090F8FF00A0F8FF00A0F0FF0080F0FF00E0F8
            FF0060F8FF0000000000E0E8FF00000000000000000000000000}
          Position = 11
          SortKind = skDescending
          SortType = stAlphabetic
        end
        object NxTextColumn22: TNxTextColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Country'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 12
          SortType = stAlphabetic
        end
        object NxTextColumn23: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'IP:GPort:QPort'
          Position = 13
          SortType = stAlphabetic
        end
        object NxNumberColumn19: TNxNumberColumn
          DefaultValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'itemid'
          Position = 14
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn21: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          Position = 15
          SortType = stAlphabetic
          Visible = False
        end
        object NxTextColumn30: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Player note'
          Position = 16
          SortType = stAlphabetic
        end
      end
    end
    object NxTabSheet8: TNxTabSheet
      Caption = 'Public PR Irc chanel (1000)'
      PageIndex = 3
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabVisible = False
    end
    object NxTabSheet9: TNxTabSheet
      Caption = 'News'
      PageIndex = 4
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabVisible = False
    end
  end
  object JvStatusBar1: TJvStatusBar
    Left = 0
    Top = 568
    Width = 886
    Height = 23
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Style = psOwnerDraw
        Width = 150
        Control = Panel2
      end
      item
        Width = 75
        Control = CancelButton
      end
      item
        Width = 50
      end>
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 145
      Height = 19
      BevelOuter = bvNone
      TabOrder = 0
      object ProgressBar1: TProgressBar
        Left = 1
        Top = 4
        Width = 142
        Height = 13
        TabOrder = 0
      end
    end
    object CancelButton: TButton
      Left = 153
      Top = 3
      Width = 72
      Height = 19
      Caption = 'Cancel'
      Enabled = False
      TabOrder = 1
      OnClick = CancelButtonClick
    end
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 23
    Width = 886
    Height = 39
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBToolbar1'
      CloseButton = False
      DockableTo = []
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 96
      DragHandleStyle = dhNone
      FullSize = True
      Images = ToolbarImageList
      MenuBar = True
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      ShrinkMode = tbsmWrap
      TabOrder = 0
      object TBItem1: TTBItem
        Tag = 2
        Caption = 'Favorites'
        Hint = 'Update favorites list'
        ImageIndex = 9
        OnClick = PopupActionsEnt
      end
      object TBItem2: TTBItem
        Tag = 1
        Caption = 'G'
        Hint = 'Update gamespy list'
        ImageIndex = 2
        OnClick = PopupActionsEnt
      end
      object TBItem3: TTBItem
        Tag = 15
        Caption = 'P'
        Hint = 'Update players online list'
        ImageIndex = 4
        OnClick = PopupActionsEnt
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem7: TTBItem
        Tag = 10
        Caption = 'R'
        Enabled = False
        Hint = 'Update selected server'
        ImageIndex = 5
        OnClick = PopupActionsEnt
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object TBItem4: TTBItem
        Tag = 4
        Caption = 'ADDTOFAV'
        Enabled = False
        Hint = 'Add server to favorites list'
        ImageIndex = 0
        OnClick = PopupActionsEnt
      end
      object TBItem5: TTBItem
        Tag = 5
        Caption = 'REMFAV'
        Enabled = False
        Hint = 'Remove server from favorites list'
        ImageIndex = 6
        OnClick = PopupActionsEnt
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBItem6: TTBItem
        Tag = 12
        Caption = 'Options'
        Hint = 'Options'
        ImageIndex = 8
        OnClick = PopupActionsEnt
      end
      object TBSeparatorItem4: TTBSeparatorItem
      end
      object TBItemShowHideSearchBar: TTBItem
        Caption = 'Search'
        Hint = 'Show\Hide search bar'
        ImageIndex = 7
        OnClick = TBItemShowHideSearchBarClick
      end
      object TBitemHideFilterBar: TTBItem
        Caption = 'Filter'
        Hint = 'Show\Hide filter bar'
        ImageIndex = 1
        OnClick = TBitemHideFilterBarClick
      end
      object TBSeparatorItem36: TTBSeparatorItem
      end
      object TBClickUpdate: TTBItem
        Caption = 'ClickR'
        Hint = 'Click update'
        ImageIndex = 10
        OnClick = TBClickUpdateClick
      end
    end
  end
  object TBDock2: TTBDock
    Left = 0
    Top = 0
    Width = 886
    Height = 23
    AllowDrag = False
    object TBToolbar2: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBToolbar2'
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = []
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      ProcessShortCuts = True
      TabOrder = 0
      object TBSubmenuItem2: TTBSubmenuItem
        Caption = '&Actions'
        OnPopup = TBSubmenuItem2Popup
        object TBSubmenuItem5: TTBSubmenuItem
          Caption = 'Join server as:'
        end
        object TBSeparatorItem7: TTBSeparatorItem
        end
        object TBItem11: TTBItem
          Tag = 2
          Caption = 'Update favorites list'
          ShortCut = 32838
          OnClick = PopupActionsEnt
        end
        object TBItem10: TTBItem
          Tag = 1
          Caption = 'Update gamespy list'
          ShortCut = 32839
          OnClick = PopupActionsEnt
        end
        object TBItem20: TTBItem
          Tag = 15
          Caption = 'Update players online list'
          ShortCut = 32848
          OnClick = PopupActionsEnt
        end
        object TBSeparatorItem8: TTBSeparatorItem
        end
        object Add2Fav2: TTBItem
          Tag = 4
          Caption = 'Add server to favorites'
          OnClick = PopupActionsEnt
        end
        object Rem4Fav2: TTBItem
          Tag = 5
          Caption = 'Remove server from favorites'
          OnClick = PopupActionsEnt
        end
        object TBSeparatorItem11: TTBSeparatorItem
        end
        object TBSubmenuItem4: TTBSubmenuItem
          Caption = 'Export to HTML'
          object TBItem25: TTBItem
            Tag = 17
            Caption = 'Favorites'
            OnClick = PopupActionsEnt
          end
          object TBItem24: TTBItem
            Tag = 18
            Caption = 'GameSpy'
            OnClick = PopupActionsEnt
          end
          object TBItem23: TTBItem
            Tag = 19
            Caption = 'PlayersOnline'
            OnClick = PopupActionsEnt
          end
          object TBSeparatorItem30: TTBSeparatorItem
          end
          object TBItem13: TTBItem
            Tag = 20
            Caption = 'Players'
            OnClick = PopupActionsEnt
          end
          object TBItem26: TTBItem
            Tag = 21
            Caption = 'Mates'
            OnClick = PopupActionsEnt
          end
        end
        object TBItem19: TTBItem
          Tag = 12
          Caption = 'Options ...'
          OnClick = PopupActionsEnt
        end
        object TBItem22: TTBItem
          Tag = 13
          Caption = 'About'
          OnClick = PopupActionsEnt
        end
        object TBSeparatorItem10: TTBSeparatorItem
        end
        object TBItem12: TTBItem
          Caption = 'Exit'
        end
        object TBItem31: TTBItem
          Caption = 'Debug'
          Visible = False
          OnClick = TBItem31Click
        end
      end
      object TBSeparatorItem9: TTBSeparatorItem
        Blank = True
      end
      object TBSubmenuItem3: TTBSubmenuItem
        Caption = '&View'
        object TBItemToolBar: TTBItem
          AutoCheck = True
          Caption = 'Tool bar'
          Checked = True
          OnClick = TBItemToolBarClick
        end
        object TBItemSearchBar: TTBItem
          AutoCheck = True
          Caption = 'Search bar'
          Checked = True
          ShortCut = 16454
          OnClick = TBItemSearchBarClick
        end
        object TBItemFilterBar: TTBItem
          AutoCheck = True
          Caption = 'Filter'
          OnClick = TBItemFilterBarClick
        end
        object TBItemMapPreview: TTBItem
          AutoCheck = True
          Caption = 'Map preview'
          OnClick = TBItemMapPreviewClick
        end
        object TBSeparatorItem6: TTBSeparatorItem
        end
        object TBShowServers: TTBSubmenuItem
          Caption = 'Show servers'
          object TBItem17: TTBItem
            Tag = 14
            AutoCheck = True
            Caption = 'Full'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem16: TTBItem
            Tag = 14
            AutoCheck = True
            Caption = 'Unavaiable'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem15: TTBItem
            Tag = 14
            AutoCheck = True
            Caption = 'Without players'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem14: TTBItem
            Tag = 14
            AutoCheck = True
            Caption = 'Without mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem18: TTBItem
            Tag = 14
            AutoCheck = True
            Caption = 'Passworded'
            Checked = True
            InheritOptions = False
            OnClick = PopupActionsEnt
          end
        end
        object TBShowPlayersOnline: TTBSubmenuItem
          Caption = 'PlayersOnline'
          object TBItem8: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Gold star mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem42: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Black star mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem9: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Silver star mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem43: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Red star mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem45: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Green star mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem44: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Blue star mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
          object TBItem30: TTBItem
            Caption = 'Without stars'
            Visible = False
          end
          object TBItem27: TTBItem
            Tag = 22
            AutoCheck = True
            Caption = 'Non mates'
            Checked = True
            OnClick = PopupActionsEnt
          end
        end
      end
      object TBItem28: TTBItem
        Caption = 'Cancel'
        ShortCut = 27
        Visible = False
        OnClick = CancelButtonClick
      end
    end
  end
  object TBDock3: TTBDock
    Left = 0
    Top = 62
    Width = 886
    Height = 51
    object TBsearchToolbar: TTBToolbar
      Left = 0
      Top = 26
      BorderStyle = bsNone
      Caption = 'Search'
      DockPos = 0
      DockRow = 1
      FullSize = True
      MenuBar = True
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      TabOrder = 0
      OnCloseQuery = TBsearchToolbarCloseQuery
      object TBControlItem2: TTBControlItem
        Control = Label1
      end
      object TBSeparatorItem16: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem3: TTBControlItem
        Control = SearchComboBox
      end
      object TBSeparatorItem17: TTBSeparatorItem
        Blank = True
      end
      object TBItem21: TTBItem
        Tag = 16
        Caption = 'Search'
        OnClick = PopupActionsEnt
      end
      object TBSeparatorItem18: TTBSeparatorItem
      end
      object TBControlItem19: TTBControlItem
        Control = Panel1
      end
      object TBControlItem7: TTBControlItem
        Control = Label2
      end
      object TBSeparatorItem19: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem1: TTBControlItem
        Control = RadioButtonServerName
      end
      object TBControlItem16: TTBControlItem
        Control = Label8
      end
      object TBSeparatorItem33: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem4: TTBControlItem
        Control = RadioButtonPlayerName
      end
      object TBControlItem17: TTBControlItem
        Control = Label9
      end
      object TBSeparatorItem34: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem5: TTBControlItem
        Control = RadioButtonPrefix
      end
      object TBControlItem18: TTBControlItem
        Control = Label10
      end
      object Label1: TLabel
        Left = 0
        Top = 4
        Width = 21
        Height = 13
        Caption = 'Text'
      end
      object Label2: TLabel
        Left = 236
        Top = 4
        Width = 37
        Height = 13
        Caption = ' look in:'
      end
      object Label8: TLabel
        Left = 298
        Top = 4
        Width = 58
        Height = 13
        Caption = 'server name'
        OnClick = Label8Click
      end
      object Label9: TLabel
        Left = 381
        Top = 4
        Width = 57
        Height = 13
        Caption = 'player name'
        OnClick = Label9Click
      end
      object Label10: TLabel
        Left = 463
        Top = 4
        Width = 25
        Height = 13
        Caption = 'prefix'
        OnClick = Label10Click
      end
      object SearchComboBox: TComboBox
        Tag = 16
        Left = 27
        Top = 0
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnKeyDown = SearchComboBoxKeyDown
      end
      object RadioButtonServerName: TRadioButton
        Left = 279
        Top = 2
        Width = 19
        Height = 17
        Caption = '  '
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RadioButtonPlayerName: TRadioButton
        Left = 362
        Top = 2
        Width = 19
        Height = 17
        TabOrder = 2
      end
      object RadioButtonPrefix: TRadioButton
        Left = 444
        Top = 2
        Width = 19
        Height = 17
        TabOrder = 3
      end
      object Panel1: TPanel
        Left = 229
        Top = 4
        Width = 7
        Height = 13
        BevelOuter = bvNone
        TabOrder = 4
      end
    end
    object TBFilterlbar: TTBToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Filter'
      CloseButton = False
      DockableTo = []
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 8
      FullSize = True
      MenuBar = True
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      TabOrder = 1
      object TBControlItem13: TTBControlItem
        Control = Label6
      end
      object TBSeparatorItem29: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem6: TTBControlItem
        Control = Label3
      end
      object TBSeparatorItem24: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem8: TTBControlItem
        Control = FilterServerNameEdit
      end
      object TBSeparatorItem28: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem11: TTBControlItem
        Control = Label5
      end
      object TBSeparatorItem25: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem12: TTBControlItem
        Control = FilterMapNameEdit
      end
      object TBSeparatorItem26: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem9: TTBControlItem
        Control = Label4
      end
      object TBSeparatorItem27: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem10: TTBControlItem
        Control = FilterPingEdit
      end
      object TBSeparatorItem32: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem15: TTBControlItem
        Control = Label7
      end
      object TBSeparatorItem31: TTBSeparatorItem
        Blank = True
      end
      object TBControlItem14: TTBControlItem
        Control = FilterPlayersEdit
      end
      object Label3: TLabel
        Left = 66
        Top = 4
        Width = 60
        Height = 13
        Caption = 'Server name'
      end
      object Label5: TLabel
        Left = 259
        Top = 4
        Width = 50
        Height = 13
        Caption = 'Map name'
      end
      object Label6: TLabel
        Left = 0
        Top = 4
        Width = 60
        Height = 13
        Caption = 'FILTER BY: '
        Color = 11908533
        ParentColor = False
      end
      object Label4: TLabel
        Left = 442
        Top = 4
        Width = 21
        Height = 13
        Caption = 'Ping'
      end
      object Label7: TLabel
        Left = 528
        Top = 4
        Width = 34
        Height = 13
        Caption = 'Players'
      end
      object FilterServerNameEdit: TEdit
        Tag = 14
        Left = 132
        Top = 0
        Width = 121
        Height = 21
        TabOrder = 0
        OnKeyDown = OnFilterEditKeyDown
      end
      object FilterMapNameEdit: TEdit
        Tag = 14
        Left = 315
        Top = 0
        Width = 121
        Height = 21
        TabOrder = 1
        OnKeyDown = OnFilterEditKeyDown
      end
      object FilterPingEdit: TSpinEdit
        Tag = 14
        Left = 469
        Top = 0
        Width = 53
        Height = 22
        Increment = 10
        MaxValue = 1000
        MinValue = 0
        TabOrder = 2
        Value = 0
        OnKeyDown = OnFilterEditKeyDown
      end
      object FilterPlayersEdit: TSpinEdit
        Tag = 14
        Left = 568
        Top = 0
        Width = 48
        Height = 22
        MaxValue = 64
        MinValue = 0
        TabOrder = 3
        Value = 0
        OnKeyDown = OnFilterEditKeyDown
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 24
    Top = 224
  end
  object ImageList2: TImageList
    Left = 24
    Top = 200
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F13002022
      2E00252B3F0028334D0028324B0028334F0029355300293554002A385700272F
      4500282E4200262B3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D6D6006062600065656600CACACA00000000000000
      000000000000000000000000000000000000000000000000000023273A003142
      7100384A8400445CA600455EA700445BA300435AA200435AA2004158A3003D4E
      95003747830031406D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30063666400929A99008E9799005D605E00979596000000
      00000000000000000000000000000000000000000000000000001C1E2A003041
      72002F406F00394F8A003C509100354980003D5295003C5092003C5092003F52
      9A003D4D920035447B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E706F00696E6E006B727200A8B5B9008D939200302D2F009191
      9100000000000000000000000000000000000000000000000000252D4A00445C
      A600445CA600445CA6005274C4003E39360022201E0022201E0022201E002220
      1E0022201E0033302E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000979797006D727200949A9C004548470033353300424445005C5F61004545
      4500D0D0D000000000000000000000000000000000000000000022201E002E3C
      6C003F4E9A003F529A003F529A003F4E9A0023273A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C4005C5F61005D6162003A3A3B003A3A3B0059595700767B7C00939B9D00AAAE
      AA004B4C4A00E2E2E20000000000000000000000000000000000000000002220
      1E002E3C6C00445CA6005274C4005274C4003F4E9A0023273A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E7004142
      430062676600383838004344440071747400949A9700868D8E00555A5E00C1C8
      C7009BA0A0006F6E6F0000000000000000000000000000000000000000000000
      000022201E002E3C6C003F4E9A00445BA300445BA3003F4E9A0023273A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000515153002B2E
      32004345440080868400C0C7C800949B9A004A4E4A00979E9F004E515600A3AC
      AE00CBD3D40061626400E2E2E200000000000000000000000000000000000000
      00000000000022201E002E3C6C00445CA6005274C4005274C4003F4E9A002327
      3A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00373A39007D84
      830078817F0096A09F00DAE2E200CBD3D300656B6A005C636100757B7C006169
      6A00C9D2D2006D727200C2C2C200000000000000000000000000000000000000
      0000000000000000000022201E002E3C6C00445BA300445BA300445BA3003F4E
      9A0023273A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCBCBC001B1B1B004D515000C2CF
      CA008F9A9700596061009DA3A500858C8D00848D8E00585E5B00878F8F007077
      7700BCC4C400575A5A00D7D7D700000000000000000000000000000000000000
      000000000000000000000000000022201E002E3C6C005274C400445CA600445C
      A6003F4E9A0023273A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A5001C1C1C001A161A004647
      4900C3CED1006A6F72006D717500787F8000717A7A00878D8E007D8383008287
      84005F626000ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C292700445BA300465BA800475F
      A900445BA300252D4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F500474647002C292D003430
      330089909200B0BABE00676A6E007C828300A0A9A700959B9D00606467009193
      9200F0F0F00000000000000000000000000000000000000000001F1E24003B4C
      8F003C4D93003F4F97003F51990003030300100E0E00445CA6005274C4005274
      C400445CA600252D4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD002A292A003739
      36004C514E00B5BFC1008A919300878C8B00636562007C7C7D00E1E1E1000000
      000000000000000000000000000000000000000000000000000025252C003F50
      98004356A9005270C1004C64BA003F529A003D5093004659B100445BA300445B
      A3004253A7003549800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA002325
      2300464B490078808000676D6E006D6F6F00D5D5D50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003142
      6E003A4A8D004C65B5005271C2005275C4005274C4005274C4005271C1004050
      9D00314376000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B5005C5C5E00858788007E817E00858685000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007070B0036487F003B4C8B003C4F91003C4F8E003A4B8C003A4A8A001B1E
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F0F000A9AAA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000019181E001A1B23001D1E28001C1D26001A1B2300191920000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFC00300000000FC3FC00300000000
      F81FC00300000000F80FC00300000000F007C07F00000000E003E03F00000000
      C003F01F00000000C001F80F000000008001FC07000000000001FE0300000000
      0003C003000000000007C00300000000801FC00300000000C07FE00700000000
      E0FFF00F00000000FCFFF81F0000000000000000000000000000000000000000
      000000000000}
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    IconIndex = 0
    PopupMenu = TrayPopupMenu1
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvAutoHideIcon, tvRestoreClick, tvMinimizeClick]
    Left = 328
    Top = 384
  end
  object SkinData1: TSkinData
    Active = False
    DisableTag = 99
    SkinControls = [xcMainMenu, xcPopupMenu, xcMenuItem, xcToolbar, xcControlbar, xcCombo, xcCheckBox, xcRadioButton, xcProgress, xcScrollbar, xcEdit, xcButton, xcBitBtn, xcSpeedButton, xcSpin, xcPanel, xcGroupBox, xcStatusBar, xcTab, xcTrackBar, xcSystemMenu]
    Options = [xoTransparent, xoPreview, xoNoFocusRect, xoFormScrollbar]
    Skin3rd.Strings = (
      'TComboboxex=combobox'
      'TRxSpeedButton=speedbutton'
      'TTBDock=Panel'
      'TTBToolbar=Panel'
      'TImageEnMView=scrollbar'
      'TImageEnView=scrollbar'
      'TAdvMemo=scrollbar'
      'TDBAdvMemo=scrollbar'
      'TRzButton=button'
      'TRzBitbtn=bitbtn'
      'TRzMenuButton=bitbtn'
      'TRzCheckGroup=CheckGroup'
      'TRzRadioGroup=Radiogroup'
      'TRzRadioButton=Radiobutton'
      'TRzCheckBox=Checkbox'
      'TRzButtonEdit=Edit'
      'TRzDBRadioGroup=Radiogroup'
      'TRzDBRadioButton=Radiobutton'
      'TRzDBCheckBox=Checkbox'
      'TRzDateTimeEdit=combobox'
      'TRzColorEdit=combobox'
      'TRzDateTimePicker=combobox'
      'TRzDBDateTimeEdit=combobox'
      'TRzDbColorEdit=combobox'
      'TRzDBDateTimePicker=combobox'
      'TLMDGroupBox=Groupbox'
      'TDBCheckboxEh=Checkbox'
      'TDBCheckboxEh=Checkbox'
      'TLMDCHECKBOX=Checkbox'
      'TLMDDBCHECKBOX=Checkbox'
      'TLMDRadiobutton=Radiobutton'
      'TLMDCalculator=panel'
      'TLMDGROUPBOX=Panel'
      'TLMDSIMPLEPANEL=Panel'
      'TLMDDBCalendar=Panel'
      'TLMDButtonPanel=Panel'
      'TLMDLMDCalculator=Panel'
      'TLMDHeaderPanel=Panel'
      'TLMDTechnicalLine=Panel'
      'TLMDLMDClock=Panel'
      'TLMDTrackbar=panel'
      'TLMDListCombobox=combobox'
      'TLMDCheckListCombobox=combobox'
      'TLMDHeaderListCombobox=combobox'
      'TLMDImageCombobox=combobox'
      'TLMDColorCombobox=combobox'
      'TLMDFontCombobox=combobox'
      'TLMDFontSizeCombobox=combobox'
      'TLMDFontSizeCombobox=combobox'
      'TLMDPrinterCombobox=combobox'
      'TLMDDriveCombobox=combobox'
      'TLMDCalculatorComboBox=combobox'
      'TLMDTrackBarComboBox=combobox'
      'TLMDCalendarComboBox=combobox'
      'TLMDTreeComboBox=combobox'
      'TLMDRADIOGROUP=radiogroup'
      'TLMDCheckGroup=CheckGroup'
      'TLMDDBRADIOGROUP=radiogroup'
      'TLMDDBCheckGroup=CheckGroup'
      'TLMDCalculatorEdit=edit'
      'TLMDEDIT=Edit'
      'TLMDMASKEDIT=Edit'
      'TLMDBROWSEEDIT=Edit'
      'TLMDEXTSPINEDIT=Edit'
      'TLMDCALENDAREDIT=Edit'
      'TLMDFILEOPENEDIT=Edit'
      'TLMDFILESAVEEDIT=Edit'
      'TLMDCOLOREDIT=Edit'
      'TLMDDBEDIT=Edit'
      'TLMDDBMASKEDIT=Edit'
      'TLMDDBEXTSPINEDIT=Edit'
      'TLMDDBSPINEDIT=Edit'
      'TLMDDBEDITDBLookup=Edit'
      'TLMDEDITDBLookup=Edit'
      'TDBLookupCombobox=Combobox'
      'TWWDBCombobox=Combobox'
      'TWWDBLookupCombo=Combobox'
      'TWWDBCombobox=Combobox'
      'TWWKeyCombo=Combobox'
      'TWWTempKeyCombo=combobox'
      'TWWDBDateTimePicker=Combobox'
      'TWWRADIOGROUP=radiogroup'
      'TWWDBEDIT=Edit'
      'TcxButton=bitbtn'
      'TcxDBCheckBox=checkbox'
      'TcxDBRadioGroup=radiogroup'
      'TcxRadioGroup=radiogroup'
      'TcxCheckBox=checkbox'
      'TOVCPICTUREFIELD=Edit'
      'TOVCDBPICTUREFIELD=Edit'
      'TOVCSLIDEREDIT=Edit'
      'TOVCDBSLIDEREDIT=Edit'
      'TOVCSIMPLEFIELD=Edit'
      'TOVCDBSIMPLEFIELD=Edit'
      'TO32DBFLEXEDIT=Edit'
      'TOVCNUMERICFIELD=Edit'
      'TOVCDBNUMERICFIELD=Edit'
      'TNxPanel=Panel'
      'TNxScrollBar=scrollbar'
      'TNextGrid=scrollbar'
      'TNxColorPicker=combobox')
    SkinStore = '(Good)'
    SkinFormtype = sfMainform
    Version = '5.60.03.29'
    MenuUpdate = False
    MenuMerge = False
    OnSkinChanged = SkinData1SkinChanged
    Left = 88
    Top = 256
    SkinStream = {
      CA5A0000FC790300FE6771B8CFCE3B0AFE7DDBA97F4F1803FE0024801EE0100B
      4FDFEBFFBAB6C1C5CCE5BDFF4F8D6FDE9598247837FDEDF87D67D307E48426D2
      D0F9CAABB1AB0B2AE0D97596B65553C632A92A5B8223C58B1E53C1692D44B922
      77DC4DCB3151205BF67D6CB2D674D30ECA781A98265C75ABF19C81E4D60A890A
      A546B2E05BAA22E7E1B1E86954D7700F081340C8A109B96698290FEB0A2AC89C
      B489C10914B91404AA24665A126B10AD04E888B9A89A3ED393E54921E1807F4F
      43071E9EC45EB14A08000426490362CB2F106F89A5726434B5ADC4EEC7409154
      987071A4E9D82BED409FF60EBFFA6368F434501C2762C5112C9C7D07B2818EA0
      2FCF803C183077DE661DA3C7E4CDB674FC841B9C067B873FFFD62A3C50A894B4
      1FE8A82F2C2FF3E848E88A589B9D85DD2EAFAE4F242D67B0347C848A465762D1
      5F2DD8584001D12F5DC088B001A23DFCBDC34A358F14A23B2B5CCEA274500C0B
      70FFC00739C5C8ADA18C1AB287783AD30ABF7B2777103D8065E3DF38FEF01FE9
      7077BE974B381EDEADE1ACF0BE501DB749480C04E710EA5C88F19BB10DA0599E
      D9AB18D9A921C00E01B21C4883B80F03522AE0D8F82E38A03F9E4EBA62000460
      036000C200079A80196007A76E0006A007F2009EEECD5ED7F0C80BB201587678
      DD476AC80B4602B5DDF45FF5ADC014A00AE777E90F2164016300B05AB531737B
      47BEEEF48FDA5B004B4059BBBD01B343700A200963BBCB6202A6024BBBC378D1
      8801600125DDA18BDBDA3E47770F05848011E0243BB83ED2FC9011E0243BBBCC
      70E2804B0092EEEFBF4B2A804F0092EEDCC5DFDA398EEDF5CCBDC029C04B7777
      41D16E4029C04D777432006B801177772D0EA920156028BBB9B17B868E63BB2B
      E7A66802B4051776C41EF1A8021809B77753D9841D27769BFAF9D5010C053776
      0799268E7BBB5BB83F20010C05377760F17C70010C0537773925130011405477
      73AC0B0B0011405F7760C5D634755DDCDB0E88002480BEEEE6971110009202FB
      BB998FF61013405F77730D1078809A02FBBB162F01A3B6EED100B38809C02FBB
      BC3AA6171013805F7766A9F4E0BFBBB52BB903014005F7766C5E4B4779DDAF78
      6DFF044AB5C9394050017DDDA1F9C2280A2020776BF0DF6F92D5A3C39A3BEEED
      226F3CC0288081DDC2EEB9B1805C0103BB696328058BBB2A9DD8B00B8021776C
      C5FB34781DD91CB4D9805C010BBB7ED9D27300B802377659494300B802377641
      312060170048EED98BFB68FB3BB0F2E9470170048EEDA74FD0B005C0123BB686
      FD9C0174048EEC32592B802E8091DDE31709A3EAEEF6B0013E0047770FE00348
      008EEF63001EE00477633800380057778C5CB68FABBB1FC0027002BBBACB001A
      000AEEF87001A000AEEE15800E20057778C5CD68FABBBD7C007D002BBB953000
      48029DDB5E000B005BBB6E6800F005BBBD62E8347CDDDB2680120053BB64B401
      70029DDB56802E0053BB696802E0053BBE62E8B47CDDDB0E1E5F00B402A776B1
      BDFE4F00B402A776C7C00B8014EEC1D8392E0168054EEF98BD8D1FD776049B3D
      C02D80A9DDBC4A158FC02D80A9DDDB700310053BB0660587C05B0153BB0C5E76
      8FCBBB86000C4014EEDBB000D0016EED880035005BBB978003B005BBB0C5E768
      FDBBBFD0007C00B7778B4C000E802CAE1F47B682ECB4440003F005BBB0C5E768
      FEBBBD8EB8E000BA02B776C06C25F002E80BBBBBA1E4002F00ADDDA19BA96801
      78056EEC317ADA3F6EEC778747E08BE6001F8031DDDD80010018EEC7C375FC96
      1A3F95A3FBD2BF900028033A57B300028007ACE3D674000028033A5618BD6D1F
      FFE8F4E00110067C9A349B320BC777484011006FF47764011006AD56C5EF68FF
      BBBE46008803648710C012006BBB8F60090035DDA63004801AEEDB17E1A38316
      6C00C00C01D003F69A06F771801801803A00B5A0113162158000C956034F5607
      2EF203823980CBAD0B585D20F61F240043B1EE3013013013013013013013010A
      C0240DF7314A0429C9A74197AC52CE765EB14F4E70DE4B8CEFCF582BB55C0228
      7755EF02EBC05017CE5C5EEF2645D12DED7C57F8F00859A737F20BDB0127D8F4
      5C293761B3DBA28D459ABE810AB5BC9402FD4052D3289873D2FAB67E02480807
      339D9CECE7673B39EC4E75191D24DD00A8D4816302EED0064A009E739AA6CC7B
      76025C3F3DA12D5FD5C7D820C11D6015C39D1D7253C4C0253952F995BCDCE58C
      083847A0059CE7A64BD254E7EE0A00B149805FD139EC3B873A50592873E0A70E
      7840BBA8E7EADFA39138030BD9A09282F9339DACF6B3C1959F37B1628470144B
      205382F01DB4285F4A101CE3F2C5824E024FB805502F01DC0296D7FBCE761BB7
      B997009AEC02B81780E1C286F981F9CF194BABD6E01716D02E0030102050695E
      50E7CB2AC68F9D88E5CE7848A61073EC453B039E60500721D636DE02C05939CE
      967A59F1AACF76FA376701E05A8D5D9404282E06020B4FDE73F68D493FCEAE8F
      02D1D668B004402C2F011DF080C490D2AB5363640560C5C1C04402CCE0204500
      567CFFBC13F2BFC00423178C80E76EC82411CF4E29A639F50536E73EBC7FFAD8
      DB48B014C10A02FFCE7CA97100029678014A759E1452D567C1AF6002659EF779
      4F30160021E607A039608C0B88B3F53E74AA00B00019503D81CC04605D1892D9
      020EC02C004D580F60730118174567DF16CA009FFDB51416C0BBFCE75990364E
      75DBA5A0E77DBA041CFDD86003661CED1E5CA39DF41F9473C983F5CE788E404E
      A5B1CF7D213004AE92EFA685417E063108C673F1F7B209C0241F811E02360BF0
      3200464892CFADE6E013DFC11F023E0BF8322846739E52650E0151F823E04841
      7F065408D439E45DA50BC6B273D514F839FB8A7C9CE993B3E40A600F83BD9CFE
      1BBFB59FE9BB8EB3FD3771D67D27261D431CFDF6B5001F62E2014C080407DDF5
      49CFC6F19D8008D65CE02A010600D193CA68655AB3D80101F85002E010600DAE
      67839FB2DBB803B4B7202E410800FA3B0E39CF8E679CE82CF3CE75E5C5639EE2
      D8C00C9CE167859E7F59F9EA6F5E51E539017401C822B03BA07E253E9754D651
      C268F9F0F202E8039047007740FE037DE5C6CD43F1BC79512F202E803F047007
      780FB376DD67DBE86BFB0B3E809B8624103BE07E2D870E7C8CF873F705DA4E7C
      6D7873820BE01CF92CB873900B1539E953401873980B7839FD67FACF9C2CFEC9
      78002E503764F40F1335D82E7305BCC6051339C883A40419B449B56F8003812B
      16A03B7820CD967D24D70079CFE73F9CFE73F9CEF273B5C79DB8B7B7DDBD6EBB
      EF401B0A677B8C01D7E2F9F82B400F39FCE7F39FCE7073C39CF71C000527829F
      232D9C0002F40A41CE0BD029DF9CE00400400400400440440440440440440440
      44048048048051010F8AC0FD50CD005B3E03227C0E5FE07B2FC07AE3151A1764
      AAB03FD00041F0792A1CD3AD89B7655534DFC9386794488547EA07A460D94B82
      6BC9185E763B9AE8A02CBABBD29F44D4090EBAECB745BF631F61BCD11A0112D1
      D94CFF41C71D71022C44585BDEA356CDC2349B7AB36C4CF1EB88FF31A2E1A08F
      741936D0152122105D8BC7820D99E9E8B95AF428141EFB282799A3E7DD3E44C7
      DE0CB60187FE94C298A5EA869BFFFBE849CAF14CC569839D7CC23685F81C0D38
      769E8B1F50BB85FD77BC2CA4385E826C4C8DCADC5DB411A169078FB363076B7B
      A882783D9FB3D20DB06DB0DB462F965884680EBA150368321FF564C8B2355780
      5D41F4F5494F6B135F43CE77A271FC650BEAF5F2292816A9BD2B7AFC793CDBFC
      DF5055EA33BCE0B9C660D540485C3C9B0E72817AE7EAA821E1C48493E91AACFB
      BBE3FDD5E96ED36DB9500624962EB805EA4C6ED932D28246DF25AF7266F836F0
      303CDB6363D8BEF42BA4836E0CF8FE06CD8B0CE4DB82C95C170CECDB880F1F3D
      CADFD123425FC7C91D0405240500B9192E5EB7AE85F910A396505A218EC1A5C4
      4516C02F9F40C4889CE5B039D861702651DFF2753B2B20D2D7D4CCD40544E258
      012DAEF8E496F322F2A72991D1694D4384F82B0024705A6C3B485101A9B6A798
      0D2D8748033AF4D4E81681B75F9353C8691C2E65AFA5D16365A06DEF60E50C7D
      316E5A1A25016817A39B74CAADE1595D5C36EE2DDA8DB56339FCA38053068FD0
      E2EDE343AF93FE59366DEC75DFF4560538049D1377C16258130B4CDACC9B8267
      00B7EE6FA4B7BA2FD3EC8DD175D15E2B16C778030B4DA7F232BDF536C6B3A675
      D22CF820C41590DBC3AB27A7108C80F52C5B93CD5F022CE6DD1AD670BACF8D30
      59935A81B7864E09B3E3C326AC402C136F29DB19F42F0640575F3EC893971BB6
      8BAAC79795027F016A1C14A5CB6E3738E4DEDAAC8B152F5C02D9D1D93847A517
      C7B8026B0225858A007947DFC14136F4C6D17A296EF781C70E8E8DA79EACB4D2
      E361936FCC6F55C94A21D98A3B661E4A3C5AA6E3EE2171B17F36F8C6E2E9412E
      FB61720590CA2AAAACDF5FFB9B18736DCC68658BEDF82519F9558341DCBA9E9F
      1CDB2F168611919EC398284059E5900AE0A60A59BB1428608062F9877422080B
      0AA2016414E5A57925B9D4055E609F7DFF732201351F00B20A646DC668F1D496
      5F7BDE64AA0059617FB8C04DB27D0A7C1DE931A4E655A2856B7435228564F986
      5CDBEBC7EFFCA7F883C4C3E468AB07F01A2FE23D736D4B75BF6CCE46F89908B1
      AC7C1364DB9B567B530DBE147E6FBE8BBF3D7F064336FE1EFAA297F7CF6700BF
      00BE1D36EC6E66F82CC50B6AA95AB877A02879E97F010FA9BF6C90752B73E980
      FC65E800B83ABAFD6015CC225FE42FD5A7CD56F8003CD01D4817DF33E1B6966A
      9191F0FA428D0960D0D808BA6D9384A900F4112B7E824FA50FB6A52F21774DBE
      EE0F62292FA588D79D6262422E9B658A7051E63898B4AF75B56BE82865CBA042
      3F0DB25BAB70B0E48529B4137E706022BB49B1DE25B4E59135F3D6E183EE57BC
      F80F7499700B85AEF21DC015A43B57503DD257B4F4FF789D7B268D5593413B70
      0890E4D823EDB7F1E02A4CE0DCCB69923208B8013134D2AD0E7D0EF3AE36C7AF
      42490A18236D2A2943832D74B9B741F2ECABB856A74D3215A6CCF98DB285F75B
      0676749E4A2C0B2204DB63BEC4B3238264A9986DCDB2C50F07C9DA6834E5FD2F
      9D4043872C2C9A22B154B92E6BD94AFA8F0B3ACF3AF665A80B0FD85B1D5AE740
      047518991E0B94CB17FD70C51E88F8A8580841458FB5B8960E785EE6E714E991
      DCAB2DEBD0FF373305BBA761465436BFE2CDBD7106EB27B39B6A001E30DB5A00
      18CDB8A00ED1B6F058529A57E4712564499858BAE60E7204C4CEC6DE5CD161A5
      9DCE3DCAB0B83B0658779EF34CD6F1A936A35D15B850E475B503133832DBBB79
      6C646C21B026603F069C737DC64D91B265950F7712FC248BC90298E3F90A2E64
      D22F39738846D9B766DFBC36E6F0A655679313B75D6053E09F37400A0D77A10D
      898C20BA4304D2F4A31191002C854B9E86C41F642686F44E2728FB0E80133E93
      B9F991B0F989C44A608FADA80054B19456931851AE59B766DD00DB8C2E48A4D8
      44F1BA6BE61EDD91518B314F26FE35CCFE00826946F03525064875C5E54528B3
      32284135D5D591AA485B54AED95135C0BD9ADAE9EE336A3566F2E50EFC0C2BF3
      AD2D2DCCDD70D2A2D0B7736032FD4B7C95936E4DB4F323D1F43EA1D8F2003BD0
      1FD1407FED019B281F298F7BC85E1943E1DD5A00E3002DFFBDC01C87E9AFC000
      C81FBA6A4DD6EBB276A80CD415903FAF8BDC15DF3FB5BF0B8A80AF13F505EC0F
      DF552FBDFFFBEC200B7076C0FD6137CD8DC017CD5DC0FBD6C5C7CEE0FDDECDC2
      B7000BBE2400FA12F3DC1F778BBF475007C04348605F801F03F1F5EFB1B5D02A
      823E01F1410FB1038ED62F401F81A80FF0120D01770A9F68F511C602096FB9AB
      FC9E4E0C86CA456ABC7281DB16E6ABDA741FDCFB05406335502EFFB498600D74
      26898660D1EC6759E977237729AEBEB3263B6C03DF93B6F2DAB50079E07F272E
      7BCFACC95A31AEB7D9C7FBE270401F7FC0557E85498006B056201DDA92108B61
      E60FFE80863FFBEF15AA0219BE1D626850104F56BDAF2AC0BE8609CB247AF5B4
      C0FE00022DB7BB4F4530C00A32728D7CC8B9193F764005F932A72283020D4FE4
      C509854B51940D7E235F547A31828008F23B8046FF5A081A28F943572F2B2246
      F9E9E9B6800DD85CCA5A3281A848D7D51FFFF60101C90C03E4C2238ABE87C902
      451F286B70F2B595D2A9517A052807E07960B9643571590353E1AFCA3CD6D9B5
      F1F01301BF027CC11980762C5147CA1AE467F41DEAF608077C603FD065E41A55
      1F035AC6BFA8FFEB7F0135735402DF845401BEA0551F446B9195B24B4001547C
      0D6B1A8147BE37DA9FBEDC382C8E1150A0846AA3EA0D551903C01725C8002815
      40080A3D435F947C0D7C435128F47D603FB0283F6300846A8268552AA8FD235A
      8CFE53B2F41DC4808506B02FB034CA3E06B98D48A3C3F7D259000CA3F48D508C
      84A3C19A049A0109B03BC035A147C0D78A46A551E90BC7B4014A044725DEA116
      E543001947F51AD4656D7D6D4B76A05604303450A0A1A651F035CC6A651EA6FB
      574068012800B03624234204095947F51AAD19925494A7E34602EE331C10B031
      00BAB835D147C0D5288D4EA3C46000DE803103CE05F7C23D418687328FEA35C8
      C93F9055000328F81AD6353A8FEFEC5AFD8E3FB35E8108F08BBDB1DED9B81ECA
      3FB0D72333A778F93F90E033808E06BC08C0B31869947C0D6B1A9D47EFE73FC1
      D7BC065813AE11DFDA3C20901328FF235C8CDAF7B09BD884819E05782BD82FD8
      34CA3E06BC0D54A3FB64000E5C011422404F06D947FA1AA919E4F8D25802A031
      4042C0C2868A51F035AF91AA947FB7E00328FF4357A32E6F400C08902E6927A0
      5FC86BFA8F81A94A35851F70547968C5B800328F81AF0355FDBE92FF0037DBFE
      C6ACCCD71E66C4CD631309A2CDBDA0D16DA606BEE1AADCFC00B80137F0D00080
      018A00FFF412050A74FEB003A700FCCC03AFAFC03B787CC60C60FA1D6C980690
      0074802401516003F8CB200AC48564165DAC8088011667B022401200600499F2
      00933E401267C99F200933E401267C802401267C8028CFA00519F467D0028CFB
      00599F600B00599FA00D33F401A67E99FA00D33F401A67E803401A67E8034CFD
      00699FA67E8034CFE00719FC00E00719FC00E33F801C67F19FC00E33F801C67F
      003801C67F0038CFE00719FC67F0038CFE00719FC00E00719FC00E33F801C67F
      19FC00E33F801C67F003801C67F803CCFF00799FE67F803CCFF00799FE00F007
      99FE00F33FC01E67F10D4D1F017808F014267E00D8107ECA43FDA057A06A1103
      00A5817EA1AD33D95432D952B9E0158033740657A079A6A07C6A80F5E12B3860
      10FC600A82F80BC05E024005BFBFD5DBC0800ACC9BE224BA98900115B6230AD2
      CCF3E914EFCF0000551353FF5FBCE88ACBF0076513733FD54CF327509F6001C0
      40E60001C41432B0E27A7FE5751BBD958024E82F16E6ED01502733FDFCCFAE31
      58FA007D40204FEA198075600A7FA1AA3E72EED007524BA36F6F715BD7B40A91
      FF43B01171F3F43FE44CFAB2697AC00A8D778F22915D25688F31B916852AF70C
      3692025A7FF6880D50D40082E2123CC4FE3D21EC04A05D2DADB60A403D97012E
      83FF77E109D07FE699F5666BEB97500B69FA2826CF1BD56CBD98C6C5BDD02D2A
      284685CB9C7080FEFD3FC887CC975E34680AAE3B18FC7D3334D6EB4FDCC71252
      969FF63AD5F7ADAD0105128A3FEBD8C602BC0A539C69FF9C67E7EA6AF8E68600
      B222A1CBB99F1BF248534F4AA05A0BA11F3D30344100289D4A7FCEF1DA6CD548
      002B02B2760851295DC5FF1545F40B41742357B51067BA696CF83E867F810A46
      932FA490B42D27E82C33FF44CF8CC3CAF4FFFEA02FE061AB11B4693264BFB533
      E817FD6F6A87286E8768069FF23C2E824790C3A02A38B1869CBB0EFA76A2FA05
      A78D08D0BDB63C3CBA24CF10FFA1844FFB71431FFA267D59361EB002ABD98A02
      39C6998C00A0BAB84361C52AE9FF313573856D0A802B04FC15FE7CA2F39557BA
      BE5620F2FDC485410FFB41B9FFF827A7E280302F531131FF6C67E2C5ADDE0DF1
      575280F0156BDC7C036CEA0C9F869CAA7597979972C40A6CB866B8A6BA19762C
      18B0A60F3361254BE7CA7F3CCFC5B52867AC2624CFAE8188FF0FA09FDE61FDD4
      042F11F8433CD92454E939802A2780AAB0F012C3B3105067C3FD333D8015361C
      012099EC623EAA006D546006B4213001F0FFBE33EB602C83EB4398087B002180
      130A7CCF29F0240B5689EB4392808E9C0128026084A4FFA7FB099EC809186C36
      6DBA67972E7378CA768028F9DF7DC007DDDFFB19FC02E017009B0141A2F16244
      C4F86B837C357D375F0D625000FB9E1AF7BA1C00E007003801C00E007003801C
      00E007003801C00E007003801C00E007003801C00E007003C01E00F007803C01
      E00F007803C01E00F007803C01E00F007803C01E00F007803C01E00F007803C0
      1E00F007800000003F0A539AE3EFB72081000000085800000042C00000000021
      600000010B000000085820400000021600000010B000000000085800100142C8
      00800A16481200200285900100142C800800800A1640040050B2002002859204
      800800A1640040050B200200200285900100142C801001216881400400485A00
      200242D00100100121680080090B400400485A20500100121680080090B40040
      0400485A00200242D001801A16C81600600685B00300342D8018018018018018
      0180180180180180180180180180180180180180180180180200200200200200
      2002002002002002002002002002002002002003970BB5200200200200200200
      2002002002001D00185C2370545C20019AA0325503E6940FE3A80F3BC10D017D
      4688C3EA00369E2FB7005005005004BA004205F60915CFED80A0EE0EE0EE0EF0
      FC70F9FFDE00F4A064027C823EB61E0DA0508F08894021E100BE423413077077
      077077A9AE27BFCC17BC38E7815A042C0229436A20A50BC1DC1DC1DC1DE9E1E3
      2D6DCEF0178200B40D410603780BCFD81CC46089A84A8A60EE0EE0EE0EDBB7DD
      10A24280131F5A034021A002429436B103C0A84C254590770770770778383A3A
      E33846D01722C0BEC10F033C220853F88F262983B83B83B83B122440D1D3E376
      011801D00B0005077077077077B6DFA6F1F37803D02035047D2C0E0802847081
      F416C00A0EE0EE0EE0ED3CD10A282C5962E45605A00582D80E6049814C303BC5
      01881541DC1DC1DC1DBB606100EBEEA02540011506504B41940CB885E13104FE
      5077077077077B4DAF8BC33801EAA83160AB430990EB423077077077077E5FA9
      80F680339A03A052023C1C085C816F093412C86A0EE0EE0EE0EF61C2EBFAA270
      020EE0EE0EE0EE0EE0EE0EE0EE0ED52A7088EEC8020EE0EE0EE0EF8A825F4014
      014014016ED0164B228077F668035F4068DA0744B53B6C8C505EC7750CD0B9DC
      9483EB8018AEDCF401C01C01C01C01C01C01C01C01B407A74278F749501A6D03
      82230C06184E107FF907784BFF4070C73A18E686E9CC880E107083841BB920F0
      580180180180180180180149800BDCD993471C803ED1817DBA80BA7C0744E379
      3C11B2D6F20EF531DA03F91C17FDB20BBB006F13E9107D08C710CF7CFFC42C74
      2DE65BCD3CE17EE8B314930B13BE4CCC20F52A1DD283194F8E89DE83E2C1D908
      C339B31E21789FF6A166C80665C9C20CD20F8BD6CF3406925A7AF65A38F23B7A
      F3DAFE5F9FF5DCFD0311C870FF9C830C539FEF103D1458C3AF1F861D2957F7DD
      E4CB50B863BE0C7737818594C7E666785698E04212698FE9831CBD31FBFE3C00
      0D5D31D932CC7FF0580DB3A1B2019CEE3DF2AC1F8F97BBDDBE4E4F793B3C3D54
      BBBBE3C8407FD9DDF5FF676F2FFA3A3D6D73F0C7CD98F083981B801801801801
      801801801C5A7E1B5E250C406A82F2C035AF5F10DF5B878C301AC0BD500D8C0D
      EFB31F065A381B885B181BD9177C62BD8B93D7CA0F56AED1C0D9BC9F99463C20
      DDAA3F4C6DC9953FA5F9422E4FD427C7EC4FA16D85B8722BDF197339D616B3FF
      3B9BBF2F6F7FFAFC3446C2FBD603F52A76D85F6798BC3C68FDEF563A0A18F083
      7BC41F9DC0DA38A3098B4FC18F8C51926395B81B3947E9DC0D9CA3FD3DB181BC
      A8FFFE4A8F64B036C9E63C20E606E006006006006006006007369F9D05E5B9BE
      FF0CD039BC82EEB2DF342E884D0340620F113E6F5F3FBBE70379D6BE61FFC79F
      AB40E0320B03416D0BA4131AE01803C04EC1064D31C4CF4B03710BCA17932F36
      9EE20CF29FA22BEA99E24DE81DF783F9B935083728F3D2FF426FE352E2A9F455
      BDE0FA981B60C3863C42E76BFD3D85DC1D9BBD27B617C17A4FE6B585E7A4E1EF
      49CD6AC2CD8776168F31E106D875AFC081063E1B807786EC5A218A3B02C1EE06
      EF8AE9A8F2F0DFB9DE1B99349E4AECAB98FC0DE3631E10730370030030030030
      03003003AACBD7C5653760C0740E05D01D877B3749DFA81B58265F95B37AFAFB
      DF7ADF640E89C0BA0347EAE93320DAE132FCAD9C0D83A63EEA3D7C0DC42DBC0D
      E109F7FE96A90F40F9035CD0AB6EE4DC49DEA3EA877A93A07D729F3D56EBE06F
      8461B1063C42FA9E2DF92D85BF037EF7AD602A3F02B03697E356C2DF81BE0BE1
      BA26C2D11C0DB14C7841E88EB5FE6FAD7AD69E07D6B2BFBD3FE1BF36FC37D6C0
      D98786F76962C3D47684C7841CC0DC00C00C00C00C00C00C00EED3CF216CF6F7
      BD0DAE07DFF2FB07EED2C353C5077904D501EF6A7BFDCDCBD7429103E23EF5CE
      B81D02A0FDE05F43FBC528826A80F7C1FD87DCC0DAB863EECBDA263AC0763037
      10B73037B2DD927F8143AB1CFB03ECBB77037C4FDE93AC99B5543AE2AFE01F8B
      1D9C0DF40C3DB50F8E8C7885E5569F68FC036585B3C5BE793604E06ED85DE3DF
      76C2DAE93F3D673E70360418F0830E8B4F1E417F5ACD5B4FE6AFF628FE606D7C
      F0DCF5CA5DBB3F5B81BE65BF6A8FE606D93F0DF498F083981B80180180180180
      1A01A01E543F342E2068E781DD01B7697CB13742FDFDCFD0CFABED3F24B5EBF7
      5C7EBF831E07C006DE05FB627805C6F43E61270483C88C7EDFDF6CBF1863B007
      6F03750BEA17D32FB69FD47DC27F46A2E06FF84FB859F6E4DD20FA8FBD275DA8
      B81B17556EABF770366C61EE145AAC63D42DADC5BED19AB01BFD07DCAC2FBC93
      5603EFABFCE786E04063D20D6DEB5978F7868FFB81F7617E6CFFBECF8DF8F7D4
      85F0DCBD47C347FEC0FBB257367FEF97C6FD47E5C8C63F9DFFC463D42EE06E80
      6806806806806806807D50E0851060064CC01BF697E8DEF86F017BF7AFCBCBCA
      C00FA8C01E1817F46FCC3788BF3C0DAF31F2B0BF46FDA63881F2C0DD42F3C0DA
      710FB5479F947910F9DC9AA293E2A3D0557E4A4F3C0D83C51EFB98F50B7AF16F
      3596B8031A3FD7BA4F9B976C018D85FD1D27D1CBBC80D798F50BDD083D5BAE4D
      F1CFFB03F9F86ED513F4A3FDD8B6BCF73FEC0FE7E1B844994A8F4C31F473FF21
      8F50BB81BA01A01A01A01A01A01A01F4FFBB75E47FF95BBBC7927D37AE53C2B6
      03FDEB98E0C0DEDF0F0F5CDDBBE20784078F3E7A86FBFE2B603D483CA98FA53E
      7E331E133F3C0DD42FE85FCCB0B4F020F327C007B185FDF5279966169F990608
      FC9278537E2C95F2A93D15FEB81BEE30F531FCB5279B31EA17E2F16D076AD2E5
      47F3A786E14BFBDC0BCAC2F3CF0DC0C7ED605CBA63D42D1BE3D90106181FFA8A
      3C9DCDEB81F4F1479FB9BD703F50B8321769EE806806806806806806E06CA963
      DD22FE4DD7FB0392607D817A46700B880F124274CB723B7DF3E6ECF9EBFB808F
      5C0C0FC8C0FB02F48CE017101F2484E50EF37D7C378463E919FF0C7D80FBE06E
      A17A786E08F9A4FB32FF769731BEEA4E22CC0BBD3B5E08F8A8F6076A4C8705E6
      A0F752712BF058FBE06D4CC35231C9947F9331EA170B8B790667295697EA53DF
      BA1D27F861FD702E88A2457DE93818FAE05CBC63D42EF8F77D47BEA3DF51CA28
      5DA7BA01A01A01A01A01A01B81BCC4BCEEB636D5BC82603D40FAC998CC1CC07B
      86D80F5EF9FD16FFF489531E9D603D80FB4FF882E603DC36C07B786F2131F89F
      B4E31C4CBE303750BDBC374A27D967BFECFC17FA8A3DB54ED7EE938A77BE06F8
      50FA9579E2F0364923E0C7815168F98F50B2476BDE06DAF7E347E4087FFBF7FC
      6FD5E54DC547FCF49D0A8FC37781B6DFFBD1FF5F700F522935E953E7E2B0BF3C
      37D580786EB0638D7FA34C7A85C4B938B7E5F8BCF1D5B8F79C9983DF51F1E17C
      DC91E1B9F6ABC646C767E3F1D810A17EA3E3C959BC57C37EA431E90770374034
      0340340340340340234863B7F1FE7CB03C8F80BF83C64CC5D9FC06C278DF0BEF
      DF31E038BB32C0E7FC058699C67FC63F800D84D3805F7F0DD1C638CFF9431FC0
      3F981BA85EFE1B817E04F8A6FE606D7C9B12DC8A7CC3BDD99F1DAF050F0A6979
      26FE606E1953928725679AADDD99FD81B4F30E40C71C37B398F50BD4B4F62B2C
      21978D68CA3FFDFA4E49B9643CBD375C5858C7A4EBC8C7A41DB4FB81BB81BB81
      BB81BA01A01A01A01A01A01A015EE06CB7071601E8A500BF5DF32DD1E14070B3
      20BF5E1BCBE63907FEC0DD42FBF0DE4996FAC8FEFB5F074FD554DFD81B5C9572
      618F50BCC75ADD1F9786EB147E59F6BCEBBCDAD9E3DCEFEE4DF0DDD859F86EB5
      61685F86FB7B645F86E781BEAF767663F81BC263D20F2CB4F8BCBF13BBA969F8
      3E5FE3F03717A8FBE8B6303783EA3DC0DE27037C5242ED3DD00D00D00D00D00D
      00DC0D9FF47B8807DF7CCE7CF9B80FBF0DF2F31CCCBFB03750BEFC37D0C87EFB
      5FF8293FB037547F9E1BD20F4B69EFC7F3A3F57AEE2DC42A9BB0B05D9F38EEA7
      49FACA43AC2E1E31E907E7B93FFD6F3B4F6A3C38712F1462FB16792B58F21E54
      F14714F0DFFFA3CF036D47F5FAF4BC95FBF630F2564C9F9CE50F25794C0DA618
      A3A85DC0DD00D00D00D00D00D00D009D43824BE4007DF7CC13F72C03EFC37251
      8E6658303750BEFC374C90FE76BE02A4C181BAA3FDF0DE90795EB5AB3E4F868F
      C78BF0DF0581BFF86E44FC370D858E17E1BE3F036AA98F4838088356FAD71E06
      FCC901ED64947CD7F6769FB97A8E44BBF0DE6C0DA920A7B45251E7E1BCCA3F6D
      7D4756628EA1770374034034034034034034036D3FDEF9DC0D87C37B6177037E
      A161EB5DB4F0F6BEE06EE06C798F48385D6BE7C6E7747E1ED7BB0B3E2D9033FD
      3CFB4B4F7E0BE57E1B9A506DD8587C3776169D272EFA4EFC373264F037DD3AF8
      6F8063D20C5DF336B73B01D20CA9076F5E98FE98F69EE8068068068068068071
      20313A3A03A03A03A03A03A03A03A03A034C11E7807483A41D20F4041A690D3E
      63D081C423180C613A419820D347FAC01D31FD31ED3DD00D00D00D00D00D00F3
      006B153C71397B90022CC0601607E15B03914C0782EF89905F75E60FFE00CB28
      02802802802802802800D801F8C2FC683F40117003C57780BB34018E00005A53
      F27252FE08A424E0432C7C94BF3CD001FF301F5F007842B227101BD98F995CF0
      8732E4F0030E603F6000F085644E2037443ECE2D2A5381296D4FD240D2DF701F
      7DA9B4BDFC06FF124023004817204A031005F08E7017E2E900BE31CB47C22DE6
      05EEF3058D992023004817204A031005F08E9817E2E900BE31D287DE969529C2
      94B6A622C696FBD45B8CD4CB8801B248270821304F8A408F816104F860CD4C7D
      EADE3C300741209CB084E13E89023E058F13E6033871F01A9D4A71252DA9E813
      D2DFD51F14D4D74801C9F031D00120F0697C01A81F178DA6D4CBCC01D7F031E0
      0173706A0801C61F00B4A94E24A5B53C25454B76439994FF69800A7C0C109B01
      202FE0F2CC1DF0A1811944728B8600EA0F81AAE5530017F819512602405FC1E7
      183BE143423288E5170C01E31F03647529C894B6A72CA8A96EC7C6B532040211
      300302FC04982FE0800696C41B02383A3E06ABBD3D3CFD8C00C0BF01280BF820
      01A5F107008F2D0F81B23A94E44A5B53CA5454B76482B6F7C1C3E9CDEBEC805C
      F04300203BE12C034A809859617C70D75A1F02C1B677F9B83A3C100BA4086004
      077C25806970130B2E2F8E1AF2C3E05BDD4A72252DA9EF1634B78683E8269D42
      9E69809803E088D017C01A0286708A81F0669CA143D3013007C111A02F803405
      17011503E14D3D4A72252DA9E52A2A5BB22A29A795400106980BE0E000082FA0
      47B417AA1F0A69C5EC7440293FBAF80043197543E1CD3D4A73252D70ED9454B7
      F487D14D3906573C61BA34B01A0090007D3F55602103903D0F006884482C9081
      85C035A4C7C39A797BEE443EE590009F8F9B01081C81E2E2F86C04482C988185
      C035B3C7C29A7A94E64A5B5301952DF816F14D3C958039990C7E724202600880
      A80EEF8835AF47C39324F5A6107B3B1D0145EE961EC442206BC10F8934F529CC
      94B6A621952DD7C16F14D3E7762BDA02878089265CBCAA680A68022CD3D3F332
      52DA9D213582229A7A4265A531CD3D64D96D4E39A7A7E6B4A6B53839A9E85401
      4014014014014014003C01038163195FA900224C07F8303AF9607CE6B01E2FAF
      02417CA3807CA00658BF231F6AF8C0A01A00130701BD45FEF17B83FB280005EE
      6DBCC01517E385E12D0F28CF5D4F9A6FCA17F420E21F3F443ED4AC80F490F7FC
      FB8678F28580BC2AD5E975F0D185DFBC4FFB9F8FAF13C74F8E1E64998479191E
      597A993A9AFBF4CF7A03507FFF19FFDD816E3A661788FF3E7BCC1FEA8CFFEE3D
      DDA7E4CFFDADB9FFA667F25F1B64B3CF085FFDDFB2B3F4122F8D7FBEDD497F8F
      11FFFDE1BCBFF51FFACCF071E7FED17F98059E256FC2717ED1FE0EFCBF71BBFF
      D05FE6EFFE0BFF1033C4CBFF3B3B251FC440826121B9E5FEB40BF817F8DDFF76
      FEFCE3FFF9C4A914377E997FE999E6B3E54731F1A5F45FA97F8A247F8D7FA74F
      F1467BF5E774FF1D27FAD17F3D3FC81FE3A7FD8E33FF2033C26FDACF371E8238
      9F45F2E7F84DFB5FE6EFD2471FFD41FF93067BFBFE29DFB89FC253FC5C2FDE8F
      EE9FC6EFDC7FEDA9FD5399E3B6FFDC2CFC513DF2617EA9BFEAF0C2CFFD3A7FDC
      33F0AAF94C47C1597E222FE1D9FCEE2FD1677FBD33F0C47B89E18BF8103DCB7C
      A2E17EBBFF09BF71FC317FEFF1B7B7B9A7BFF504CFF43D7F8E4BCDC7F3E23F9E
      ABF2A8BF0D1FC07AFF24DF9BBFE8C5FF3D9FEE99F869BFB2ABC98EF9437C782F
      8AD7FF7D9F972FFF5B4D7FE44CFF459EA711FF177E8A17FBF1FE3B3F9FC5F853
      BFE433CBBBF54B3C1B89FBFDF78045FD2DDFAE5FFC8E3FF7377EBF99FEDC31DF
      D67FEE31FF462FFC7F8786D1FB4FFEC23FF299EFADE5D67AADAADBC1A2F9BBFE
      5D7FA1DF6FFFA4CFFE5FC73DF217F54AC3F35A2F8ACBF8E9FE58BFF1959FC3D9
      7FCA867DF8FEFC7F7E3FBF1FDF8FEFC7EB3D4FABFEAFFABFEAFFABFEAFFBFDFD
      FEFEFF7F7FBFBFDFDFEFEFF7F7FBFBFDFD33EFF7F7FBFBFDFDFCBEFF7F7FBFBF
      C7DFEFEFF7F7FBFBFDFDFEFEFF7F7FBFBFDFD33EFF7F7FBFBFDFDFEFEFF7F7FB
      FBFDFDFEFEFF7F7FBFBFDFDFEFFBB4CFEC6B3FBADAA3104E8A75B00BF0A7C05F
      07517EBC5FD6B3F6E098F97C02A2FE28BFD40A801ACF84C217FD637900234C06
      0A6078A303A92C078ADFB6905F31700F8C00A6A00A00A00A00A00F6003C61600
      2445011839802605CC02905242C44A04AB6051877145948DA46D2373F2356C06
      01F65CBE0BEE04081EF05820C1860E830A4176033FB7A418F88FE0828A7B20BA
      46D23691B8F48DEA60020FEA23DD83FAA08133DDB2130ACF7858051847011B10
      31798998DD04FCE3841A523691B48DCB246BE90BDAE3FD7DE78982D004C10802
      4043E7BB0D4C05312B14A00261D98A501FF1DA075081A46D23691BA48D3C7BF1
      526B250044100B203A6087E3A9210C166189A602988E626C41131C311A0D6623
      A46D23691BB591BE5E64E80A80A80A80A80A401747472FB76B0072F97B0023D3
      FD82E4013090A6084103F47C0293101464C3A017904D48DA46D2378323547E27
      F5BFCA500AC0EC06ACA0B61A984903B3034C0AC5200862B405B17CC6A03BA46D
      23691BCD08D3070C3002854B561B7FB5A00A60E40A1F4073044C0A8026231839
      84D8B101C841CE43D23691B48D8948DF1F15A7BCC000BD81CF600A80B61550C1
      72039899052AC028C1D9881051813208E91B48DA46AD88DFCFC7FC64C80BD160
      87FD12008617E50727F7F1C325B80EEC0BD23691B48DFAC8DE4E421405405405
      405405405405405405405DA02FFFF11405405405405405280959401401401401
      401F00087436185B6F80048580CB4C0FD0981F0A0C0734DFE5C85CB3621F1003
      82E43BD84F4370A020A28567178E020233B5B7D476FAF6905CC9B7FA2B69077D
      BDFD27CA9812A16CC46C5945F45EAB17F756F28BC03DE99FC93E3D8BCEA8427F
      8DC6A2FA2FE90BFBE84FF03D128053E03EA7E3345F45FDA17A35FF2B27FB4CBC
      C7A9FA2FA2FED0BF2A7D7AFFB2F3205F7C9F63EFA2FA2F9302F2497F1430482F
      9292F061CD63B745F45E5C17F9A312B9287C3A5F87DE6673E583F45F45F1917A
      41FE653E008CBE6C4BE8BE8BFC76DE427DF93F20BE4AAFA2FA2FF20BE553EC5F
      2CF7A13FFC2FC4197D17D17FB2ABE57DE553EB30FBD4FE7BE8BE8BE0717B95FF
      7E15BEEDBFF2BF96BEF35EADC3517D17C5A2FC6F4E6BFB09F2D6FFB753F45F45
      F2F17CEA7C6DCFBC77D17D17E8178C71769305F239AFC41FD5EA7E8BE8BC1F8F
      F3E47E3F83FB599D37D17D17FB6DBFB795B7E525E25E3BF1B2FF064BE8BE8BE4
      82F707FBAABC7C5F9BF45F45F1FEB7C8E77C6687E8BE8BF3917BECFFEE7CBCAF
      931DE61BEFA2FA2FD585E752F279DEE0FBC2FD17D179945F3F5BE783F963BF16
      DFB335F45F45E6C5EF35E9F4FBA1F7E17830A5FFC17D17D17F0A2FC6CBFD45F1
      DE4AAFF16D7E8BE8BC44CBF55EA44BF33C5FEFF9BE8BE8BD5C2FF29EF0FBBFF5
      3E2CCBE8BE8BE69F7C763922CCE6F8004A180CFCC0630B201E73717380B88F90
      7C2008022999E80FB007D3D7D7407380E91F48FA47D01D23E91F48FA03A47D23
      E91F40748FA47D23E80E91F48FA47D01D23E91FD447D019E01C823F2CE42E3B0
      EA23BC38F31358758F1907C3875DA28068068068068068068068068068045E01
      84C3637407C200E9A74032A80780F201D00D61F587D00D00E504F4DC0D2AEB0F
      AC3E80680700700700730FCC3F00700700700730FC03CC3F00700700700730FC
      C3F00700700700700730FCC3F00700700700730FC03CC3F00700700700730FCC
      3F00700700700700730FCC3F00700700700730FC03CC3F00700700700730FCC3
      F00700700700700730FCC3F00700700700730FC03CC3F00700700700730FCC3F
      00700700700700730FCC3F007007007007007007007A8179D4E45BC0D7D0013C
      6035AB03C7E181F98301D9EF1DD02F760D7E1F0801963805805805D8014A2746
      A401624300B0096C14E112CF81DC01624300B00B26588DC02C02C99622B00B00
      B265887C02C02C99621300B00B265881C02C02C9961F60160160160160160160
      1601601601601601601601601601601601601601601601601601601601601601
      601601601601601601601596C96BC6AFA002B6C071260390A6078F2C0773BCC5
      40BC0D507C200EDEFF0E367800617C1AE90D5EC0DDCF672DB602F886081AEEF7
      672C0569690A286942858D8D1E54C9938B71A960D218F70B5E4D6C05F31E1A1A
      F431D7B31F9C263D72410C798915E848CFA33CFCEBD808D9B3454B9B850A15C5
      DF2840E162818E6D179FE8D62E48162AE7CC7B68CCC63A5331FF8B98FD31C359
      61208962CAA8F6DA7B41B51EA55C4FF4F147948D67C48282AE5547D4FC7F164A
      3D98E6C5EECA0C7AC1AD60D651F775340E28F4A37E36E13A2F39F5831D6C6B58
      34B751FFD3973FC93B51E21AD80D0A6DEDCE2F1531744725E84C5E2435B01A2B
      73F06CDB9B9FA526DEF0D6C06B9E4BE0A8FEA92FB726DF92AACF906B563F27AA
      C82D63DEBA1AE31E27372FD28FB0DF94A9565D47CEE862AB1CBAE2077AF1558F
      C928FA6241515682D3EAB0522B4F998F23B1CFC0905855ED3FF64B1769FE47B4
      FE5AB1646D3FEDF0E0D23E0BDAAD3247E6D7F356432F9AB256579AB44A43E2E6
      AD7746998343E9DE1056220AE39FD8DDAE10F841840239FC5175FD89409494A7
      A087F0820B0E92D444108206C082539FC209049A86CA384F67F1C4EAF1C97BFE
      205F5059165A8ABA02B441112060020F1CFE102BBF12BEB3068649D38AE88104
      888A24C21378E406FF2A530F29A5CD56D62CD5787586A3D9FB711049081B3C40
      E5AFC20A26ABBFD2A86C74D0B83A5D16A84D0952ABDBEE0F09BE7225979044A2
      0CA48D67F17ABE273251E88707D56D57E10829640E10541CF0547370BDCAE3CA
      72A652B51BD3C7C6A0E758E7AA62A1A4FCD24F459CED67DBB960EA0A5F5081C2
      01ACFA5351B3FA71A8D294184448DF59F6B359FC4C81359F48A59229D5EBEB3E
      9C40E1056ACFB41AF3A8A7AE342E3C73B59F031B77EFD9EF0D67CF0E7B190384
      14AB3FE52B66AE2191277DBBF11F39DB77728F7ABF706EF752070829928E17BB
      C9C20FFE51C307FA9CA0F90481C205107DC4335E674ABD3C69AB3CCE7707DB77
      3A97BC06272CF24903840B6B3CC46E415B9BE9E3E3A97339DCA3B83F7C0DE7A9
      7F4C81C204D9EF3A135A4F79D4BC6CA3D21BBDF4A2B8987354BAD97B18B696DF
      95478103CB96EEBE4F2913F1B051DBCBCBC0D9FC3EAA9C880985E8C437C8865F
      1720B43AAEE9B7A910A3A828ED5A90515D0C38CE7B3571C0FB4A0E5D145AA5FD
      7671A348B4CE896B2412EB7CCEA88E78395A3BC434EFE2BA32BE43BA2850EBED
      5FEE1A2094F8704D2342A14D6AD5D28AEA61C77CEFC8449498BBF21FBAB2B03F
      47A8F44B0830822CE7ACEEF7B59BE275DF4CB08308236EFD9E7D5B7CCAE1E90F
      1157628A339FB7E2AB97C97C3E51E9AAEC517A0FFBBD4A4011F8178418411F1F
      ECF638759BDD10FBFB0FB98061F7F615184FC3F9DFC062F7F5FCA1E2004A5D98
      286EACB4B87F21AF65C523EB5B5B77F4DAB2CADF9BD20D540DA0D7EBFF55B095
      61B47EEEA9429AB71EA7FCC3EC7FC5EB7D509506179C7F8C5C62AA316E9839A2
      FC257C596A7F8E08C5B9E70FFD7F09C02C02C02C02C02C02C02C02C02C02C02C
      02C02C02C02C02C02C02C02C02C02C02C02C02C02C02F9651180B09B09830871
      A076136136016015D02E13AAB14C3D828DA45DFC4D09BCD080572B267B6AC468
      04D73BAF49FD4C82DC564CB9703CAC2183A92535BAAF0610C2FF3C34FBD009A4
      6E4A25FE84C9B2357FD3DFC026FC64168CD5B00B009B05E97D356485CA7307F5
      0815F12C858EA9CF400ADC4680E4BD5BD39C9EF88282124BE84A5EBE573301E7
      9DE2FEBE9CE81D502C7B05AA684FCE2B0D212276B557BD5659E1614EEA5AF099
      63BFE6B4A60B56432409E237A33817AAAA1562C7BB7E5F098BC8552B05CE68B5
      DFDA61E202C26C26FD13545677305C17D52FE04C5941A6EA3AC551B11A1137CF
      EE2379B70B28409B2F55F2D15AA835BCA06FB1801B5060B050DF9BAACA32AB76
      54255BEC6006D4182C1C105811BCD21651B2592DADF630036A0C17C48A8422BD
      5CA5CAD2959AB1A4F57B54074546BDF3B861809D72D14ABCD65D71B1450AF12E
      B6B8A4795741075A090FD8DE564E5972DB013AE5520A4AC28AA234255D120B8B
      9494CB697DE2F797952BE13013AE524C97C29B74DB9E6DCB481C8773C8F0003B
      CFD952012E9093F0003C0EEEE903EF235B4D276000781D10E795ECA22346ADF0
      9F102ADC52B08C1E133565A17B5BA07CE7D8A46A17286ADF06EA62ADC35745E2
      215B56415278E9562646E49414836A6FFA36FBE31DDFECD1AB2FF8ABA55A6DD3
      6E79B7EC95B36DD93B95FD0F5DC8E3FA4CA1B36DDBAB9A1DCBDECB6533548D6A
      DDDBAB9A1FD045CA65015017D360C009FA927E881C12C0114997D23672931800
      E33275B23DF253149BB246E61B59446CF2F4760E17B23CF3C6DBE1DB937CCDAC
      EF9803892C1C3F646BE2373FC93B76E4DF336B397CDE9583AB56A02A02EF3DDA
      47A5E7BB56348DCEE7BB5628BB2389B114E4EC9FAFD5E561E4418537EC8F5719
      09C1DBAF5FABCAC3CAF30A4548D7B23F0A7754EDD7AB31E561E579852ADBA02A
      0233A811330101B9EE9E8F8C0548D9CC5B627D2C04927B3F1F7398B9B48DF997
      A2D9691AFCCBD46CB56C50150150150150150150165330A19918400134603563
      03A1581C71B01E43034402E98943FF803D1C979A3A5C09F71011E693A0C80018
      47A02623A26A26A02A02E000B975F9BCBD363779581D80581E00D802881FEDE3
      D13246192D616F0F97D3303B00B03C01B005103D7771D237CA62008C5A6C4CC0
      1D36C6E400120DB889687039E0E310302B01C00E6181A009209307F55BCC3233
      8CAE871AC0AC07003EBD81A009209307C856F2D2D3972C00EAB757A4004A56F3
      12D069E6002027410C00405880FF6586068C00404E82180080B1019030C0EE5A
      B7C7169E84003870EFAA08820803202FA0FFBEAB7DD2006868EB71ECC4104019
      017D07F34B56EA92D09884409E0332BA781F232C98655802204F019FE558A0FC
      FCB56F932D119A200B004804203249029101795BF1671005802402101B9650A4
      405255BAD0B43001B2DFC0B16612B36EEFC180265AC05603EC05899AADF405A0
      530069C407A8C0D1016B1827C07E10DE56E12600CD880F3581A202CF304F80FA
      6293D5BEB8B4364EA7007B0830E3C918030AB7E3169C4C001C49811818C10602
      60B8810C05E56F3560048483023031820C04C17102180B12B7EC1686C415600F
      2B728DA00312B7FA9681C40C09D80C2420260E6048803CADC183073E5D80C021
      0130730244018D5B8696955BD56FCB2D02C401A4603D23014419103B071837CA
      DF8110003180C20C05206480EC1C60DC6ADC6CB44F38600F4FA9DCEAE4019364
      64C5A57DF5F7F5CB4A02A02ED85EBEFAFBC00B4CCE614829FCC7B3BB48FD99D6
      2EFF6771938BBFD9D3F7676001EF8908050880B6029A029D4627CC001342931A
      400DA4450B0FC085214F02044917443C125352C52A10A7CEA84E45714B296686
      2DF6480EA42149E4145139110A5014B350A6F9C83629919FF0076F2F2A1491C9
      1853443EA02D644D0975E181429405405A00BCEE7BD9A3860D12980E647BD12A
      2D187FCA25B661404F45BB7D803DF79FBE127F0AFFD2E871F7F0EFA2C8416C77
      E8E3FF28EFE4DF9459EFE64FE4FF7F8F7EDA7A5BF83BF8B3ABF56F8FECFE4B7D
      DFC1C3F73BF5FBFFB3FE4363FF96FE0E8059F9F4B7F7DE624B7DDF61C3F13E64
      B79D0FC1FF796EDB80B7907402C19EEB0EF8CD016EADF01C3EB38BA89FA5717A
      9F8A29C600B7F07422C21E8B14F5CCA96FBBD438BCA7C300E243E47936CC9C25
      BF83A11617F1590796698B7DDE41C5B02E1748843B5F562E3AA22DFC1D10B146
      E6D4EE0D516FC77911E9083F61B616A7E085DC1045BF83A2162BD6DACD61AD2D
      F8EC232B2B3D8018117F85D063EE8F5BAEC00C083FD8ECC45BF83A2167811E01
      31C786BE01732DD68B1847AB8FABC7F397B7B41E27819363E81E440C243767EC
      151E0BEC02C65BF83A316302B1B181037C31C31931B18130053996EBC58C2248
      3120E24AB02EDB7E28C7DA0E5ED3BE11C6605010C34F08B7F07442C90D5830C7
      6C7121AB1C98EF916EBC5875BE25800C09AF252A63E4E216003022400101E32D
      FC1D18B18CC1036028AC618CD4955808C01C8B7802C3AA03AD93027AC6324EE5
      F6260448D4583865BF83A3164817F069DEC4871F1D605EC7CB7802C3A673001D
      8C84849D8C12980324C0BAEECBAF0CB7F87462C769BC8092F618CF901615EC44
      5BE08B1D502589C801FFB3C8BA006231191196FF0E8C59182D8EC63863BE65BC
      01613F83C965D2C623FD4E38E05E4C42DFE1D20B20FE6507F8F845BF3FD7E96F
      4B793EAF77644FC8FE46C62DC82C99FAFCFFD1E7E7DFB7E2F4058880BBFB7663
      8F72A70184FDBB55F30BDFD3F27BDD47C7BC6BD3047BF949DC23F1E6A04847D9
      20AA840FF1940F044788CE797990088049AA9ED3CBD8211A421E611C928DE384
      690277DA0A11A3EA02A029D7DBB52208E0D12976E8873B3BA895203107F8FA25
      A02A02A02A02A02A0290E2AFBA02A02A02A02A02ABEE80A80A80A80A80AAFBA0
      2A02A02A02A02A02ABEE80A80A80A80A80AAFBA02A02A02A02A02ABED8650461
      F8893C1DE22628FA8FA8FA8F97E3E575F6C7BDF56BDDE620D83A021C377D9985
      47DF17AF96A55107CBCC03D4C45EF133EB282F75DC528A7E53F35E7E2EAFBED1
      50F1B8F2A308E69B7760C8365E172A0AF8C16BF45B8E9417F47CFCA55CCE3562
      8D53EF8A72F1807C7CBFB0F71260BC0E33305C5EADF64857103F15772C9BFCFC
      984C674C17E70516A7E53F160FCDFE9CD7D9D0313AE0FA986620065E305E1977
      A3E63E5E7D9E6435298B4AC110033ED82F097B3DE2B1DD7F50505C800D7C305D
      3F29F9C03F26596B65CCF52002BCB1C1F0309747CD4033E27990017C9B324805
      EB5EB9648002C32874FCA7E7ACFC9BE5AD4E5CA6174DADBAF62105F77D947C5B
      355316588DD36B7681B12CC5BEC8EECF5BB3E0BA6D71C511334FDF653F229F9D
      665AD7D70EBC5D3536EACC55E1903A830760C37D1F33ED75CEDE89D353768D04
      CFBBA41960EC192CD50A13BA6A71C5B01DFF23A2C1D4FCA7E728FC07E5AC1C34
      C84E5D3D300EBF1D8130A6FB15D47CF2D73DEF512DD36FA6FDD9DBBFE614DF65
      AC5B29B974DBFA7C77F0EFF98529F94FC583F0554E6F6CF34D1C365F47CEFB1F
      18E6B0DC53EAF8C73986D3F29F9D23F2FDAF40540540540540557DD015015015
      0150155F740540540540540540557DD0150150150150155F7405405405405405
      57DD0150127851645C23E265190F6F637F484A02A029F5F79DCC0C8617C32002
      9EC069F603EA581F21301C7A107C82FB4909F0F983068800E6CD8FC32598029E
      7405405405405652680A80A80A80A80AAD7A02A02A02A02A02AB5E80A80A80A8
      0AAD7A02A02A02A02A02AB5E80A80A80A80A80AAD7A02A02A02A02A0248AD75C
      49111010492B471471471471E61C2B2D7184D0BCA30105967F13629AF7398638
      15B22D0D745A00091624DD5F2227F44513E0003A58829BBD4C4C3AA3247D03A9
      6A81E52D4A386944A5A9C2DA9B5AED6D53AA9D5D55AFCA5A9471396D622C65AD
      4A75271D53CC5BCC5A9471E715CEF694566162E1973501429D58C38D0F750202
      D54DD07D015015015015D07D0150150150150155AF40540540540580596BE016
      0160160165AF880C02C02C02C02F8AD7B35969D7BDE18801696035230182581E
      E7B01CBA114442F794E9E0F983146800E6C48FC675A8031E7805805805805A49
      700B00B00B00B00B2D7C02C02C02C02C02CB5F00B00B00B00B2D7C02C02C02C0
      2C02CB5F00B00B00B00B00B2D7C02C02C02C02C02512D796E9913011692B8718
      718718701838535AF5358B77D476B72973DDBF901034800202CA72D4DB5DA2D3
      0A8A8375BB9A0967510E0405A4B733FE062BB69BA2D57CBF5FE8CB04502E54D4
      023D42B44A938A41629E9EA40A163E163C78A4ACB170B9F192525392121353D3
      D571D58EA542D7148ED1DC6822459ADD6B398142E724632C185128B3B7071CC7
      6A14108E94D5ADD6B3981659A0AB7674B0A25A9E444445EFFDC0DADD6B398144
      4CCDDAD4614C7563AB5AFE016016016016B5FC4060160160160165AF80580580
      580580596BE0160160160160165AF80580580580596BE0160160160160165AF8
      058058058058046CB5EDB6D0F4B3A48802586034EB0187D81C3C6039C487C885
      F83967C1F2062CCB81C989178CF0C0063CF00B00B00B00B492E0160160160160
      165AF80580580580580596BE0160160160165AF80580580580580596BC405E00
      4C27B0E30E30E30E11A5AEA65426F92FFD4B0A91F2D2DA452659247F86029838
      E1A553EFD40331CD2C7FE68A0C058EAC757F96BDE587D72DA9D070CE69F50ABD
      30AB581D2F5B57AD44096D63ABBC00696D775AF168A9650AD98179487EB66024
      72DAF91C2DC627319EDB04DF6540092588D6A180B6A696A63A8D2DA4FC5BF72C
      1792CB9DD4F16381673C077F10B1F8B517A10C7563AB683F00B00B00B00B683F
      00B00B00B00B00B2D7C02C02C02C02C02CB5F00B00B00B00B00B2D7C02C02C02
      C02CB5F00B00B00B00B00B2D7C02C02C02C02C0234B5EE37054B44A188028860
      3553019BD81D0B603A1C288885F8152783E40C94970393122E87CA0018F3C02C
      02C02C02D24B80580580580580596BE0160160160160165AF80580580580596B
      AB0BB8FD748053892C38C38C38C389F5AFF8830CA10321F67167F80E10D1004E
      2C54A200C7563AA756BCC120119AD6AC73CECFEC7196BA8D6BE3AA58B5F491E1
      C61C61C61C2DEB5E49255103684C9EA166621C685EBB85F8EA40503DBAEB269B
      2090A95C9C0E32D79C4A07C755F8AD74418011AA354929470E3C76552C7D8B7C
      7563AA465AE31736A2077B3870B0E2943519634B42B8EAEC1D4AEB5FC53F880A
      659A787036FD516B8E14D45AF8EAEE9D5475AE300573B2A8E3C760C01616B8C0
      18EAC757E16BF596A61C4A5B55ED72C78358EA4C6FF49E5FE016016016016016
      5AF80580580580580456BFC3E107E0858620055301C1180C2CB05CE3607ABC28
      9885EF209D0C3C3147780770028D4D004427FD1002C08884EDA2005C11827827
      8278278278278278278278278278278278278278278278278278278278278278
      271BC7EE58E62A0DAE7E5C11109CB50BACC05002223BEFE4EF6028011109CED1
      528347921F00222139D98A19C17C3F34008884F9B9BA6FBD0EBC008884F93A79
      4CCDCFA104442753555AACACB90822213E4E6E47E7E918411109D2D4D75151D4
      4208884C3F7084008411109DE5E5EA10C208884EAE96C913B2022E52ECD99011
      15A6CB499A0A29011109DE43DE727274C808884D9E1EC83F811109DB8CEDE2C5
      8B9011109B4B24E627E5044427FC4301FDFEE05282221340A0D2BD1EE7EA5044
      42736CF76ADFF83D19411109A0A9839FC0E275A50444269867987F810679BB04
      7843B45A20B191A2A884E4432C13C13C13C13C13C13C13C13C13C13C13C13C13
      C13C13C13C13C13C13C13C13C13C13C138DE3C8D154427ED10B04C6BE9282208
      3DA214139811040B11EB448C273022081E89DE89184E7043C298A0E3CC0B09CE
      08820793A7A246139C11042F2ECF37AC273822185E6C9E89184E704430BD13BC
      FCB09D0088642D147C0D613A011248F44EF448C274022595E89DE89184E9044D
      33D13B51CC274822699E89DEA6584E9044D3BD13BD12350750223907F6B7AA04
      4F3BD13BD123DB9D6086B4E6677DB1AAC11450F44EF448F72558228A5E89DE89
      184EC04534BD13BD12309D808AAA7A277A24613B011161E2D1545AFED16F1789
      2D22E1745A1005B473768B50DB0F94D16BE39A4009BECC024A010197B8D8972C
      7C1AB041D45E408C30EF51343242004B4A267C9C7BC18C02C02C02C02C02C02C
      02F00BDEDA6016016016016016016017805EB95C00C00C000E003FB5246C00C0
      0C00E2001EB070030030012C01CBCBD0F7338058058041E027C5DC00C00C0031
      003E29BE4660060060029001F41B003003000F400FC617E676016016012A009F
      9BD80180180090008484937EFEE0060060000001FD6D8018018009400E12BC3F
      1C7F78058058040002B6C00C00C0053003E7EBF9D87E0060060006800AE00600
      60020003FF00B80B8091602EDAF8038014440E5731380380380219007C7DF007
      0029081FAED6D3F6FC05C05C048E02FE05F007002D081B32AAE00E00E00A3001
      3DC01C01C014C0060E1637E2DF00700028471B803803802A60072C5812D81C05
      C05C048E02DBE00E00E0053003FED7C01C00180035C01C01C00B300415A41600
      EB03C05C05C045002A4E00E00E005F80313173103803803800B4000CE00E00E0
      082001B3238441D7017017011A0080780380380324007F9AAC38038038024000
      6E780380380360005FC4E468D50AC727E00E00E00DE00369C01C01C01C01C01C
      01C0190005DB80380380380380380380324017CF8038038038038038038033C0
      15AAABDC05C05C05C05C05C05C05C05C05C05C05C05C05C0464058CCE918B802
      99F014AA02422F79B13058E835608320BC811921DC82692482FC96944CE538AC
      9863380B80B80B80B80B80B80AC0168E86AF017017017017017017015802FC5B
      E00E00390BAD97710A3780380380028005BF0070070057E00DCDC0729432BC05
      C05C048A023FE00E00E000B002E2E2F627007007005F60041E00E00E002D0056
      D6D763EBE97017017012C809C0AE00E00E005C004DCF52D2F007007001D80117
      C01C01C0127006297C609861380B80B808F8057FC01C01C01360003060DD87F0
      07007001F800C700700700230008F0170170124805DB5F007002E881CAE63F00
      7007005D000F8FBE00E005E103F5DAFEA2FF80B80B8092005FC0BE00E005F103
      6655DC01C01C0184002A7803803802E600D6DA05F8B7C01C004E11D4E00E00E0
      0BE001CB15FD8607017017012700B67803803802A800FFB5F0070017000C7007
      00700590012167238F3CD3F017017012100AC3803803802F600D7D80087C01C0
      1C007B00137007007005F800D99202E50780B80B80914040DC01C01C0070007F
      9AC938038038036D006F7803803800EC0141A3D5D731D9C6EDC01C01C007C00D
      D7007007007007007007006B00224E00E00E00E00E00E00E00D7006DEE00E00E
      00E00E00E00E00DE005CA9BBF017017017017017017017017017017010020040
      0BE00588BF45947E9800160C06B3607DBE303C816039ED290805E557FC87F900
      51C0000000000000000000DE006C80000000000000000003A401780000000000
      000000000000000000000000000000000000000000000003AB0018FB00000000
      000000000D378000000000000000069BC0000000000000000000000000000000
      000000000000000000000000006830F7ED9AD30002C980D74C0FFD303A4660BA
      3529E805F6F587F67C4BC80EC004F36E475602D27582F20EAC058C1D1E2FEC8D
      9205ECA29246CB303196E12DE88A7B090BAEB35A4EF1E008010020051E02D56B
      A6B951BF16BB439398AE396035AEB00580EE01B81A804D502F552A54C84949BB
      BE8F8EAAAAEB4B52870AA2B302767F4E6F4F058037B800B01188C03C01450010
      0D4041A140C5DC01F00CC00C08C24C28C0F00904B47896C9669A486BDFFDF42B
      B4624FCDE2600562B1736A42525A73DFE7F1903A1A3B1EFF1F783878BBDBDBFD
      1C00640B006B3E24816A05A014E00A4C1B009E4459066409E44404B7A92D50E3
      7890D6D1FC73E57C2EA052629314984B26293413EBE8B96CE8A9F488D27F3004
      C0728118091212D3BF5FB5C9EBABB6A419C1B1A9AF697171D0F279DC75ADEC01
      E1E2B60D6015B0C3027A0811415362D5B25025BFB25954906A4351E98EBFFED1
      00183858D9742D486CEE6E2DC5466DB6FE0605C10000000020401E1B75F867F4
      23B2DC7603F600760E60BC875A8DBFBFC0EBEBF16B31C993742D484FF199C760
      BD169DB6CC05DDC00600B803C022A06720B50373A07A8390046487E00140B04B
      4892DC0625090CFF30D2994802E140FCF6B4FF14860E26B6B6D56DADB714852E
      D36EBB5FBD3DED985F800B00EA0322C1D603F206A414AA3B5F15C480025A4496
      501219526E42D6401C2F7C3CDC994DEDF63B54C162352D487FBFC8CE78B5FF36
      7A20583983F812E830A8272165404C57603D8CA02DE023A18744004B46496F02
      432A4F8EC7155792AC25F8076416EA01E7AA6E8A95A906E6F0385D55A6D77D76
      BB4F6001EAAE6800B40EB0B6403C016F0CB220E4B5D8969A2432A4EAC674CC6E
      D590379739AA3A072646EE0DEDF7A3FB14F4FC324E95111521D653959095B605
      B9004C002A80A003540B911644F64C7C01D503F23F54220305490E4B5F09658C
      9512432A4E8E2C015F140E009351AF0CADD0B521ABD7EEDBA14244472A2BBEBB
      75A0A20B7B580CB02AC003B9685CCA206298433409C091E4B5012D40486549BD
      BBEAEF30098001907351AF724ED51A90A1DAAE0383A58978E4E93E6EA9DCDBBC
      CD5800BC101EC065584C005302B1637621C898432984F7258792C4090CA93699
      3005B9B029D045B9C39756B6D1C5D8905208A8A94E4CA6D3EAE5EF05847BBC58
      05902300580C618007CE044031919C03C02B1036452B08A924AC18F25B0A4B40
      C4262432A4DB83BA90102302CBCBC0139073085CDE3DC969CB0C9A90D7EF039A
      90D3DA6EDAF058BCEBE0813980496203AF036E802442D603670B3244580C5156
      915C9651258E9679526D35DE301E40D104AC0E8585725EFB74D4869F59B9DAEE
      069BA1D676FC1DA622D4E7C0E5521E0AAAA37840C234F8437BC34CF871907302
      2C4E9D047258AC963C594B1219526F2B666C07102D408D019EA1DDAA3742646A
      75834131F279A50AA1A8702BAE74B0004BE2050044BC017503A2105C112C077F
      21882F42C88D170CA020043DA11581AE4B40C96A8CFBC4869499966580440420
      88825707199CB521ADCDE61494F3BB30894ED40DDD24D243B5B2E3005D220510
      40828424B840431A01681A21F887B42688BABC0AB8BD70C58412E02D0DF92C5E
      4B53121A52795CBBB32101B923D9304D40E0504D981A8A69395EC8108A1B2A9E
      500EC880902F381D5ADD5C01C01C019D0034A4D484004D5012D01CA6AA606E10
      5E5E3B9E019530347AF5B5F9BB45D400958407102681D332E08882D871706A00
      35428DC016103A01C48BDC41C96CB12D60F61C486BE03AF66000D5BBAA079E77
      D487F573B55AA7F609B4734FAA24826E209BD9D4BF5082DE932BA85B0393545B
      10EDC4FDF258C4960A4869D3D4000EE415505956B984F04A145D876109A6CA52
      E38772A9987211AC9605B8021F0072AD1496684070EB74B94019E6B0106A105E
      81D580AF83AA05FB91B340BB945348DA0605F2DF92C49143424307C3F7730BEF
      0170170170155008A267F26DE8E6396F6C3EA7B9980EEAEB2C070818435109C0
      0535E7E4672FEF7DF6D6F70FF59C7A3A6BF9A9FDBA6DBC46007F9FE7675808C6
      60110149C0110D4441914AC5C20310330030230930A303C425C969E12DA2CD40
      904B2C94492BB9E96799505003B726A41FC7EFE03640BF891FE5EFD24DBDBCF0
      4200D01620D67C5D82E00B4428202C106C427A116819A022122392C4C96AC719
      E4825D64436F79C08FD49F527D49F2591549E493DCCFAA75F32595F2D51BC967
      E1AAB3FA028EEB09A906706367E7DE5FE13F441C75A7D8001482F0358061030C
      0884408E0AC416C8129C968412CA048352069C3525C1FA681400F551A742D486
      F0106FE297E083F8BF0B8038038021E003F65E385EECDD96DFB01A1006C0E60B
      D075A8DB8B8C0063883598E4C9BA17E8855C686DD8289A7154EC0430001A02E8
      0F108C019D02E00DE281EA0E4411A21C001085B92D684B00325C486B98ED29A4
      0029E10FCFE6D08290C4C710204DBDBDB8290AFDB5F7B4993AE6170005807841
      92A0EB01FA03640A611DCD8AE7001C96B525A76486949B90B4F00017A3C93932
      A41639DAA6C365BFD7E5EE78B345E76C40B07307804B60C4209D05A101315D80
      F63288B4011B8C3720392D31258A921A5260EC73217930C25440ED02DD403CF5
      52D657B520DCD890A90E3B319B76BAFD07D001EAAED401450EB0B6802002D819
      6841C96CD12D6C486949D58CE9D8DDAB206F2E73D493CE4C89DF95212E392F5B
      5B10420FCB1D653959095B605AD004C403200A203900BA11684F5CC7C41D503F
      43F94220309490E4B6789694C9512434A4E86440169400E109351AF0CADD0B52
      00E4452DD0A8A8AC1D1E803B759E9F1B7B940D282AB003B968DCCA58632C434C
      09C491E4B5D92D7C486949BDBBE2826014400480E6A35EE49DAA3521B2DB011B
      1B1E2D63968D46B3FB9B7799AB0017DB81EC066584C005382B4037621D09B719
      4E27B92DB44B6D121A526D32600AC4A054A08AC3066FF171644FB280A4125253
      9C9964323971F2C137BBC9805A02300580C618007CE044431A19C43C22B10368
      53308AA24AC18F25B6E4B44C43B2434A4DB83C191102302CBCBC413A0730864E
      4BDC96588C9DA903A3A3D6A408B76009C4F2BDD7C03ACB008744079806DC0050
      85AC06CF166888B018B35C22B92C9C4B252CF4A4DA6B9F603D01A209981D2120
      E4BDF6E9A90242830DE6F42DBA14AA5D3F323738D781CB24BC155B49F081846A
      F086F7869AF0E340E604989D4A08E4B1D92C94B2A62434A4DE56CF980E205A81
      1B033D43BB546E84C0D8E9252F4B2C16306CEB3F243AE7471005C22051045D84
      17503A21098114E077F21882F62C88D260CA620043DB11581AE4B5A096A8CFBA
      486D499F6B580440420888266071FA3B521BDCDE457E04A8BCD0D47C3E1D24E0
      4E39238B0066220510408284253040431B016C1A21F887B62688BB340B30BE60
      C58414C02D8DF92C764B61921B5261C42ECC8406E48CB9826A07199E17992CA8
      21220004915029953C040202AFC0A8EBAB528F007007006A400DA935C10019D6
      04CE072FC023249A1D1D8EE795CAF09C263F1EFCDDC22B00508203881360EA5E
      6044416C393035301AB146800B081D80E245E820E4B0092D68F65C486FE03A90
      5001AB77540F3CEFA90FEAE76AB5CFECF368E69F74493CDC4F37B3697EB1067D
      265750B6872AA8B621DD59FBE4B1E92C4C90DBA7C3004CF515FD38D2B72CE152
      6084F311D2E1B8F1D3AD2254EBF65007893E0095801CAB3F259A10543AD3523E
      523AAA44D738ADE5397D4B84D12591C0EA9327040CA025874A7EA5195EE055FE
      BEAB333945AF84D508B39211178ACF55F619B39719E358C543AAB0DD48C3BC02
      62C9F513CEF243008DA7F63784B930E5F90E5FB516A0909940147E217B905FE7
      837A08866F32E1351130A8E911384125421217C4E20B03BF43C1D4B3D1A3532F
      486F94E4431006186555383E9A21A6E5438129367D916EFE948BF2B925259836
      A53113124F8392298E4BB45E4FD0A139465851CA7302A58585247C94A95CD627
      844594B679F61448D242885511A430B30AFE62A816D31500BF871A069247B2EC
      2D461ABCC52825811EA4159EB2482B3A14A0B54825881B54E6DF3B4F4F22078A
      CF145149690BA99056374285EACBAA86D6B6AA4E8AACB98857A8BE641492C460
      FF62F9831497C25AD0CBE45AF52614BFE5A30678155E3D4C7A5254D772A65F4C
      856CBADC55D2EA59E096EA0ECAFAA03428D6AA2432D3C9206ED563A5653F6E95
      989435C289882804AA77495A53363691CCD1123753C1544EE3EB24BB407A795F
      CC832240FE1F49434F7053CD611EEADEB0B7B46D70388107AB650D73C58FFCF3
      45D91788B291A85CD356E43E11038112529CD952C280653277016325FC9A53D3
      F9D984D6885E6DD77B2CAC08D33E03204F227B649A4D93F21A733E1A518FCA2C
      1E8D605C0A2217530D2ADE4539F39B333EAF81910900A9970A1D38492925AC9B
      E05AB46E5180B07F04952196A012B93A4D2F6E09D3333C2D9A47A8C8CE2A3DCA
      8A54DD33877A3EB92A9683D336932136BDEB80B2958AC18B223FDE6094B4B0A0
      5161F344F8840031F7672434BD7780E76E96C2FB702CE4AE8F74928543068D28
      019915813B6F79CE8BC06359517502D640D44086BE16BE0BA86F814100D47B11
      735FD7C2B961EB0CCEB93597E4AE7B39A4CA107B350DF47209FB26074B28EC6C
      525F1495A98CA0A208A1B608C353D5D57D1B9088772CA878D4CE0C927233D054
      5734185E4A60D02F7A6105EE064FBFA78832614E3A38987536BE444A96F01DA6
      F9A9D7F9ABF7D1CCDC6F2BED9E012030C27D67BCE34DEA4E1931E031CBA5CF36
      2412BA74017BE8D5D7718FF053A0A0014453C7568C27C8180C277A61F95E4A59
      900CF22FF27D11CB27EF01BC8A9E4EA22BAA94A275978B89D710CA156BE475FF
      6159CA41158A087AD8562223D8725959404F0E1BEC276FD6593A01AC876BCD9E
      7B75BA2ADEA10FA806F3A1F3C2F7FBF5FED704C7A3CCE4C79BCDACE79B41F92B
      FA8752D7F20BBB438BF83AA49E527A3BFF5EC001F2BEA534918AA573EA3802F6
      E783DC70C820BFC0010AFF2233F2557DF1387C2E558B1DE8883ADC9B44185381
      8F60A23A74205AC7A3857651440F3F1F8425693F106AE28220FB4A1F836A0A28
      8FAB8A3780D227E81B04DB820B4A17A865C4FB0697DCE3059ADB6446A6898805
      6F688E98E43BE0BFAFFF85EE547FDD1AF54BF085D7394038E6F5EE09F615D36F
      23DB76A52AA960D89FA71C56520D1CF94717AC3D14F6F7CA6B884AE110E2B530
      FE1B2076271F269845BD9CC375C1202EDD3DBB90D98CC41E68586CCA9D110DB2
      C78B35ED8E75E4C7C2FFF93057C135F27CA8908067018EF49FADA2768C1B5239
      EB3A15002D9880A00666E59E70DCD12C56C4C9A0074920B75D1AC5F11F0255DA
      2A0074CEA7015C99C357E9BF0B5A3F719E9E6E801D262A07730230DD4477AD64
      54406BBA5639AA7915EC3DC741D4C222844AD3208F601F83DE1FFA09547691DC
      03DD0F3A007705223AB341A09588}
  end
  object TBPopupMenu1: TTBPopupMenu
    Tag = 98
    OnPopup = OnPopup
    Left = 224
    Top = 256
    object TBSubmenuItem6: TTBSubmenuItem
      Caption = 'Join server as'
    end
    object TBSeparatorItem12: TTBSeparatorItem
    end
    object TBItemRefresh: TTBItem
      Tag = 10
      Caption = 'Update selected server'
      ShortCut = 8275
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem13: TTBSeparatorItem
    end
    object Add2fav: TTBItem
      Tag = 4
      Caption = 'Add server to favorites'
      OnClick = PopupActionsEnt
    end
    object Rem4Fav: TTBItem
      Tag = 5
      Caption = 'Remove server from favorites'
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem37: TTBSeparatorItem
    end
    object CopyServerNote: TTBItem
      Tag = 23
      Caption = 'Copy server note'
      OnClick = PopupActionsEnt
    end
  end
  object TBPopupPlayers: TTBPopupMenu
    Tag = 44
    OnPopup = TBPopupPlayersPopup
    Left = 65
    Top = 352
    object CopyPlayer: TTBItem
      Tag = 11
      Caption = 'Copy player'
      OnClick = PopupActionsEnt
    end
    object CopyPlayerNote: TTBItem
      Tag = 23
      Caption = 'Copy player note'
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem14: TTBSeparatorItem
    end
    object Addprefix2buddy: TTBItem
      Tag = 6
      Caption = 'Add prefix to buddy list'
      OnClick = PopupActionsEnt
    end
    object addname2buddy: TTBItem
      Tag = 8
      Caption = 'Add name to buddy list'
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem15: TTBSeparatorItem
    end
    object remprefix: TTBItem
      Tag = 7
      Caption = 'Remove prefix from buddy list'
      OnClick = PopupActionsEnt
    end
    object remname: TTBItem
      Tag = 9
      Caption = 'Remove name from buddy list'
      OnClick = PopupActionsEnt
    end
  end
  object NxAutoCompletion1: TNxAutoCompletion
    Associate = SearchComboBox
    Enabled = True
    Sources = [asList]
    Left = 360
    Top = 383
  end
  object OnlinePlayersPopupMenu: TTBPopupMenu
    Tag = 99
    OnPopup = OnPopup
    Left = 256
    Top = 256
    object TBSubmenuItem1: TTBSubmenuItem
      Caption = 'Join server as'
    end
    object TBSeparatorItem23: TTBSeparatorItem
    end
    object TBItemOPCopyPlayers: TTBItem
      Tag = 11
      Caption = 'Copy player'
      OnClick = PopupActionsEnt
    end
    object OPCopyPlayerNote: TTBItem
      Tag = 23
      Caption = 'Copy player note'
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem21: TTBSeparatorItem
    end
    object TBItemOPAddPrefix: TTBItem
      Tag = 6
      Caption = 'Add prefix'
      OnClick = PopupActionsEnt
    end
    object TBItemOPAddname: TTBItem
      Tag = 8
      Caption = 'Add name'
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem20: TTBSeparatorItem
    end
    object TBItemAddToFav3: TTBItem
      Tag = 4
      Caption = 'Add server to favorites'
      OnClick = PopupActionsEnt
    end
    object TBItem29: TTBItem
      Tag = 5
      Caption = 'Remove server from favorites'
      OnClick = PopupActionsEnt
    end
    object TBSeparatorItem22: TTBSeparatorItem
    end
    object TBItemOPremPrefix: TTBItem
      Tag = 7
      Caption = 'Remove prefix'
      OnClick = PopupActionsEnt
    end
    object TBItemOPRemname: TTBItem
      Tag = 9
      Caption = 'Remove name'
      OnClick = PopupActionsEnt
    end
  end
  object TrayPopupMenu1: TPopupMenu
    Left = 385
    Top = 384
    object Showapplication1: TMenuItem
      Caption = 'Show application'
      OnClick = Showapplication1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object TBPopupMenuDetailedInfo: TTBPopupMenu
    OnPopup = TBPopupMenuDetailedInfoPopup
    Left = 161
    Top = 353
    object TBDTinfoCopy: TTBItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = TBDTinfoCopyClick
    end
    object TBSeparatorItem5: TTBSeparatorItem
    end
    object TBDTinfoSelAll: TTBItem
      Caption = 'Select All'
      ShortCut = 16449
      OnClick = TBDTinfoSelAllClick
    end
  end
  object ExportDialog: TSaveDialog
    DefaultExt = '.htm'
    Filter = '*.htm|*.htm'
    Left = 120
    Top = 254
  end
  object PngImageList1: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC349800000016744558744372656174696F6E2054696D650030322F30
          372F31300D8EFFB10000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000000974944415478DA63FCFFFF3F03
          2580710418F07DBFCA014EC73B0E641900D49C00A4E6037122D09005441900D4
          2400A40C805801881B80581E881F42D90F80F802D0B00FF80C00D9148FC7570B
          810624E0F5021E435034E30D03A0210FA0CE87818740CD0A440722D0000C09A0
          018C441900D40C0AC403403C018841DE0139BB00881D80865C20C60001A88D1F
          F089E1F502B160E00D0000E0C562E124B3F5180000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030322F32362F3130CFF2CBB40000008C4944415478DA63FCFFFF3F03
          258071981BC026AA2000A42E00B1C1AFD70F3E9063400390AA07E246A0010D44
          1900D46400A44036836890267E20FE0865835CF30168D8057C061C0052F678BC
          7D106880035E2F000D5900A4E2B1685E08D49C405418000DC190006A66242A10
          A1E1701E8BB986C8FEC7674000902A00E209400D1BD0F944798158300C0C0000
          AB7B5EE1E7DE07290000000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC349800000016744558744372656174696F6E2054696D650030322F30
          372F31300D8EFFB10000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000000974944415478DA63FCFFFF3F03
          2580710418306BD6AC036969690E641900D49C00A4E6037122D09005441900D4
          2400A40C805801881B80581E881F42D90F80F802D0B00FF80C00D9148FC7570B
          810624E0F5021E435034E30D03A0210FA0CE87818740CD0A440722D0000C09A0
          018C441900D40C0AC403403C018841DE0139BB00881D80865C20C60001A88D1F
          F089E1F502B160E00D0000D76562E15ACB8DD40000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030322F32362F3130CFF2CBB40000008C4944415478DA63FCFFFF3F03
          258071981B7080915100485D00620387FFFF3F9063400390AA07E246A0010D44
          1900D46400A44036836890267E20FE0865835CF30168D8057C061C0052F678BC
          7D106880035E2F000D5900A4E2B1685E08D49C405418000DC190006A66242A10
          A1E1701E8BB986C8FEC7674000902A00E209400D1BD0F944798158300C0C0000
          12E65EE15942CB620000000049454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030322F32362F3130CFF2CBB40000008C4944415478DA63FCFFFF3F03
          258071981BC098CE2800A42E00B1C1FF99FF3F9063400390AA07E246A0010D44
          1900D46400A44036836890267E20FE0865835CF30168D8057C061C0052F678BC
          7D106880035E2F000D5900A4E2B1685E08D49C405418000DC190006A66242A10
          A1E1701E8BB986C8FEC7674000902A00E209400D1BD0F944798158300C0C0000
          CEB35EE1CDFF6DDA0000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030322F32362F3130CFF2CBB40000008C4944415478DA63FCFFFF3F03
          258071981BC068324B00485D006283FF67D23E9063400390AA07E246A0010D44
          1900D46400A44036836890267E20FE0865835CF30168D8057C061C0052F678BC
          7D106880035E2F000D5900A4E2B1685E08D49C405418000DC190006A66242A10
          A1E1701E8BB986C8FEC7674000902A00E209400D1BD0F944798158300C0C0000
          1CDA5EE1ED45E7570000000049454E44AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000001A4944415478DA63FCFFFF3F03
          258071D4805103460D182E060000FD5A2FE19704E8CE0000000049454E44AE42
          6082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000001A4944415478DA63FCFFFF3F03
          258071D4805103460D182E060000FD5A2FE19704E8CE0000000049454E44AE42
          6082}
        Name = 'PngImage8'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC349800000016744558744372656174696F6E2054696D650030322F30
          362F3130B53298D40000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000000494944415478DA63FCFFFF3F03
          258071E00D38C3C0806282F1FFFF8C30F65946C6FFC8E2C87C1403D035C11463
          1347670F220360FEC3A6688878812203884D07D80C1B044979C00D00007213B6
          AF9E29C8EE0000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end>
    Left = 304
    Top = 198
    Bitmap = {}
  end
  object ToolbarImageList: TPngImageList
    Height = 29
    Width = 29
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC34980000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030312F31352F3130AB0F0417000002284944415478DABD97BD4E0241
          10C7871E022D508005B41208B4203509EA0B8805B58607C0939604E9A0938656
          25A146684920BE0152105A78029CD9CCC11EDC9E77C7C7249BB91B76F777FFFD
          985D3C9BCD069C5A269329911F8FC71DC78DD13C2EA1BF0C8D5E04CA2ADFF9F5
          D18D5A37505219E1D7B91BB58EA008CCA1FBDE0BDF2078784E28759EDD0B8F10
          9A3B0B54A1D2955A27D0ADCA42A12062FD7E7F5FAD59671E57500446D1CDF4F7
          5EAF277CB15894AB5D2178767F7B6768FBF1F579003E8032800A7D79004B828B
          5F5759AD5645DD5AAD26AB5D23D44FD0C5622102E170D81C9A4EA735EE9440D7
          FFA92695C160503C2F974B835A84825D6809769BDDD252A914B45A2DCB3A0AA8
          C1C4F0EE651961A426140A413C1E07AFD72B8014D355EA003393A166B69D5304
          77D03DE83F74BB5D88C562B655D935FA10C34292C13E9F0FDAEDB625F82450A7
          E093419D808F9E532BB09D556BA6DE72F52AA039E05C2B27049750EB8C24419F
          D1BDD173B95C16E512D026BA277AAED7EB90CDEE4EB4E9742A7C32993485CAE6
          143A043E55F43D4B698FF2ED6432117568AE69D8E5846162F64F1984AE8093FC
          60308046A321277783D19C572A15C8E7F37A88927F40F9151650AB33AFC7BEA8
          AA80508FEA37D53ECD81F92D618445D36F095C4F83C32B0C99F236A18296C078
          00CC19D6518C4A89E11129ACBC9EAAA0D4C10B9635962636D6C086713BDA6AB4
          165E55ED54501A961F56B7B20394DA06587542754B74F5B7E258FB038AA64B8E
          6E8B295B0000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC349800000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000002884944415478DAEDD44F489361
          1C07F0EFAA0D974E2F8BB275182C0A62D343F607226386413A62107929902EE9
          AE095BD8AD4212576E58182C89A20E15B104159ABA5221343C08B343B4930531
          16C522C7B6A2F57DD73B7B19DBBB77963BED811F5F9E3FEFF3D9FBEE7D5E553A
          9D46B61D3E78E86FE73FB6F9370B2A695F2545CBD5543977AA679859DB583AD6
          E6C74F9FF80C0603E2F138E666679FF55FEF7F9D4AA57E9560A478A7B7E5501F
          E31CAB4AE80B7303EE01EC6F6A825AAD46381CC60DB71BCBA1656577A4CA3CD5
          4F4477CAA1358C771C5B5B64B158E0BCE482D168443299C4F4D414066F0E2291
          482841E38C76A2AF0AA2227C9AF190E355D9B16E870376BB1DD535D58846A3B8
          333C8CC08B80127494A05DF63F95C07E8EAF2DDE515F8FDEDE5E34343664FAA1
          5008D7AE5C4524129103BF32F6128D2A457731DE72AE363B76B2AD0D5DDD5DD0
          EBF5585D5DC573BF1F237747C0972A1FF883719EE0A3BC3FA8D091217C96718F
          F36AA1AFD56AE174B9D07CAC191A8D061F5656E0F57AB130BF900F9D2478A2E0
          53903BA784039C6FCDF6CD16332EF6F4C06432655EAAF1B171783D9E5CF023C3
          4A34BC5E74376346FA369FE9E880CD6683AE5687E07410B78686721FAB93A007
          32ADE817897027C3977DCC757575B0B6B464E662B1185E0683527451BCCBEFFF
          8A0A476782EBACB21BFD399347082EA14853F4ED25AC657CE3DA2D054021FA08
          5E2EBA995254841D0C0FD76B4424D384EBD97F4F708FA28D4A41457889EB1BA5
          289BF0FFB5129DDF28741F6386A5970C3F20D8A97893525111EE63B8589B583F
          59DB897ED968742BE3334B78B916091E286983F5A0223CC938CE1A237AAA5CE8
          28A39D3551412B680555820A9164DD277AA19CA8D08E129D2BF5FADFFFBC73D6
          626F8D7D0000000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000005214944415478DABD976B4C9B55
          18C7FF6D69B94AB90974CC0142E206C16D0965B884486232C2826E9440CC40AC
          A22C4214E304BC302EB275192402D9940F95CB50CA06150A06A193C5A9C884CC
          017E1A860F546771E19270D90AA52D9EF3F6C25B68B9248B0F397979CFEDF73E
          97F39CA79CF5F575EC24F171C74E9347A2A51D7630659CB4DBB4FD3632ACDA69
          3FCE7650029392473969A13B7ED98668E81A026FDE1394C0C2C8832E7AD1DA67
          32992014FAC0CDCD0D7ABD1E7C3E1FFA353D8EC71E872459828CDC74F878FBB0
          B7F9893429814FED0825C023165309D9FDBAC73A5CADFF02090909E48574B8B3
          06F5404F7B0F2A6B3F038FCB632F5BA02E21E031A7500B70D49149B25F7D1D99
          D24C08FD848E86716BE016CA4BCBA0D3E9E0C277D93C7C940DB6412D261DDBAC
          A1554A8BCB70F2F4498007A7D2286F4445650544C1C19B87A8C647ACA666436F
          B37DB8598A3E2C8244920670CDEFEBFA753C987980C585450C0E0D22F4995070
          57B91818FC0158036EFE7893F13FDBC7049A68835AA2B4C919D057E88B77DECC
          C3C18883B6BE70513826FF99C4ECE22C944A25A263A2919B9FCB7CD4E2CC223A
          7B3BA1BCDE8187330FC1E3D9CCF3068D6A2B94AABDE55870C85FEACB129C4839
          012F2F2F98D64DB6B1C8FD91E0BA716D9A6F1132F5ED9CB730F6C7181BAA21D0
          30CE31711C3DF85DECF9ABABAB883D1A8BC28F0B111C2882B7AF37F6228A6605
          D403FD98F873C2D1702A85D6927F0AD8BD068301FEBE01484B4F436646263C5D
          3D8913610E227A54564933DACCC1F40D740FA051D188C0A0A771EFEE3DE80D7A
          67DF5447A13462ED521B87C3611280402040BE341F59D9AF998106D2DC2C5057
          0BD0229D8A4EC86A2EC2C5C5053BC838856E9B7CD3533270AEF01CA38D56A345
          517111AA4BAB218A12B1FC419243570F649F53289FC95E2693D1E99E0EA15453
          AAA5ABAB599D33196730F5F714FAD47D8CD9BC3CBC10220A81BC460EAE908BFB
          BFDF47765E364EA59C42F127C5D04C6970F1C20568FED2EC1E1AB22F04972BAB
          101913C9BCB7B7B543269301C4727CA2093B8B25BF948CCACB95CCD904DFDC77
          67F00EAAABABA09DD6EE1E7A60DF01061A1E136EEB9395C8206F9323C02F8079
          371A8D38F4DC21B4B6B5DA2F26BB957C5A0295AA8B3966BB861A893F9E8F398C
          86AF1A6C69EF7CF179B4DC6841506010A3A9C16840E8FE507491CD395C56443D
          06CEBE9F8BF1B1F16D7DBA257AE7E6E791F84222E40D724060EE53F7A95175A9
          8AC94002BE80091657812BF2CEE6214B9AB5B17805F8E8836228D54A04F80738
          628EDB9DD3D45752E1C1F3C0C2CA22A2A2A320C990D8CD2E2A2842675F2784DE
          42265B2D2F2F23E2D908F47EDF6B37AFBFBB1F237747E0EBE983E9F97FF148F7
          087373B3989C9CA4C3757619E9CA95AB108BC54E535B8E3407AA1E15BC9F3267
          28DD8A0EF1F1F150753BA950C8B9D6E97570F770C7F0F0300ADE7D8FD1CD2EF7
          FE3CF80B73549C09F59356ABB525006A623F3F3F88E3C4D84EE8BCF61BEDA8AD
          A931E75EF62D93949484B28A7270B95C3C4951B4B6A2FECB7AACADAD6DDC3254
          ACF76930B980BF51B43A0DF7BD08D5B0B9A9092DD75AB0B2B2627F9F5AA061B0
          540E7C6262E5B74AF8FBFBEF26973A14BA2F2D5FD46A357D755C3958C0763592
          E27A1B020303E1E9E9C9A4C6DDCAE8E828EA6A6A31313161CD5E8E6BA44D606A
          6AA656BAF6750B9383A9D6D4E4DBC1A7A7A7D1D1DE81EF7A7AB0B4B464D570FB
          6A9005A6A66E06AB66A2705A015030D59C46390D38BA9E5EFA97486E1EFA7588
          FACEBA64F775EF26B814FF5785EF00FE447FCBFC07AD613557E1FDD956000000
          0049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC34980000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030312F31352F3130AB0F0417000002284944415478DABD97BD4E0241
          10C7871E022D508005B41208B4203509EA0B8805B58607C0939604E9A0938656
          25A146684920BE0152105A78029CD9CCC11EDC9E77C7C7249BB91B76F777FFFD
          985D3C9BCD069C5A269329911F8FC71DC78DD13C2EA1BF0C8D5E04CA2ADFF9F5
          D18D5A37505219E1D7B91BB58EA008CCA1FBDE0BDF2078784E28759EDD0B8F10
          9A3B0B54A1D2955A27D0ADCA42A12062FD7E7F5FAD59671E57500446D1CDF4F7
          5EAF277CB15894AB5D2178767F7B6768FBF1F579003E8032800A7D79004B828B
          5F5759AD5645DD5AAD26AB5D23D44FD0C5622102E170D81C9A4EA735EE9440D7
          FFA92695C160503C2F974B835A84825D6809769BDDD252A914B45A2DCB3A0AA8
          C1C4F0EE651961A426140A413C1E07AFD72B8014D355EA003393A166B69D5304
          77D03DE83F74BB5D88C562B655D935FA10C34292C13E9F0FDAEDB625F82450A7
          E093419D808F9E532BB09D556BA6DE72F52AA039E05C2B27049750EB8C24419F
          D1BDD173B95C16E512D026BA277AAED7EB90CDEE4EB4E9742A7C32993485CAE6
          143A043E55F43D4B698FF2ED6432117568AE69D8E5846162F64F1984AE8093FC
          60308046A321277783D19C572A15C8E7F37A88927F40F9151650AB33AFC7BEA8
          AA80508FEA37D53ECD81F92D618445D36F095C4F83C32B0C99F236A18296C078
          00CC19D6518C4A89E11129ACBC9EAAA0D4C10B9635962636D6C086713BDA6AB4
          165E55ED54501A961F56B7B20394DA06587542754B74F5B7E258FB038AA64B8E
          6E8B295B0000000049454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000004684944415478DABD966F4C5B55
          18C6DF4B1B871496A55B0D5D3A96A863192B1A74B693603BBFE9FE54E9568368
          D02823D199F905A3D9A25BA2B01847E2902502EB628266FBB08922B028949910
          1950B2328C5007984922202CA8A325F6D2529FF7D292B6F42F5B7C9327E79C7B
          CF797EF79EFB9E738FA07F42574444D3BDFD7D63F43FC46E9DFE5D01D0F750F7
          03FA7132831A1A1AFCA1ED8A8A0A2145E8770CCD47FD43409F0FB9F1168A115C
          B345C2CE9FB3FE8622871F14BAF95AF9EB3B63C1237DD0CE40F18DE0F7FBB971
          010D7ED36CA81A62232FF4334CF501D8088A87A0FB22BC17A159F4DB1C04C3EF
          99481FE81834095505A1C7D17819DA0229421D61C6407EAB44D3E8455F39FA3A
          50CF8DF441FC1B80F606A15FA1511ACD29004DF6938D0766235EDC0C427F4123
          EF2E811C1E8C599760CC1C2792121527A4BA07D0258C494B3486A14FA36C8132
          EF013499311E865A50B1A6A5A5652D2D2D4957B3B2B2482697937771915C2E17
          E11EC96432491CBE403F19AEA7A7A793288AE4F178FC3E9F4F0885067DA4315E
          2F2D2C2C10FAB818CA6FB84DAD565F3F6439443BB55A92A3239B71747575D1D8
          E828EDD891477C9F43A150480F128CAF2F5FA6C1C11B539A2D1AF595B6768AE6
          33363A46E7AD569A989878504A248E772A2BFFD2E9F41B2C2F58C2E6029B02CD
          FE39E3C52CC8DF3FF1C1AAB9E2B73CFDC969DAA4DA246D10B17C9A9A9A68C06E
          17CFD4D6AE5B819EAD3BFBA97364E4ED378EBC497979CB898CA7A25355D5A4D5
          6A6BFBEDFD47CBCACAC8B8678FF406C1B8D6D343564CA76EB75E82C6F3512A95
          F6AA53D5BA1528C7C91327872627FFC89F9D99256D7E3EDDB9F30F6D546E1CCA
          DEAC7E54F478CE0C3A068FEEDDBF8F0A0B0B49F488D4D7D7479D9D1DF4F8AE5D
          61DB60349F4C45E6B4CD66ABC29658175CA7DBD1B70C2AC5B7CAC154A60982E0
          475DC487EFC1F57A24C8C5F1D1B1CF878787CBE7E6E6E4B8CF89E22B3E6896B2
          8BA1097C6EE3FA45402B3991787D0ED1F2BE1B7509702023798F6565447E5668
          06FD34817EF1968B0F1A67E823A874400FAC61CDC50D83D140D353D394B3752B
          6162A8E3870E29916342351A0D3DBB6F2F35D637AC322B361793C16024BBDD4E
          8B58CB058F15D0AF4E2792EA1A15199E5A7950A3D148535353E41145A9FDFBAD
          5BD1A19C994F22517273B7D1FD19195457FBD92AA8D96CA6D2974AA9B9B99944
          404D2613757777D38F5D57C3A031C2110655A9547400063E9F97DAB1C80F3C67
          8A69507EF8309D6B6C94EA252F96505B6B1BCDCFCF27F349AE32947FB49D587F
          D92640BEC422765C77ACF99B2631A655A8A9A931ACCF5AFFBDDBED4A6FF9B685
          DC6E772A066B811E130606068ED83A6D256DADAD45D8B453354835F8D4A90E6E
          0E7CD0FA09D2DCA5291F496EC7F0E135FE0AA01756B641803F42713C4AE7BFA1
          0D49423921FB63F88C03F8305742A17C82D80F29233ADF80BEA0E56367BC5880
          B607CA683EBD80F68641E3051EE85514F5B4FAF8191A97606A4968960294FFC4
          BCF117C47A4B0015098D528106C03A14066829CAED76409DC942FF03BE8C2ACD
          87ADEC770000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000041C4944415478DAB5965B4C5C55
          1486D799A152D28231268C97B436C698C824F6C58168E28B9707650CD538A018
          35D136A1A875064AAB604C4C8C356D6C1FF092122710290D096A3431155BEB53
          5129146C5F3431489422152580202173F55B337BE8743A070E0A3BF9B3D6D96B
          9FF5EF75D9FB1C2B994CCA5A8C0A5FF956C4E7600104FA07CEFE6EB7D65A43D2
          671047C1467001EC86F8DBF5266D44BC09DC60039801FB216E734C8A931B11AF
          811A500CFE02717D27CFF28459530286C01CB8CFD87AC04EC8FFB62585EC1AC4
          5BA0D14C250D513C4BCF1D3AEF0251D00CC161FCB4A2BF68ECE7417D26DD5790
          B250D3F2BA8950C7AFA0AFB4B4B4D6498A2727271FC6F1894C40F87B1AF99EC9
          C218D80B3EC925AD447C0162E0151CBC9315C96A87657CDE8338ACAAC9D6874B
          A4188B7417E021701C4247D13921C7F776E4C7E036B0984DAA8D73D1A00AD2E1
          3522D4488F80721369389BF441C449F035840F64A5FC06C4BDD4B5672506AD29
          E20CEFCF997797AF290B5E40BC0B3EE5A5C7328E1EA9F4AB33DDA14B2E1F19CB
          86376E4AB449D24DB87CF742AABB38047A30067248559D96F4F95342BD00F4C5
          84795679ADA4CF693F980295C685D6F2B94CF44E48B5261F20EB400B38802D6F
          2767DD489A113DEBF3923EB3ADC6FE07BAC729E975C8BBC145E62FD8D593750D
          8883260BBAAEFEAB5327EB8B8B8B6B9FA8AE91919191F8D00FC305CB91569BB9
          EB111DC0EF72B9261289C4CDCB44BAF495F9E858E7098FC7A3514B494989D404
          AA9D9196DFE5DB0E511776AFF1FB27F0D891668F9999196DA05627A44DA6E077
          A0BF6459D6216C85A4471616168428E778DE679AC69DC3A3739B63B1587D6161
          E1ADA1C6060904024ABE22E99D8811499FAB6771205EAF57F6BCBC475A9A5B64
          7A7A3A49E4996ECD1DA90F41341A153669EDDDD764F9FD7E999D9D1536214F3D
          592BA3A3A35793924E2FD18579AE50C240E071797ED72E292A2A92639D9DD2FB
          65AFC4E371614DDE94AA1FB59779CBA4AE6EB76CD9BA25F53C3E3E2EA160482E
          4D4CFC736E7868F312295156A1BFCFA29B0A0A0A24D81092AA1D55128D4435AD
          2B95D07668698E777549DBD136595C5CFC79E0DCE0ED295222D4ABEB33A2DB70
          CBB66D120C06C557EE93482422FFE7AFC2ED768BCBED92E6FDAF4ADF99BE24FA
          91B383038DEB464AED652365690F87A5A3BD43F03DC5DCFD34E979FBF48648EF
          A33B486F6455E9D57A2BC67E1B93EEEE6EF9E6F4E9D4E6213C889F16D21BBBAA
          9130863156C4A23452758046DA79B9917A69A4987D23E95082F9F9F9548674B3
          BA16BD1DBD89D44E2D6D2EE7CF41BF0E798F0C674E8F8CDD3F920E5C25D59F65
          36F60BFADBC876D21ABB2223F9EA662E8703D836652E07527F09D31B92FF72C8
          6C46FF3EF4E7EC14443FD996C1AE59F25C833FE2A8EC3F759653521371F6853F
          F85DFFF7BE752735C48E3E6DAB19FF02192D713D7AFA53210000000049454E44
          AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC349800000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000002444944415478DABD97B16F1A31
          14C61F3BA8ACC0906480B59110AC506624DAAE0CBD0C0C4C89F803086145A2D9
          604B3AB0A64562A6C98A8494AC30840CC09A48ECE47D8E9DDC5DCF973B47F449
          4F3E3F9DFDF3E7B39F7D91ED764B612D9FCF5B282793C965E8C66C1143E84242
          F7FF0B54AABC90D52313B52650A8DC93D50713B5A1A00C2C72F1D715FEC2E0EB
          5D42D179C115BE61687127508D4A23B561A0AF2ACBE5B2888D462323B581A00C
          DCE7E25ED587C3A1282B958AFDB503062F8CA01200C7C8E3EC87D23F2995CD66
          53BCDB6EB7ED6A9FD86FA53FB26366165E0389E472B996EC14A0CFEF8D122A13
          8984785EAFD76EB53ABBC30030201E440B508BDE36BBAF65B359EAF57A8E58BD
          5EA7E9741AA4394C241331BDAE2C230C6A92C9246532198A46A302889852A90C
          6AE1006F361B9ACD66B45AAD44CC0BE8F8A60C46E0877A633018503A9D0EAAC0
          61F3F99CAAD5AA3DF48B8196AA3816921D1C8BC5A8DFEF1B83FDCC6BF506027F
          FFFACD0878F5E7B7F73E0D020674B95C8602A652293DD40DF65AB5BB821649E6
          5A7B42D835F4848B9F78AED56AC2DD50137B0F7ACEC5319E3B9D0E150A85307D
          FB9A1FF49AE4A9A2F62C363CF2ADCA40F8D69876240CD7DEF43D75FCA048DA22
          C98FC763EA76BBF6E4EE307CF346A341A55249859E181A3781FA9D7943596AB3
          3D4323A1A03EB7841BF696BA25C8F75AF4EF1506A6BD4DE8A016390F800709BB
          D4CC8A25E17BB6B0F67AAA83A283537A3998CF7106520093EDB0D5B016CE74ED
          74504CCBAD54F71804686B1B97AA0F752BD8E8B7E2A3F60C007854CF6020A057
          0000000049454E44AE426082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000005F14944415478DAB5960B4C9357
          14C74F2D18B095811641DA028250C8F031637C642A914932C0455351D8B4829B
          53015F3C8415505B9F7353CAC0BA3875D26210440B6266222064CACC3632C2E2
          B3A088B4850105055A042974E77EB609B2D6EAA227F9A7F7DEEFBBFDDD73EE3D
          E77E34A3D108166CBA46ADDEFDEC59CFD2E627CD2EAA9616268BE50A068301F4
          7A3D787979EADDA74EED7672722AF7F4F4DC87EFB7C05B186D0CD41E61A29E9E
          9EB88A8A4A97F26BD7A0ABABCBE244575757088F088765A1A13D0E0E0E122E97
          2BFE5FD0A6A6A6CA568D66C9E14387EDADC1C61ACB950522B1D8C06432AF0604
          04AC781B2853A5525DADADAD5D9C93FD030C0C0C008D46030F361B424397C187
          4141467F3F7F9A56DB09ADADADC63B77EED06A6A7E038C0AF5270884C4E42408
          0C0CACF4F1F1F90C87066C4211B8A741A9CCCC48CFB0373FD8F8F546888A8E86
          172F5EC0E4C9935F9944A2F0F4E953A8282F87A2C2226A91C4B22412839B9B5B
          9AEF74DF2C5BD01935353595D912C914B54A0D8E131C49B8867D7D7DE9838383
          14D0D9D9F9954964217D7D7D14ECEEDDBBC37B3277D3C938C2202E3EBE63D1A2
          451F63F7A155A8AA459557505010A3B874891AD8BC6533848484407777375C2C
          BE086BA2A260D6EC59AF4CC2F0C299D36760AF682FE0A1831285020ACF1752CF
          6262632062F9F2B378AABFB40A6D6C6C6CDBB16DBB3B09D9B469D340BC7F9F0E
          3D63A62425436252227C34678EC589C7737361DC383AC427C453FD4F968650E9
          C462B1E0E4A99FBAD86C36CB2AB4BABA5AF74D6A1A837462376C00FE2A7EEFE5
          D252A7FEFE7ED8B173A7D57DE9EDED8583FB0FC0176BD70287CBD115169C67E6
          E7E753CFBE3F7AB47FF192C524C4F516A1B93939C673F9E7A8CE818307F49877
          8CB45DA910BE3C028283835F771EE0E68D9B800B84A359C7A0B2A2429F999149
          2D9E78BF3E2626169B328BD06C49B6F17C41C1CB909D906AE7CE9DCB5A306F3E
          FCFEE71F60CBC8814A494EC6BD15419756DBB35EB0FE03322E10082061DBD624
          6C4A2C424F48A54659DECB05E5C965CF30C19D6DD24CA6EDD482502804E90929
          68349ABECFA3A22792F12D7171B855B189D8CCB60895CB6446E97129D5118945
          BA4FC3C274D874B70524F98D69060C0613366DDED45175BD8A912E1452E115A6
          0B61C5CA957C6C965884DEF8F5867E574ACA04D2898A8E2207E33626F80C5BD0
          7BF7EE01D97B4589027A7A7B9572999C77A1A8887A76EAF4A981193367CEC6A6
          D222F4F1E3C7ED5B1312A69050B1391C3874F8503B8FC773B305CD97CBC1CFCF
          0F162C5C084AA5B27DE7F61D6EA44A79797981689F588325D1876CBB45A85AAD
          965F29BB22C83B7B961A20C91D161EDEE4EDEDEDF326FBDAD2D2D284E9E2A3C0
          02412C096BF0BCF9F34FE2FC2DD6E69032E880BFCF23C2C2A99A8AD7140833D2
          87B0703F444F026D016FDDBAC5399E933B9EDCB52E2E2E9027930D776A3B2706
          05053D7F1D149E3437A73F502A45DF7D7BC49E5415629867B04EB06E00EBAF0A
          EF4E0F1C6298E6E871711D5AAD9679B9A4D4B5ACAC8CBADCE9743A09B791CD61
          5FB85E793D15DFD360DA0D5B859A0E4669DD5F752B4879331B83C1003E9F0FBC
          009E9ECBF5348C18478C6DAD6DF6F5F5F50C72C3903D349BA3A323811B868686
          6E6397549B0BA856048F5885A24DC24BBCA8ADAD2D38EB5896BDF9AEB4655863
          49588D0D0D0D23582C8867065413EA6714D968F5588FC77EAEC0A3478F52F53A
          5D5A5D5DDDA4124509B4B7B7FF373C78C193CF95C8D591E482EFBD585CFC4B75
          5575003EE2A1EC50E44F1B50E474923CFA67B4C7342B1F66EEB8CF623777F758
          AC34F0E0FEFDF11801B0B3B3A30E8B3F8F37E8E1E161C0F0E6DBD1EDD22257AD
          22552C12B501E547FE1745BC7B38C6E391D74147DB6C93BC51E4B22609FF37EA
          B6F905ACD5647C2A6AB5093CDDE4318134A2CEC0CBEA4485FA4DA06F64081E87
          3F5C14DF04F637796C342D340F558C6A7D67D0511E936AB606F59529D46431E4
          703D40FD882A7DA7D0511E7346796CDEE341D455D491770EB5106A018A945472
          7BD5A20EBE17A8096C3E5C61A8A528475415EAF27B838EF2987C3493324ABEA9
          3B50EDFF0289ACB062224B1FA00000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000043C4944415478DAC5576B286C6B
          187EC691849A399DDC63FBA124CAFDF2439D496812CE3E748A8439A5FC20E47E
          6DCF14B9E432A5147ECCD92942CEA5FC107F0C3F5CF6C1DE4549D2EC880E61EB
          E4924BCEF7AED6ACD62C6BC6EC1FDB79EB6BCDF77EEFFA9EEF7DBEF7B246F1F4
          F484AF91F8F8782D7B1845AA5FD7D6D67EFB9A3D14F64079804A36B46CE38FBC
          8E008A4466EFD99A965F8B640F5A37D83B882C287B39883DFE642382575DB2A1
          2660B66666BFDF88CC3F337D100FB8C08692D77F62E32D5B333B0AAA628F0B89
          9A80C9A33F640EFF33EFA152A2FF9E817E71985E064C9EFEF4D2FDD891BF18E0
          5BBBF4F2F4A898E1023F27AF8CD217121212E0EFEF0F1F1F1F5C5C5C60777717
          EBEBEB727B0B01C6F652B3C7174B5C70A03C9DA478C3D3B8C0CFDF9151404000
          323333A156ABB1BFBF8FC3C34328140A383B3B233434147E7E7E989C9CC4D4D4
          146E6E6E2CA07A36C811354FFB679A13DD16509D05402A616161C8C9C9C1E9E9
          29B7F1D9D99935550C9C3CCFCECE46707030868787B1B5B5658B723D03D55940
          C9B31FA516212121686D6DC5C0C0005657575FBCC4C4C444E4E5E5A1A7A70707
          070772262606AA16D34BC09614814AA5825EAFC7F4F4341617171D8E9EA4A424
          949797A3B0B010B7B7B7E2254A21B5402F7FD9046C009FF8F9F9F9F0F2F2427F
          7FBFD5A6414141484D4D454646067798D1D1519C9C9C08EB4E4E4ED0E974609B
          636666C6A27ECF46A5257DC4A06AFED2DFB9B8B8A0ADAD0D838383309BCDC286
          696969282929B97C7C7CEC64E0FF3089787878D076757529575656043B0AAEE2
          E262D4D5D581D95A826AC192198AB8B8B88F625A49285ACBCACA505F5F2FE83C
          3C3CD0D7D7771E191999CC53255CE5E6E6E64C4545C50F623A878686D0D8D888
          F3F373E90D7C22D067D521363616292929E8ECEC1474111111686E6EFE9B7918
          27B56769B4D2D2D292B0B7B727E898F7301A8DD8D9D97976EFB2A0515151D068
          34E8E8E81074E1E1E1A8ADADFDC0A88B97DAB32BD8AAACAC0C3B3A3A1274EDED
          ED181B1BC3F6F6B62CE8337A3D3D3D396A6B6A6A049DABAB2B05D5BF31313199
          6C6A12996B969696C61B1A1A54F7F7F79C8262A2B7B7970B28695E73F4CA0512
          CD0D0603464646AC4E1A1D1D8DAAAAAA4B7680DF0303034DC7C7C71AA552F98B
          56ABFD4E1C70CC1114141470A9C38B7520D94A99F4F474EE65CA55290B14C5BE
          BEBE60D18B898909DCDDDD59D950E4CFCFCFC3641208799E3272C581A2B5BABA
          1ACBCBCB989B9B83A3929595C51D962A999456888B83AD32489D8482A1BBBB1B
          B3B3B32F02E6E6E6720C353535714D4146ACCAA00E360A3ED1595A5A0AB21B1F
          1FE75A995428B28B8A8AB800A2DCBCBEBEB6752EAB826FB7B5B9B9B9716D2D39
          39992B737497D4C2484F9D85BCDAD8D8E0D810DDAFFDD6C60792434D9C6AAFB7
          B737DCDDDD717575052A0832694162BF89CBC9AB7CAE48005FFFC3EC7FF90415
          819367AFF3B16D4FBEF9DF8A6F25FF01D9F9460B35E3031A0000000049454E44
          AE426082}
        Name = 'PngImage8'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000AF000000A
          F00142AC349800000016744558744372656174696F6E2054696D650030312F31
          352F3130AB0F04170000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000003CD4944415478DABD974B4C5341
          1486FF22249600B2850D0652B612086C2401972850C5088944059100F1050A3E
          16B6081A1718748325290F5FA0D18D280B200675A151080F1363C2C358BA4143
          2405093102ADE74CE7D65B7A694B239EE664EE9DCC3DDFFC33671ED5B95C2E6C
          C63232324AB81C1A1ABABBA90F55A60B016A93D09DFF052A5576CAD7D250D56E
          16CA2A13E4EB4CA86A838612309B8A57EBAAF710F8F556423978D6BAEA3704CD
          DE12E8062A43561B2CD4A332373757D4F5F6F686AC362094803BA9F8AABCF7F4
          F488D26834BA03881FD6C4A3DB9CE436F21BEF873E7404844A003BF73C963C45
          FA0E45A5C964126D1B1A1A84DA30C9D2E974C29578F4BCE6743A79799D24F86F
          2F687A7AFA3309DA15685858655C5C9C789E9D9D156A191A161686DABA5A18F7
          EFC7F4D434AC562BDEBD7D2BDAAD39D7BE50373ED1E3384D43BD020D2A7DD3D2
          D260B158BCEAAAAAAA303632EA81161C3C28EA57565670ECC851D86C36823AE1
          82407836138696E0EF2E238CD5C4C7C72339391951515102C8758A4AC5586D59
          E971381C0E2F28DBADE6663C7DF21434C434C92EAFDD4BCC29CD25571C532ABB
          BABA603018821900E4EDCBC5FCFC3CAA6B6A70A8F090A7BECDDA868EF67686FE
          A4398DD14C2435383A3A1AADADAD418183804E13D4A0090D165C7BEE3CC6C6C6
          3CD9BABCBC2C86D0643623676F8EA7DDFD7BF760B963E16C5EA5D71FE4DBE05E
          56DD3EEB34109895CDCDCDB97B2CC1E1E1E168EFECF06AC71DBB7CF112161717
          C53B774CDA47CDCD410D5E9FB52F9EBFC09D96162C2C2C40AFD7E37071317667
          EE46525212222222BCE27C9BFD8681817E3C7EF4584C0119AB2EDD089A0DB9D7
          AA3704C586878761BE62128162626260AA37233333D327CE40FF006E36356169
          69892176525B41F3DBBF11B49A8A5BFC5C5E5E2E7CBD4D4E4CE042DD0531D491
          91913875FA14F2F2F3C59A65EBEFEB436343235657591C3E93971070D8279154
          D0DB549CE5E726EA6956D6DF136D74745494A9A9A9989A9AC2F5C66B98A00E30
          ACB2AA1285454578F8E0211E75777392B948DD2435CF22E077CDEC55415F439E
          2ACA9AE58D80F7DB9191112873CDC3AEDFBE1D951595B0DBED22A11213133139
          C91C30F0259527086857C7DF08EA80DCE4070707D14CBB8BEA28F3329EF3B2B2
          32141C28C036522BB39483F671D2A8150682FADB8F7B6469F409E63EE6D8ACE4
          6708F84B2B80D63ACD86F62DE10D79BD724B90EDEAE17B8561F37B9BD08296C0
          FB009891B0BB5A01647B8627A8AAFD5E4FB5A01CC04CBE407E5B39030399FC8E
          971AE7C2557FDF69417958C6A53A473040D5B7B152758ABF7BD3A6FF56FC0BFB
          03B22302925CA85ADB0000000049454E44AE426082}
        Name = 'PngImage9'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000001D0000001D0806000000569367
          0F0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B732043533406B2D3A000000016744558744372656174696F6E2054
          696D650030332F31312F3130B3F282690000071C4944415478DA9557694C5457
          143E6F866580619145140C2028C8686B4C71C5AD56501659D46AAC605AD3A0A2
          806B5DC0A48AB618505AD0D82AA04D6C5C5315108CB2E81F1B9116423B688221
          02A5151C1051405966FA9D8B8F8222D89BDCBCC7BC7BCF77CE77BE73EE453218
          0CF4BE63F5AACFA8A7A747D1D9D929E129191B1BEB954AA541A15018CE9E3F27
          D62C0D0B37C2638E919151F1854B1707B5230D071AB93A427AF1E2850AAFD698
          1AACD7E8F57A6F4C5B005602B01ABFD76356C291568039E0DB1F92244DBE7CF5
          4ACDFF02DD14BD91EAEBEBADF07D1A8CED80A1E9986A44A9C4B377B324914AA5
          2200131C7885B5B900BDD8D5D5F533BE2565E7E624BC37E892A06030673C1D9B
          0F62FABE7AF54AD9DEDE4EBC968178CAC3C1C181DADADA043880799EC6DACF4D
          4D4DABCCCCCC268062FDB0A0CBC297AA10D997003B84CDE60CC6E3B54161DCC4
          D484149282F4063D99A9CCA8A3A383734DCC00C0A8A5A5852C2D2D3BF0EE0B8A
          CB86045DBE749911E8DB85CD894D4D4DD4DDDD2D8CF074777727474747721C35
          0AD1D90B4A19A8BEFE6FAAADA98103066AD2E9F4B5B5B50A38CCA0646161910E
          8A63870445945B209A23ADADADC26B131313727175A149933EA0C83591A456AB
          07CD7FC9DD12F1DC9B9020C0981DDE6B6D6DDD0A76EC7EB972B97B50D0D02521
          D3F0B8DBD8D828228097A4D1682820308066CF9933A4C2199401EDEDEDC5DF16
          700E60F51DEDED55602404A0CFDF02DDB9E32BE9C183075AE4C29BF3033A0D5E
          13BCA42D5BB792B3B3B358987D359B2CAD2CC9C3C3835C5C5C06802EF2F31F00
          686767CB51525161119594DE93DE7452808685842E462EF39F3C794290BC50E4
          868DD13473E64CB1881D591FB54ED06667674721A121347EBC27B98D7523A87C
          28126EDBD8D8CC5FB1FCD3B1D0C724CC6AE4582B858786B1606E3F7BF66CEECB
          972F392786B9F3E649B171FFE51FE2A0C47DFBA906829185656E6E4E7EFEFEA4
          99A821373737E1CC9B4387204E9E3C99A6FD53FB1134E20BCAAFE75CCB0D6050
          574459AAD3E9EC396A272727FDF7E9690A2B2BABBECDE565E594929C4CCC040B
          8CD7B150B87C38D22953A6D02C5F5F50EF4ECE63C6F4ED7BF8F0A170F6E9D3A7
          422770EC09987465D06528EE33C8A78A0D787A7A761FF92ED5A8BFC7B939B9F4
          D3E9D3C4AA960703B321AE5D8E9AE7C8912369DAF46914141C2C72CA0369313C
          7AF4486267F1BD07CE4E61D01800A67157E19200B514B7396E004D277E3C41D7
          F3F345E7E93F986676546E0A23468CA051A8E3A8755134DAC949AC49DC9F48BF
          95960A5DB023C05826050706A5C2D86636C8948684868A9AEC3F0E6063494909
          A11DF645C70322114D2330285080DA4380AC7676849B078FF4B474BA555C4CA8
          7F611F9A8962D064006E67502EECB0F0708A888C1800BA6DCB56AAACAC141171
          FDCA11B371AF0913283925B90FE4CD712CFD281515150950B60FE068A6773D72
          75FCF9F3E7C2E0C70B16504C6C4CDF268E8E41ABAAAAC477A6B0B9B999E40380
          29F3F3F3A3A8F5EB0605DD1B9F40151515C495F19ADE150CEA07BE7360C85478
          EEE5D57D38F5489F901A1A1A28614FBC00F2D678D3CA952BA1E4147AFCF8716F
          A1E3C4E13C1EF8E6208DE9A75C79C8426207A1DE76287E2E83DAA2641EA0641C
          F8C3E8D1A37BBEDEBF4FC9B5C7A3ECF7323A9C9222F2B173F72E727575A56347
          8F51614181A08C070BD077B62F6DDBBE7D00E0FDFBF7E960E201516AAC03803E
          4560CEC2039C9F85A078015300E91BE6CD9F2F6DDEB2596CCCCFCBA37367CFD1
          9EF878E4CFABB7E8753ADAB36BB7681A9C67CE27D3CEA03E537DFA400F251DA2
          5FEFDC11A960C7909E3C348720B90DFA23DA3C1853B2011C61FA0DD1D18A1933
          67101F710C02DA07449199914105370B44E1F311C875CA2C7C9B94446A4BB5F8
          762A2BCB80FDA2F7C2A96ED4A8FFD59CEC62010ADE255C4D4A20261FF68AE5EF
          316E1CAD5DFB057D3879F2A002E11C5FBA78094DBD5044CBB99D356B16C581A1
          F2F272CACAC8A4EAEA6A21444E0D6E113790FB808CAC4C7DFFA3CD07EFF7D818
          A2EE05C689B268F16271BC0D36B874FEAAAB13CAB401BD7CFAE4E6E4D0CD1B37
          09E211BFB31DA8B613399D8A282B84F8FA1FE2B83EAE8292CFA0F92BE45B83AD
          AD2DF2349516FA2D246F6F6F7AD7D06AB502B0525B29D2C1B707AE06DE0FC080
          2BD957AFCB6B0780AE898894D012E30098CACA644FE57B11F75517E48CAF2C5C
          6F0A45EF31D9D4D48CF2F987EA6AEB844AE5AEC57B90E73638BE1D11FED0DFC1
          B72E66109509F2B3109E9E477ED572F7797DCD14A78BB189B1B898F520975D48
          0547C5403CE5F608B016AC5F816FB7AEE5E7750D092A470C5169F80A0A439FC0
          7B3547CD94CBD74F7ECA7BF9C954422C3CF5F876014EC6A02E9B324F65BD0530
          E40D1FE25261F34480738F0B804AAD006C259FA90CCC0C207A3EF39AF1F77980
          1FC7F706E4F0E5BBEC0EFB6F45ECA6186E027CAC2861942F471331F9E2C41B3B
          301BF17B39807478EF01580F0D33FE05BF21D2730CFC7E100000000049454E44
          AE426082}
        Name = 'PngImage10'
        Background = clWindow
      end>
    Left = 272
    Top = 198
    Bitmap = {}
  end
  object Png16ImgList: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000008B4944415478DA63FCFFFF3F03
          2580119701E7CF9FFFFFFCF973305B525292C1D0D090916803F6EDDBF73F3B3B
          1B456CEAD4A90C4E4E4E8C040D00D91C151505665FBF7E1DAC41535313AC68D9
          B265182EC13060DBB66DFF8B8B8BE19A610064486F6F2F839797D7603600A499
          98A8433604C380DE9A16BC9A8B5B6A081B0052840DC0E4465D404B179003000F
          50A7E183AFA88F0000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000001A4944415478DA63FCFFFF3F03
          258071D4805103460D182E060000FD5A2FE19704E8CE0000000049454E44AE42
          6082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000001FF4944415478DAA59141481B41
          1486FF410D6B2BA207BD048AE6988098080583D643C050C5E225A855F6905E7A
          A84A5C2816422D12210829EDC542410FA1D060C0835EC483A29508564811D34B
          6988C44B09620CC2268632DD99B89BDD24F4E2CF2C3B33EFFDDFCC7B43A088F2
          01103E4A627B6C6DB55AA9D7EB8524494411B438E5161035113AE9818220F0F9
          ECEC3482C1650D6200A84666E0014234406FFF537A7D798E64320959966B0348
          C55F89120661EB9375917EDCA28846A31CC04D0AE4FF00BDCE00E935B0B22BD4
          0654D6CC023CE10E983E5EA5997A079CCE5E783C1E84C3615205D077361EFF41
          1D0EBBB65F28526AAA079C4F8610FFBE874020C05F44D73723C066B3D1919161
          D67143250A98DF8229163B82DDDE4D0C00F5F4A9A949241209D492288ABC996A
          29E51EDCD5A39EBE185806BB76A542A110FC7E3F9F6B0D5501E9749A7E78F908
          0F7ADE62FECD3B3C6C245580B95763F8B4BA098BC5C26E5902307326F58D365C
          ACA0A53582C31D133EC7C7E0F3CDB13ACBEEBFBB909EB9707A0E2CBC30A1CF57
          2803B2871354B88A40B09472D9BB0FCE6CC3ED766BFEB5E0049EDB227CCEF2B2
          57E368E9FB4A0C0035C8B4F44544BEA103C55B1907B133FE84F2499EC7F249E5
          6BD501580985CC2FFC49EDA32EF71337B9536CFC1E85B9F3313764AF73108A29
          0CB447D0D4DC05B3EB3DDA3AFACB25DC47FF00AA9306F0C1603E5F0000000049
          454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000002154944415478DAA5D35D485361
          1807F0FFBBADD6968AA41B731BD4189B032B2BED221C485DE445509605E16D5D
          4817DE880CBA99415D9446442C026F84A0AB92222C46258E3E58A385625B796C
          878CA9631F742E7692E3A64FEE8C1D9B59137AAEDE73F1FC9EFFC3FB1E4644F8
          9F621B018AFA896562207E1C2BD53668CE0CB22D03F9D17ED2C45E826ACDA070
          00739C082EAB474748645B0268F884FCC18405ACC6661580792E22C656C069EE
          9535DF3A9967E52B0C1E2432DAC1923164C253F8C0EBB0DDDD8D2F6E2DC6223E
          389AD5B0DBF680F429F0117103F0FA2E2138FC477C576F1FEE487EA47221EC32
          FF0328EC9F5EC840AAB5422BC4F1995763F9CD036807BC180A7B5067000EB7D9
          8BABAE0173132E0C5D78BF0E8CFA33F45DA893CF8B69C0AA9A46D7D12A3C89DE
          DC34BE357B0A7DDD8F8AC0D85BD0C863096DAD5AB999FF26E15328896B97F568
          DAFD15E3D1FB886B9ECB78838D419A6E969B955BF0F820C768A82F4E0FBC4840
          B7FA13DE9E87588C0CA0D171043B8DAE22A07A8AE0FC691CEFBABD0E9CEB97A8
          34BD5005C0BD4FC4D996AB98FA3802A7696DFF26A0AADE846C3A8177E9DEBF03
          A5F897CE0BD84BFB9110756871104C26036AAA73988FA760E9C82B0F4B017E7F
          2035CB49B4B65F876AD2274FB798772800372BC0D9B9540E6C5613CF6ED04CD0
          23034EBB1A16AB418ECFFD3886439DAF2A03A59A0C5C21DDB6A47C5ECA1971A0
          DD5BF65F54042AD52F84F922F05E22FBF30000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A0000001C94944415478DA95925D288361
          14C7FF6F581BD2B8E0426926572B1951967CA4AC88DC2C9F4DCDA58FB5F72DA1
          8534B556BB7043292E9632AD5C90321744723335ADCD9D35E54612967A87D6C3
          F3F8D85E4673EAA953E739BF73CEFF1C8E108254E6F57A09CFF3CC37994C1004
          814BF58FFB0DA050282401B3791476BB834B1BA06B68237EDF01B435CD78B8BD
          44381C86288AE903E6270749B9CA87B2821A2C6C13783C9EFF0184768E381D1F
          FE38B0B82F4F1F40050C0683682A09A048D5889BCC2AE8747530180C70B95CDC
          9F00BFFF8C0C9BA7E0DDD9403C1E4776AE12B24CA609A826369B4DB2911F008D
          46433A3ADAA9E2DFC1AC0B6AC9A34800B4FAC0403F42A1504A5D8C4623133379
          1409E0B3FA9CCDC1DAFE6E4EA71356AB55D285044095CFAE9EC6C4E42C72143F
          0F8F1FE9C6D2CA16D46A35ED520AB83FEE25CA7C378EF76458F677C362E1A1D5
          5626B2E3FB103A5B10B804668664A8B73C250034597EE7865C9DD87BEBD82EF4
          7AFD57FEAABD177D1A37F3E9BFFBBB1E28EBD73909E033C82E71CD8858960A2F
          CF228E4E826C85E2698CC562E1B7979F04A076E55B25D791436444CFF1180D60
          F3A20BC5A5B5EFE33D44217F89A0B1D08DDCBC0A540EF97EBF83FFDA2B9856E9
          E1260B9A020000000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030332F31
          342F3130842C725B0000001C74455874536F6674776172650041646F62652046
          697265776F726B732043533406B2D3A00000001A4944415478DA63FCFFFF3F03
          258071D4805103460D182E060000FD5A2FE19704E8CE0000000049454E44AE42
          6082}
        Name = 'PngImage5'
        Background = clWindow
      end>
    Left = 240
    Top = 198
    Bitmap = {}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 320
    Top = 246
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 360
    Top = 246
  end
end
