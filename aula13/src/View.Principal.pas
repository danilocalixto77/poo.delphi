unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classes.Conecao;

procedure TForm1.Button1Click(Sender: TObject);
var
  BD : TConexao;
begin
  if TConexao.VerificaBD then
  begin
    BD := TConexao.Create;
    BD.EnderecoBD := EmptyStr;
    ShowMessage('Objeto criado!');
  end
  else
    raise Exception.Create('Não há um arquivo para conexão!');

end;

end.
