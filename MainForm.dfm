object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Todo App'
  ClientHeight = 604
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = dxFluentDesignFormCreate
  OnDestroy = dxFluentDesignFormDestroy
  TextHeight = 15
  object MainPanel: TdxPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 604
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Frame.Visible = False
    Color = clDarkslategray
    TabOrder = 0
    DesignSize = (
      438
      604)
    object AddTodoButton: TcxButton
      Left = 348
      Top = 24
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Add Todo'
      TabOrder = 0
      OnClick = AddTodoButtonClick
    end
    object dxNavBar1: TdxNavBar
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 40
      Height = 36
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Ctl3D = False
      ActiveGroupIndex = -1
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeelSchemes.Flat = 21
      LookAndFeelSchemes.Skin = 21
      View = 21
      OptionsBehavior.Common.AllowExpandAnimation = True
      OptionsBehavior.Common.AllowMultipleGroupExpansion = False
      OptionsBehavior.Common.RevealHighlight = False
      OptionsBehavior.HamburgerMenu.Collapsed = True
      OptionsBehavior.HamburgerMenu.DisplayMode = dmOverlayMinimal
      OptionsBehavior.NavigationPane.AllowCustomizing = False
      OptionsBehavior.NavigationPane.ShowOverflowPanelHints = False
      OriginalWidth = 148
      OriginalHeight = 594
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 48
      Caption = 'All Todos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object ScrollerPanelParent: TdxPanel
      Left = 10
      Top = 112
      Width = 418
      Height = 482
      TabOrder = 3
      object ScrollerControl: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 416
        Height = 480
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        Transparent = True
        OptionsItem.SizableHorz = True
        object ScrollerControlGroup_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
    end
  end
  object dxSkinController1: TdxSkinController
    ScrollbarMode = sbmHybrid
    SkinName = 'VisualStudio2013Dark'
    Left = 120
    Top = 432
  end
end
