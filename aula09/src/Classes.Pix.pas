unit Classes.Pix;

interface

uses Classes.Pagamento;

type TPix = class(TPagamento)
     private
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }

     published
       { published declarations }
       function Pagar : string;
     end;

implementation

{ TMyClass }

function TPix.Pagar: string;
begin
  Result := 'Dentro do Pix';
end;

end.
