program MyRestApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  RESTApp in 'RESTApp.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
