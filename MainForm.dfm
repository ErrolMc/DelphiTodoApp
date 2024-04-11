object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Todo App'
  ClientHeight = 594
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = dxFluentDesignFormCreate
  OnDestroy = dxFluentDesignFormDestroy
  TextHeight = 15
  object MainPanel: TdxPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 594
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    DesignSize = (
      355
      594)
    object AddTodoButton: TcxButton
      Left = 265
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Add Todo'
      TabOrder = 0
      OnClick = AddTodoButtonClick
    end
    object TodoScrollBox: TcxScrollBox
      Left = 16
      Top = 64
      Width = 324
      Height = 511
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 3222829
      HorzScrollBar.Visible = False
      ParentColor = False
      TabOrder = 1
    end
  end
  object dxSkinController1: TdxSkinController
    ScrollbarMode = sbmHybrid
    SkinName = 'VisualStudio2013Dark'
    Left = 16
    Top = 8
  end
end
