unit Classe.Pessoa;

interface

type TPessoa = class
    private
      var FNome : string;
    procedure SetNome(const Value: string);
    procedure SetTelefone(const Value: string);
    function GetTelefone: string;
      var FTelefone : string;
    public
      //atributos/campos não é comum serem declarados como público
      var FRG : string;
      var FCPF : string;
      property Nome : string read FNome write SetNome;
      property Telefone : string read GetTelefone write SetTelefone;
  end;

implementation

{ TPessoa }

function TPessoa.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TPessoa.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

end.
