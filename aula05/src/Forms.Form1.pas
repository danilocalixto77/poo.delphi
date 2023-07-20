unit Forms.Form1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classe.Pessoa;

procedure TForm1.Button1Click(Sender: TObject);
var
  lPessoa : TPessoa;
begin
  lPessoa := TPessoa.Create;
  lPessoa.Nome := Edit1.Text;
  ShowMessage(lPessoa.Nome);

end;

procedure TForm1.Button2Click(Sender: TObject);
var lPessoa : TPessoa;
begin
  lPessoa := TPessoa.Create;
  ShowMessage(lPessoa.Nome);

end;

end.
