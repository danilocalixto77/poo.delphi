unit Classe.Pessoa;

interface

type TPessoa = class
    private
      var FNome : string;
      procedure SetNome(const Value: string);
      procedure SetTelefone(const Value: string);
      function GetTelefone: string;
      function GetNome: string;
      var FTelefone : string;
    public
      //atributos/campos não é comum serem declarados como público
      var FRG : string;
      var FCPF : string;
      property Nome : string read GetNome write SetNome;
      property Telefone : string read GetTelefone write SetTelefone;
      constructor Create;
      destructor Destroy;
  end;

implementation

{ TPessoa }
uses SysUtils;

constructor TPessoa.Create;
begin
  Nome := 'Danilo';
  Telefone := '06999999-3535';
end;

destructor TPessoa.Destroy;
begin
  Self.Free;
end;

function TPessoa.GetNome: string;
begin
  Result := UpperCase(FNome);
end;

function TPessoa.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  if not Value.IsEmpty then
    FNome := Value
  else
    raise Exception.Create('Nome não pode ser vazio.');
end;

procedure TPessoa.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

end.
