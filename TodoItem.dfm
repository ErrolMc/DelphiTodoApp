object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 254
  Height = 176
  TabOrder = 0
  object MainPanel: TdxPanel
    Left = 0
    Top = 0
    Width = 254
    Height = 176
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    DesignSize = (
      254
      176)
    object CompletedCheckEdit: TcxCheckBox
      Left = 11
      Top = 11
      Style.TransparentBorder = False
      TabOrder = 0
    end
    object LabelText: TcxLabel
      Left = 40
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
      Left = 40
      Top = 39
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Height = 122
      Width = 198
    end
    object DeleteButton: TcxButton
      Left = 213
      Top = 8
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      TabOrder = 3
    end
  end
end