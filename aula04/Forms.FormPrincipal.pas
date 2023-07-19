unit Forms.FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses Classes.Exemplo;

procedure TFormPrincipal.Button1Click(Sender: TObject);
var
  lExemplo : TExemplo;
begin
  lExemplo := TExemplo.Create;
  lExemplo.SetPublicado('OK');

end;

end.
