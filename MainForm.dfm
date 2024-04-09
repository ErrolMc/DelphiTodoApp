object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Todo App'
  ClientHeight = 636
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object MainPanel: TdxPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 636
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    ExplicitLeft = -46
    ExplicitWidth = 436
    ExplicitHeight = 253
    object AddTodoButton: TcxButton
      Left = 288
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Add Todo'
      TabOrder = 0
      OnClick = AddTodoButtonClick
    end
  end
  object dxSkinController1: TdxSkinController
    ScrollbarMode = sbmHybrid
    SkinName = 'VisualStudio2013Dark'
    Left = 56
    Top = 40
  end
end
