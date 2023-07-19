program Aula02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  POO.Classes.Pessoa in 'POO.Classes.Pessoa.pas',
  POO.Classes.Cliente in 'POO.Classes.Cliente.pas',
  POO.Classes.Usuario in 'POO.Classes.Usuario.pas',
  POO.Classes.Administrador in 'POO.Classes.Administrador.pas';
var
  Pessoa : TPessoa;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    Pessoa := TPessoa.Create;
    Writeln('Digite o nome da pessoa:');
    Readln(Pessoa.Nome);
    Writeln('O nome da pessoa é:' + Pessoa.Nome);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
