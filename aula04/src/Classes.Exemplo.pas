unit Classes.Exemplo;

interface

type
  TExemplo = class

  strict private
    { stric private declarations - � estritamente privado, sem acesso das classes amigas.}
    FPrivado : string;
  private
    { private declarations - vis�vel para a classe e classes amigas. Classes amigas s�o as que est�o dentro da mesma unit }

  protected
    { protected declarations - visivel para a classe, classes amigas e tamb�m os herdeiros da classe}
    FProtegido : string;
  public
    { public declarations - vis�vel para qualquer um que referencie a classe }
    FPublico : string;
    FPublicada : string;
    procedure SetPublicado(const Value: string);
    function GetPrivado : string; //function/metodo referenciando ao atributo FPrivado para permitir guardar valores fora da unit, pois o encapsulamento n�o permite que seja informado direto na vari�vel

  published
    { published declarations - vis�vel e publicada no object inspector }
    property Publicada : string read FPublicada write SetPublicado;

  end;

  TSubExemplo = class(TExemplo)

  public
    function GetProtegidoExemplo : string;
    function VerPrivadoExemplo : string;
  end;

  TClasseAmiga = class
    Exe : TExemplo;
  public
    function AmigaVe : string;
  end;

implementation

{ TExemplo }

function TExemplo.GetPrivado: string;
begin
  Result := FPrivado;
end;

procedure TExemplo.SetPublicado(const Value: string);
begin
  FPublicada := Value;
end;

{ TSubExemplo }

function TSubExemplo.GetProtegidoExemplo: string;
begin
   Result := FProtegido;
end;

function TSubExemplo.VerPrivadoExemplo: string;
begin
  //Result := FPrivado;
end;

{ TClasseAmiga }

function TClasseAmiga.AmigaVe: string;
begin
  Self.Exe;
end;

end.
