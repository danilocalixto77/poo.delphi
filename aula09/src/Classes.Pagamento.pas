unit Classes.Pagamento;

interface

type TPagamento = class
     private
    FValor: double;
    FMensagem: string;
    procedure SetMensage(const Value: string);
    procedure SetValor(const Value: double);
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }

     published
       { published declarations }
       property Valor : double read FValor write SetValor;
       property Mensagem : string read FMensagem write SetMensage;

       //A declaraçao do método como virtual permite modifiação tanto na classe mãe como nas filhas.
       //function Pagar : string; virtual;
       //Quando inserida a declaração o abstract, será permitido implementaçõoes a alterações somente nas filhas
       //inclusive a declaração da implementação abaixo deve ser retirada da classe mãe.
       function Pagar : string; virtual; abstract;
     end;

implementation

{ TPagamento }

{
function TPagamento.Pagar: string;
begin
  Result := 'Dentro de Pagamento';
end;
}

procedure TPagamento.SetMensage(const Value: string);
begin
  FMensagem := Value;
end;

procedure TPagamento.SetValor(const Value: double);
begin
  FValor := Value;
end;

end.
