unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Main, MediaWMV;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
fmImageViewer.show();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
WMVPlayer.show();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ShowMessage('The police were notified!');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
ShowMessage('Webcam is not found...');
end;

end.
