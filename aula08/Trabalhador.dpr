program Trabalhador;

uses
  Vcl.Forms,
  View.Form1 in 'src\View.Form1.pas' {Form1},
  Classes.Trabalhador in 'src\Classes.Trabalhador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
