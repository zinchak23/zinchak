program ImageViewer;

uses
  Forms,
  Main in 'Main.pas' {fmImageViewer},
  FullScreen in 'FullScreen.pas' {fmFullScreen},
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  MediaWMV in '..\..\..\mediaExapmle\mediaExapmle\MediaWMV.pas' {WMVPlayer};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'zinchak_IPZ';
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfmImageViewer, fmImageViewer);
  Application.CreateForm(TfmFullScreen, fmFullScreen);
  Application.CreateForm(TWMVPlayer, WMVPlayer);
  Application.Run;
end.
