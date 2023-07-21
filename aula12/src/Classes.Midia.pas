unit Classes.Midia;

interface

uses Modelo.Player;
  {- Implementando a interface na classe:
   - A classe por padr�o se n�o for herdar de uma classe m�e, n�o necessita ser
   - declarada. Pois o Delphi implicitamente identifica que est� herdando TObject.
   - E no Delphi n�o � permitido herdar mais de uma classe, todos os demais s�o
     implementa��es.
   - Desta forma para declarar a interface requer que siga alguns padr�es. Informar
     a classe que est� herdando e em seguida a interface.
   - type TClasse = class(TObject, IInterface)
   - Contudo declarando da forma acima, ainda h� m�todos que n�o pertencem a classe m�e
     que caso a declara��o seja feita (TObject, IInterface) ir� solicitar sua implementa��o.
   - Os m�todos s�o os seguinte:
     - QueryInterface
     - _AddRef
     - _Release
   - Para solucionar este problema o ideal � declar nos par�metros da classe da
     seguinte forma:
   - type TClasse = class(TInterfacedObject)
   - Desta forma esta classe TInterfacedObject se encarrega de implemntar os m�todos
     que estavam faltando que pertencem a IInterface e faz ao mesmo a declara��o
     de TObject como classe m�e.
  }
  type TMidia = class(TInterfacedObject)
       private
         FNomeArquivo: string;
         FTipoArquivo: string;
         procedure SetNomeArquivo(const Value: string);
         procedure SetTipoArquivo(const Value: string);
         { private declarations }
       protected
         { protected declarations }
       public
         { public declarations }
         
       published
         { published declarations }
         property TipoArquivo : string read FTipoArquivo write SetTipoArquivo;
         property NomeArquivo : string read FNomeArquivo write SetNomeArquivo;
         function Avancar : integer; virtual; abstract;
       end;

implementation

{ TMidia }

procedure TMidia.SetNomeArquivo(const Value: string);
begin
  FNomeArquivo := Value;
end;

procedure TMidia.SetTipoArquivo(const Value: string);
begin
  FTipoArquivo := Value;
end;

end.