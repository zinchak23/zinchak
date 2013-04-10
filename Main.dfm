object fmImageViewer: TfmImageViewer
  Left = 976
  Top = 302
  Width = 614
  Height = 408
  Caption = 'Photologs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object imgPhoto: TImage
    Left = 209
    Top = 41
    Width = 389
    Height = 329
    Align = alClient
    Center = True
    Proportional = True
    Stretch = True
    OnDblClick = bbFullScreenClick
  end
  object pnToolBar: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      598
      41)
    object Label1: TLabel
      Left = 312
      Top = 14
      Width = 35
      Height = 13
      Caption = 'second'
    end
    object chbFitToScreen: TCheckBox
      Left = 16
      Top = 12
      Width = 113
      Height = 17
      Caption = 'write on the screen'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chbFitToScreenClick
    end
    object seInterval: TSpinEdit
      Left = 264
      Top = 12
      Width = 41
      Height = 22
      EditorEnabled = False
      MaxValue = 60
      MinValue = 1
      TabOrder = 1
      Value = 5
      OnChange = seIntervalChange
    end
    object chbSlideShow: TCheckBox
      Left = 176
      Top = 12
      Width = 81
      Height = 17
      Caption = 'Slideshow'
      TabOrder = 2
      OnClick = chbSlideShowClick
    end
    object bbClose: TBitBtn
      Left = 510
      Top = 8
      Width = 83
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      TabOrder = 3
      Kind = bkClose
    end
    object bbFullScreen: TBitBtn
      Left = 376
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Full screen'
      TabOrder = 4
      OnClick = bbFullScreenClick
    end
  end
  object pnNavigation: TPanel
    Left = 0
    Top = 41
    Width = 209
    Height = 329
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      209
      329)
    object dcbDrives: TDriveComboBox
      Left = 4
      Top = 4
      Width = 201
      Height = 19
      DirList = dlbFolders
      TabOrder = 0
    end
    object dlbFolders: TDirectoryListBox
      Left = 4
      Top = 24
      Width = 201
      Height = 161
      FileList = flbFiles
      ItemHeight = 16
      TabOrder = 1
    end
    object flbFiles: TFileListBox
      Left = 4
      Top = 184
      Width = 201
      Height = 145
      Anchors = [akLeft, akTop, akRight, akBottom]
      FileType = [ftReadOnly, ftArchive, ftNormal]
      ItemHeight = 13
      Mask = '*.bmp;*jpg;*.jpeg'
      TabOrder = 2
      OnChange = flbFilesChange
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 136
    Top = 8
  end
end
