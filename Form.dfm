object Form1: TForm1
  Left = 192
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 307
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 33
    Height = 13
    Caption = #1057#1090#1077#1082' 1'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 33
    Height = 13
    Caption = #1057#1090#1077#1082' 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 87
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1089#1090#1077#1082' 1'
  end
  object Label4: TLabel
    Left = 32
    Top = 200
    Width = 90
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1089#1090#1077#1082' 2 '
  end
  object Stack1Edit: TEdit
    Left = 32
    Top = 48
    Width = 449
    Height = 21
    TabOrder = 0
  end
  object Stack2Edit: TEdit
    Left = 32
    Top = 88
    Width = 449
    Height = 21
    TabOrder = 1
  end
  object TaskButton: TButton
    Left = 32
    Top = 120
    Width = 73
    Height = 25
    Caption = #1047#1072#1076#1072#1095#1072
    TabOrder = 2
    OnClick = TaskButtonClick
  end
  object ExitButton: TButton
    Left = 496
    Top = 280
    Width = 73
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = ExitButtonClick
  end
  object Result1Edit: TEdit
    Left = 32
    Top = 176
    Width = 449
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Result2Edit: TEdit
    Left = 32
    Top = 216
    Width = 449
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object IntRadioButton: TRadioButton
    Left = 32
    Top = 8
    Width = 97
    Height = 17
    Caption = #1062#1077#1083#1099#1077' '#1095#1080#1089#1083#1072
    Checked = True
    TabOrder = 6
    TabStop = True
  end
  object StringRadioButton: TRadioButton
    Left = 152
    Top = 8
    Width = 97
    Height = 17
    Caption = #1057#1090#1088#1086#1082#1080
    TabOrder = 7
  end
  object ClearButton: TButton
    Left = 408
    Top = 128
    Width = 73
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 8
    OnClick = ClearButtonClick
  end
end
