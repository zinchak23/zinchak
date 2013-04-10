object Form2: TForm2
  Left = 689
  Top = 319
  Width = 253
  Height = 193
  Caption = 'Authorization'
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
    Left = 8
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 49
    Height = 13
    Caption = 'Password:'
  end
  object Label3: TLabel
    Left = 136
    Top = 112
    Width = 95
    Height = 13
    Caption = '(c) Zinchak Evgeniy'
  end
  object Button1: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Enter'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
end
