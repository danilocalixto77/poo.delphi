unit POO.Classes.Usuario;

interface

uses POO.Classes.Pessoa;

  type TUsuario = class(TPessoa)
    NomeAcesso : string;
    Senha: string;
  end;

implementation

end.
