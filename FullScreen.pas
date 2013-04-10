unit FullScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfmFullScreen = class(TForm)
    imgPhoto: TImage;
    procedure FormShow(Sender: TObject);
    procedure imgPhotoDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFullScreen: TfmFullScreen;

implementation

{$R *.dfm}

procedure TfmFullScreen.FormShow(Sender: TObject);
begin
  Width:=Screen.Width;
  Height:=Screen.Height;
end;

procedure TfmFullScreen.imgPhotoDblClick(Sender: TObject);
begin
  Hide;
end;

procedure TfmFullScreen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key=VK_ESCAPE Then Hide;
end;

end.
