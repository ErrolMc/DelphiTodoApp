object TodoItem: TTodoItem
  Left = 0
  Top = 0
  Width = 254
  Height = 170
  TabOrder = 0
  object MainPanel: TdxPanel
    Left = 0
    Top = 0
    Width = 254
    Height = 170
    Align = alClient
    Frame.Visible = False
    Color = 3289650
    TabOrder = 0
    OnClick = MainPanelClick
    OnMouseEnter = MainPanelMouseEnter
    OnMouseLeave = MainPanelMouseLeave
    DesignSize = (
      254
      170)
    object CompletedCheckEdit: TcxCheckBox
      Left = 11
      Top = 11
      Style.TransparentBorder = False
      TabOrder = 0
    end
    object LabelText: TcxLabel
      Left = 32
      Top = 8
      Caption = 'blank'
      ParentFont = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = []
      Style.IsFontAssigned = True
    end
    object NotesEdit: TcxMemo
      Left = 32
      Top = 39
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Height = 114
      Width = 193
    end
    object DeleteButton: TcxButton
      Left = 200
      Top = 8
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      TabOrder = 3
      OnClick = DeleteButtonClick
    end
  end
end
