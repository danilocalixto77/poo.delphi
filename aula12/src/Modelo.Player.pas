unit Modelo.Player;

interface

  {
   - Conver��o Delphi, interfaces come�am com a letra I
   - Toda interface necessita gerar um GUID - como identificador �nico da interface.
   - Para gerar o GUID:
     - Posicione o cursor logo abaixo da declara��o da interface;
     - Tecle : Ctrl + Shift + G
  }
  type
  IPlayer = Interface
  ['{3C987AB5-7FC2-4DD4-9832-D3BDF4141702}']
    function Play: Boolean;
    function Avan�ar: Boolean;
    function Retroceder: Boolean;
    function Stop: Boolean;
    function Pause: Boolean;
    function Localizar: integer;

  End;


implementation

end.
