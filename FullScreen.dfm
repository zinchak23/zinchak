object fmFullScreen: TfmFullScreen
  Left = 917
  Top = 223
  BorderStyle = bsNone
  Caption = #1055#1086#1083#1085#1086#1101#1082#1088#1072#1085#1085#1099#1081' '#1088#1077#1078#1080#1084
  ClientHeight = 606
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgPhoto: TImage
    Left = 0
    Top = 0
    Width = 862
    Height = 606
    Align = alClient
    AutoSize = True
    Center = True
    Proportional = True
    OnDblClick = imgPhotoDblClick
  end
end
