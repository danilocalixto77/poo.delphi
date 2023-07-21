unit Classes.Exemplo;

interface

type
  TExemplo = class

  strict private
    { stric private declarations - é estritamente privado, acessível somente a propria classe.}
    FPrivado : string;

    strict protected
    { stric protected declarations - é estritamente protegida, acessível a propria classe e as herdeiras}
      FProtegido : string;

  private
    { private declarations - visível para a classe e classes amigas. Classes amigas são as que estão dentro da mesma unit }

  protected
    { protected declarations - visivel para a classe, classes amigas e também os herdeiros da classe}

  public
    { public declarations - visível para qualquer um que referencie a classe }
    FPublico : string;
    FPublicada : string;
    procedure SetPublicado(const Value: string);
    function GetPrivado : string; //function/metodo referenciando ao atributo FPrivado para permitir guardar valores fora da unit, pois o encapsulamento não permite que seja informado direto na variável

  published
    { published declarations - visível e publicada no object inspector }
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
