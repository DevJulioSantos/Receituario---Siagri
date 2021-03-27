unit uReceita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmReceita = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlMid: TPanel;
    Panel1: TPanel;
    rbIdProduto: TRadioButton;
    rbNomeProduto: TRadioButton;
    edtBuscar: TEdit;
    btnPesquisar: TBitBtn;
    Panel3: TPanel;
    btnCancelar: TBitBtn;
    btnAssinar: TBitBtn;
    pnlGrid: TPanel;
    grdProduto: TDBGrid;
    edtCodTecnico: TEdit;
    edtNomeTecnico: TEdit;
    btnPesqTecnico: TButton;
    edtCodReceita: TEdit;
    edtCodPedido: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPesqTecnicoClick(Sender: TObject);
    procedure btnAssinarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure grdProdutoDblClick(Sender: TObject);
  private
    procedure LimparCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceita: TfrmReceita;

implementation

uses uDmPrincipal, uPersistance, uPesqTecnico;

{$R *.dfm}

procedure TfrmReceita.btnCancelarClick(Sender: TObject);
begin
  LimparCampos;
end;

procedure TfrmReceita.btnAssinarClick(Sender: TObject);
begin
  if edtCodReceita.Text = EmptyStr then
  begin
    ShowMessage('Selecione uma receita na grid acima.');
    Exit;
  end;

  if edtCodTecnico.Text = EmptyStr then
  begin
    ShowMessage('Selecione uma técnico no campo acima.');
    Exit;
  end;

  Persistence.AssinarReceita(StrToInt(edtCodPedido.Text), StrToInt(edtCodTecnico.Text));
  Persistence.AprovarPedido(StrToInt(edtCodPedido.Text));
  ShowMessage('Receia assinada! Pedido ' +edtCodPedido.Text+ ' Aprovado!');

  LimparCampos;
end;

procedure TfrmReceita.LimparCampos;
begin
  edtCodTecnico.Text := EmptyStr;
  edtNomeTecnico.Text := EmptyStr;
  edtCodReceita.Text := EmptyStr;
  edtCodPedido.Text := EmptyStr;
end;

procedure TfrmReceita.btnPesqTecnicoClick(Sender: TObject);
begin
  if TForm(frmPesqTecnico) = nil then
  begin
    Application.CreateForm(TfrmPesqTecnico, TForm(frmPesqTecnico));
  end;
  TForm(frmPesqTecnico).ShowModal;
end;

procedure TfrmReceita.btnPesquisarClick(Sender: TObject);
begin
  try
    dmPrincipal.qryReceitas.Close;
    dmPrincipal.qryReceitas.SQL.Text := '';
    dmPrincipal.qryReceitas.SQL.Text := 'SELECT * FROM RECEITAS ';

    if edtBuscar.Text <> '' then
    begin
      dmPrincipal.qryReceitas.SQL.Text := dmPrincipal.qryReceitas.SQL.Text + 'WHERE ID_RECEITA = ' + edtBuscar.Text;
      dmPrincipal.qryReceitas.SQL.Text := dmPrincipal.qryReceitas.SQL.Text + 'WHERE ID_TECNICO_AGRICOLA = ' + edtBuscar.Text;
    end;

    dmPrincipal.qryReceitas.SQL.Text := dmPrincipal.qryReceitas.SQL.Text + ' ORDER BY ID_RECEITA';
    dmPrincipal.qryReceitas.Open();

  except
    on e:exception do
    begin
     ShowMessage('Erro ao pesquisar receita. - Erro: ' + e.Message);
    end;
  end;
end;

procedure TfrmReceita.grdProdutoDblClick(Sender: TObject);
begin
  edtCodReceita.Text := dmPrincipal.qryReceitas.FieldByName('ID_RECEITA').AsString;
  edtCodPedido.Text  := dmPrincipal.qryReceitas.FieldByName('ID_PEDIDO').AsString;
  btnPesqTecnico.Enabled := True;
end;

end.
