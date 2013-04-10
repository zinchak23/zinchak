unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, Grids, Outline, DirOutln, ExtCtrls,
  StdCtrls, FileCtrl, Spin, Buttons;

type
  TfmImageViewer = class(TForm)
    pnToolBar: TPanel;
    pnNavigation: TPanel;
    dcbDrives: TDriveComboBox;
    dlbFolders: TDirectoryListBox;
    flbFiles: TFileListBox;
    imgPhoto: TImage;
    chbFitToScreen: TCheckBox;
    seInterval: TSpinEdit;
    chbSlideShow: TCheckBox;
    Label1: TLabel;
    Timer1: TTimer;
    bbClose: TBitBtn;
    bbFullScreen: TBitBtn;
    procedure flbFilesChange(Sender: TObject);
    procedure chbFitToScreenClick(Sender: TObject);
    procedure chbSlideShowClick(Sender: TObject);
    procedure seIntervalChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bbFullScreenClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmImageViewer: TfmImageViewer;

implementation

{$R *.dfm}

Uses
  jpeg, FullScreen, Unit1;

procedure TfmImageViewer.flbFilesChange(Sender: TObject);
Var
  Ext:String;
  JP:TJPEGImage;
  Rect:TRect;
begin
  Screen.Cursor:=crAppStart;
Try
  If ((flbFiles.FileName='') And (flbFiles.Count<>0)) Then
  Begin
    flbFiles.ItemIndex:=0;
  End;

  Ext:=ExtractFileExt(flbFiles.FileName);
  If ((Ext='.jpg') Or (Ext='.jpeg')) Then
  Begin
    JP:=TJPEGImage.Create;
    JP.LoadFromFile(flbFiles.FileName);
    imgPhoto.Picture.Assign(JP);
    JP.Free;
  End
  Else If Ext='.bmp' Then
  Begin
    imgPhoto.Picture.LoadFromFile(flbFiles.FileName);
  End
  Else Begin
    Rect.Left:=0; Rect.Top:=0; Rect.Right:=imgPhoto.Width-1; Rect.Bottom:=imgPhoto.Height-1;
    imgPhoto.Picture.Bitmap.Width:=imgPhoto.Width;
    imgPhoto.Picture.Bitmap.Height:=imgPhoto.Height;
    imgPhoto.Picture.Bitmap.Canvas.Brush.Color:=clGray;
    imgPhoto.Picture.Bitmap.Canvas.Brush.Style:=bsSolid;
    imgPhoto.Picture.Bitmap.Canvas.FillRect(Rect);
    imgPhoto.Picture.Bitmap.Canvas.Refresh;
  End;

  fmFullScreen.imgPhoto.Stretch:=imgPhoto.Stretch;
  fmFullScreen.imgPhoto.Picture.Assign(imgPhoto.Picture);
Except
  ShowMessage('Unknown file format!');
End;
  Screen.Cursor:=crDefault;
end;

procedure TfmImageViewer.chbFitToScreenClick(Sender: TObject);
begin
  imgPhoto.Stretch:=chbFitToScreen.Checked;
end;

procedure TfmImageViewer.chbSlideShowClick(Sender: TObject);
begin
  seIntervalChange(Self);
  Timer1.Enabled:=chbSlideShow.Checked;
end;

procedure TfmImageViewer.seIntervalChange(Sender: TObject);
begin
  Timer1.Interval:=seInterval.Value*1000;
end;

procedure TfmImageViewer.Timer1Timer(Sender: TObject);
begin
  If (flbFiles.ItemIndex+1<flbFiles.Count) Then
  Begin
    flbFiles.ItemIndex:=flbFiles.ItemIndex+1;
    flbFilesChange(Self);
  End
  Else If (flbFiles.ItemIndex+1=flbFiles.Count) And (flbFiles.Count>0) Then
  Begin
    flbFiles.ItemIndex:=0;
    flbFilesChange(Self);
  End;
end;

procedure TfmImageViewer.bbFullScreenClick(Sender: TObject);
begin
  fmFullScreen.imgPhoto.Stretch:=imgPhoto.Stretch;
  fmFullScreen.Show;
end;

procedure TfmImageViewer.FormResize(Sender: TObject);
begin
  flbFilesChange(Self);
end;

procedure TfmImageViewer.Button1Click(Sender: TObject);
begin
Form1.show();
end;

end.
