program aula12;

uses
  Vcl.Forms,
  View.Principal in 'src\View.Principal.pas' {Form1},
  Classes.Midia in 'src\Classes.Midia.pas',
  Classes.Audio in 'src\Classes.Audio.pas',
  Modelo.Player in 'src\Modelo.Player.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
