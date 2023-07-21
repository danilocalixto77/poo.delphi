program aula13;

uses
  Vcl.Forms,
  View.Principal in 'src\View.Principal.pas' {Form1},
  Classes.Conecao in 'src\Classes.Conecao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
