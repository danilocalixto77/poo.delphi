unit POO.Classes.Cliente;

interface

uses POO.Classes.Pessoa;

  type TCliente = class(TPessoa)
    CNPJ : string;
    RazaoSocial : string;
  end;

implementation

end.
