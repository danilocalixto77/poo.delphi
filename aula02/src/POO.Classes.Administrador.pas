unit POO.Classes.Administrador;

interface

uses POO.Classes.Usuario;

  type TAdministrador = class(TUsuario)
    //Metodos que s�o representados por procedures
    procedure Excluir;
    procedure Inserir;
    //Ap�s a declara��o dos m�todos/procedures teclar o conjunto Shift+Ctrl+C
  end;

implementation

{ TAdministrador }

procedure TAdministrador.Excluir;
begin

end;

procedure TAdministrador.Inserir;
begin

end;

end.
