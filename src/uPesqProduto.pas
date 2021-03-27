unit uPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmPesqProduto = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlMid: TPanel;
    Panel1: TPanel;
    grdProduto: TDBGrid;
    Panel3: TPanel;
    btnCancelar: TBitBtn;
    rbIdProduto: TRadioButton;
    rbNomeProduto: TRadioButton;
    rbControlado: TRadioButton;
    edtBuscar: TEdit;
    btnPesquisar: TBitBtn;
    cbControlado: TComboBox;
    btnConfirmar: TBitBtn;
    procedure rbIdProdutoClick(Sender: TObject);
    procedure rbNomeProdutoClick(Sender: TObject);
    procedure rbControladoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure grdProdutoDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProduto: TfrmPesqProduto;

implementation

uses uDmPrincipal, uPedido;

{$R *.dfm}

procedure TfrmPesqProduto.btnCancelarClick(Sender: TObject);
begin
  dmPrincipal.qryProdutos.Close;
  frmPesqProduto.Close;
end;

procedure TfrmPesqProduto.btnConfirmarClick(Sender: TObject);
begin
  frmPedido.edtIdProduto.Text := dmPrincipal.qryProdutos.FieldByName('ID_PRODUTO').AsString;
  frmPedido.edtNomeProduto.Text := dmPrincipal.qryProdutos.FieldByName('NOME').AsString;
  frmPedido.edtValor.Text := dmPrincipal.qryProdutos.FieldByName('VALOR').AsString;

  if dmPrincipal.qryProdutos.FieldByName('CONTROLADO').AsString = 'S' then
    frmPedido.cbProdControladoItem.Checked := True
  else
    frmPedido.cbProdControladoItem.Checked := False;

  frmPesqProduto.Close;
end;

procedure TfrmPesqProduto.btnPesquisarClick(Sender: TObject);
begin
  try
    dmPrincipal.qryProdutos.SQL.Text := '';
    dmPrincipal.qryProdutos.SQL.Text := 'SELECT * FROM PRODUTOS ';

    if edtBuscar.Text <> '' then
    begin
      if rbIdProduto.Checked then
        dmPrincipal.qryProdutos.SQL.Text := dmPrincipal.qryProdutos.SQL.Text + 'WHERE ID_PRODUTO = ' + edtBuscar.Text
      else if rbNomeProduto.Checked then
        dmPrincipal.qryProdutos.SQL.Text := dmPrincipal.qryProdutos.SQL.Text + 'WHERE UPPER(NOME) LIKE ''%' + UpperCase(edtBuscar.Text) + '%'''
      else if rbControlado.Checked then
        dmPrincipal.qryProdutos.SQL.Text := dmPrincipal.qryProdutos.SQL.Text + 'WHERE CONTROLADO = ' + Copy(cbControlado.Text, 1, 1);
    end;

    dmPrincipal.qryProdutos.SQL.Text := dmPrincipal.qryProdutos.SQL.Text + ' ORDER BY ID_PRODUTO';
    dmPrincipal.qryProdutos.Open();

  except
   on e:exception do
   begin
     ShowMessage('Erro ao pesquisar produto. - Erro: ' + e.Message);
   end;
  end;
end;

procedure TfrmPesqProduto.grdProdutoDblClick(Sender: TObject);
begin
  frmPedido.edtIdProduto.Text := dmPrincipal.qryProdutos.FieldByName('ID_PRODUTO').AsString;
  frmPedido.edtNomeProduto.Text := dmPrincipal.qryProdutos.FieldByName('NOME').AsString;
  frmPedido.edtValor.Text := dmPrincipal.qryProdutos.FieldByName('VALOR').AsString;

  if dmPrincipal.qryProdutos.FieldByName('NOME').AsString = 'S' then
    frmPedido.cbProdControladoItem.Checked := True
  else
    frmPedido.cbProdControladoItem.Checked := False;
end;

procedure TfrmPesqProduto.rbControladoClick(Sender: TObject);
begin
  edtBuscar.Clear;
  edtBuscar.Visible := False;
  cbControlado.Visible := True;
  rbIdProduto.Checked := False;
  rbNomeProduto.Checked := False;
end;

procedure TfrmPesqProduto.rbIdProdutoClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;
  edtBuscar.Visible := True;
  cbControlado.Visible := False;
  rbNomeProduto.Checked := False;
  rbControlado.Checked := False;
end;

procedure TfrmPesqProduto.rbNomeProdutoClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;
  edtBuscar.Visible := True;
  cbControlado.Visible := False;
  rbIdProduto.Checked := False;
  rbControlado.Checked := False;
end;

end.
