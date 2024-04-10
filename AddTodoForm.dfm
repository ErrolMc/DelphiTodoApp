object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Add New Todo'
  ClientHeight = 285
  ClientWidth = 436
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
    Width = 436
    Height = 285
    Align = alClient
    Frame.Visible = False
    TabOrder = 0
    object HeaderLabel: TcxLabel
      Left = 18
      Top = 24
      Caption = 'Header:'
      ParentFont = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object HeaderEdit: TcxTextEdit
      Left = 96
      Top = 28
      TabOrder = 1
      Width = 321
    end
    object NotesEdit: TcxMemo
      Left = 96
      Top = 81
      TabOrder = 2
      Height = 136
      Width = 321
    end
    object NotesLabel: TcxLabel
      Left = 29
      Top = 77
      Caption = 'Notes:'
      ParentFont = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object AddTodoButton: TcxButton
      Left = 96
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 4
      OnClick = AddTodoButtonClick
    end
    object CancelButton: TcxButton
      Left = 192
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = CancelButtonClick
    end
  end
end
