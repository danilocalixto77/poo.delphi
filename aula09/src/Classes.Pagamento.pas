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

       //A declara�ao do m�todo como virtual permite modifia��o tanto na classe m�e como nas filhas.
       //function Pagar : string; virtual;
       //Quando inserida a declara��o o abstract, ser� permitido implementa��oes a altera��es somente nas filhas
       //inclusive a declara��o da implementa��o abaixo deve ser retirada da classe m�e.
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
