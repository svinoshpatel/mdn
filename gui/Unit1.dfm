object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LabelStep: TLabel
    Left = 383
    Top = 46
    Width = 83
    Height = 15
    Caption = 'Tabulation step:'
  end
  object LabelA: TLabel
    Left = 41
    Top = 27
    Width = 9
    Height = 15
    Caption = 'a:'
  end
  object LabelB: TLabel
    Left = 40
    Top = 56
    Width = 10
    Height = 15
    Caption = 'b:'
  end
  object LabelEps: TLabel
    Left = 29
    Top = 82
    Width = 21
    Height = 15
    Caption = 'Eps:'
  end
  object LabelC: TLabel
    Left = 240
    Top = 271
    Width = 17
    Height = 15
    Caption = 'x ='
  end
  object LabelIterations: TLabel
    Left = 240
    Top = 250
    Width = 52
    Height = 15
    Caption = 'Iterations:'
  end
  object ButtonSolve: TButton
    Left = 72
    Top = 312
    Width = 129
    Height = 33
    Caption = 'Solve'
    TabOrder = 0
    OnClick = ButtonSolveClick
  end
  object ButtonExit: TButton
    Left = 384
    Top = 312
    Width = 137
    Height = 33
    Caption = 'Exit'
    TabOrder = 1
    OnClick = ButtonExitClick
  end
  object ButtonStep: TButton
    Left = 472
    Top = 72
    Width = 113
    Height = 33
    Caption = 'Tabulate'
    TabOrder = 2
    OnClick = ButtonStepClick
  end
  object EditStep: TEdit
    Left = 472
    Top = 43
    Width = 113
    Height = 23
    TabOrder = 3
  end
  object EditA: TEdit
    Left = 56
    Top = 24
    Width = 57
    Height = 23
    TabOrder = 4
  end
  object EditB: TEdit
    Left = 56
    Top = 53
    Width = 57
    Height = 23
    TabOrder = 5
  end
  object EditEps: TEdit
    Left = 56
    Top = 82
    Width = 57
    Height = 23
    TabOrder = 6
    Text = '0,001'
  end
end
