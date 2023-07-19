program Aula04;

uses
  Vcl.Forms,
  Forms.FormPrincipal in 'Forms.FormPrincipal.pas' {FormPrincipal},
  Classes.Exemplo in 'src\Classes.Exemplo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
