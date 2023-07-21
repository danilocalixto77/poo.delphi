unit Classes.Audio;

interface

uses Classes.Midia, Modelo.Player;
  type TAudio = class(TMidia, IPlayer)
       private
         { private declarations }
       protected
         { protected declarations }
       public
         { public declarations }
         function Tocar: boolean;
         function Avançar: boolean;
         function Localizar: Integer;
         function Retroceder: boolean;
         function Play: boolean;
         function Stop: boolean;
         function Pause: boolean;
       published
         { published declarations }
       end;

implementation

{ TAudio }

function TAudio.Avançar: boolean;
begin

end;

function TAudio.Localizar: Integer;
begin

end;

function TAudio.Pause: boolean;
begin

end;

function TAudio.Play: boolean;
begin

end;

function TAudio.Retroceder: boolean;
begin

end;

function TAudio.Stop: boolean;
begin

end;

function TAudio.Tocar: boolean;
begin
  Result := True;
end;

end.
