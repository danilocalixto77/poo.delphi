program Aula05;

uses
  Vcl.Forms,
  Forms.Form1 in 'src\Forms.Form1.pas' {Form1},
  Classe.Pessoa in 'src\Classe.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
