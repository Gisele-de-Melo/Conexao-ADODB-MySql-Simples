//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close; //Fecha a consulta caso esteja aberta
  ADOQuery1.SQL.Text := 'SELECT * FROM city'; //Define a consulta na tabela city para trazer todos os registros
  ADOQuery1.Open;// Abre a consulta que será exibida na dbgrid
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOConnection1.Connected := False; //Fecha a conexão ao fechar o formulário
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Connected := False; //Fecha a conexão caso esteja aberta
  ADOConnection1.Connected := True; //Abre a conexão
end;

end.
