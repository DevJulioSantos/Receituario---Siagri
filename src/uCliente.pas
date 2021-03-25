unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCliente = class(TForm)
    pnlTop: TPanel;
    lblCLientes: TLabel;
    pnlMid: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlBusca: TPanel;
    rbIdCliente: TRadioButton;
    rbNome: TRadioButton;
    rbCPF: TRadioButton;
    edtBuscar: TEdit;
    btnPesquisar: TBitBtn;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    edtNomeCliente: TEdit;
    edtIdCliente: TEdit;
    edtCPFCliente: TMaskEdit;
    pnlBot: TPanel;
    btnAdicionar: TBitBtn;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtNomeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFClienteKeyPress(Sender: TObject; var Key: Char);
    procedure rbIdClienteClick(Sender: TObject);
    procedure rbNomeClick(Sender: TObject);
    procedure rbCPFClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure ResetarCamposCliente();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

uses uDmPrincipal, uPersistance;

{$R *.dfm}

procedure TfrmCliente.ResetarCamposCliente;
begin
  edtIdCliente.Clear;
  edtIdCliente.Enabled := False;
  edtNomeCliente.Clear;
  edtNomeCliente.Enabled := False;
  edtCPFCliente.Clear;
  edtCPFCliente.Enabled := False;

  btnAdicionar.Enabled := True;
  btnAlterar.Enabled := True;
  btnExcluir.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
end;

procedure TfrmCliente.btnAdicionarClick(Sender: TObject);
begin
  edtNomeCliente.Enabled := True;
  edtNomeCliente.SetFocus;
  edtCPFCliente.Enabled := True;
  btnSalvar.Enabled := True;
  btnCancelar.Enabled := True;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TfrmCliente.btnAlterarClick(Sender: TObject);
begin
  if edtIdCliente.Text = EmptyStr then
  begin
    ShowMessage('Selecione um cliente na grid acima');
    Exit;
  end;

  edtNomeCliente.Enabled := True;
  edtNomeCliente.SetFocus;
  edtCPFCliente.Enabled := True;
  btnSalvar.Enabled := True;
  btnCancelar.Enabled := True;
  btnAdicionar.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TfrmCliente.btnCancelarClick(Sender: TObject);
begin
  ResetarCamposCliente;
end;

procedure TfrmCliente.btnExcluirClick(Sender: TObject);
begin
 if edtIdCliente.Text = EmptyStr then
  begin
    ShowMessage('Selecione um cliente na grid acima');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir permanentemente esse cliente?', 'Atenção', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    Persistence.ExcluirCliente(StrToInt(edtIdCliente.Text));
    btnPesquisarClick(nil);
    ResetarCamposCliente
  end;
end;

procedure TfrmCliente.btnPesquisarClick(Sender: TObject);
begin
  try
    dmPrincipal.qryClientes.SQL.Text := '';
    dmPrincipal.qryClientes.SQL.Text := 'SELECT * FROM CLIENTES ';

    if edtBuscar.Text <> '' then
    begin
      if rbIdCliente.Checked then
        dmPrincipal.qryClientes.SQL.Text := dmPrincipal.qryClientes.SQL.Text + 'WHERE ID_CLIENTE = ' + edtBuscar.Text
      else if rbNome.Checked then
        dmPrincipal.qryClientes.SQL.Text := dmPrincipal.qryClientes.SQL.Text + 'WHERE UPPER(NOME) LIKE ''%' + UpperCase(edtBuscar.Text) + '%'''
      else if rbCPF.Checked then
        dmPrincipal.qryClientes.SQL.Text := dmPrincipal.qryClientes.SQL.Text + 'WHERE CPF LIKE ''%' + UpperCase(edtBuscar.Text) + '%'''
    end;

    dmPrincipal.qryClientes.SQL.Text := dmPrincipal.qryClientes.SQL.Text + ' ORDER BY ID_CLIENTE';
    dmPrincipal.qryClientes.Open();

  except
   on e:exception do
   begin
     ShowMessage('Erro ao pesquisar pessoas. - Erro: ' + e.Message);
   end;
  end;
end;

procedure TfrmCliente.btnSalvarClick(Sender: TObject);
begin
  if edtIdCliente.Text <> EmptyStr then
  begin
    Persistence.AlterarCliente(StrToInt(edtIdCliente.Text), edtNomeCliente.Text, edtCPFCliente.Text);
    ShowMessage('Cliente alterado com sucesso!');
  end
  else
  begin
    if edtNomeCliente.Text = EmptyStr then
    begin
      ShowMessage('O campo "Nome" e "CPF" devem ser preenchidos');
      Exit
    end;

    if Length(edtCPFCliente.Text) < 11 then
    begin
      ShowMessage('O campo "CPF" deve conter 11 caracteres');
      Exit;
    end;

    if Persistence.ValidarCPFExistente(edtCPFCliente.Text) then
    begin
      ShowMessage('CPF já existente na base de dados');
      edtCPFCliente.SetFocus;
      Exit;
    end;

    Persistence.InserirCliente(edtNomeCliente.Text, edtCPFCliente.text);
    ShowMessage('Cliente inserido com sucesso!');
  end;
  ResetarCamposCliente;
  btnPesquisarClick(nil);
end;

procedure TfrmCliente.DBGrid1DblClick(Sender: TObject);
begin
  edtIdCliente.Text   := dmPrincipal.qryClientes.FieldByName('ID_CLIENTE').AsString;
  edtNomeCliente.Text := dmPrincipal.qryClientes.FieldByName('NOME').AsString;
  edtCPFCliente.Text  := dmPrincipal.qryClientes.FieldByName('CPF').AsString;
end;

procedure TfrmCliente.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
 if rbIdCliente.Checked then
  begin
    if not ( Key in['0'..'9',',', #8] ) then
    Key := #0;
  end
  else if (rbNome.Checked or rbCPF.Checked) then
  begin
    if not (Key in['A'..'Z',#8]) and not (Key in['a'..'z',#8]) and not (Key in ['´', '~', ' ', #8]) then
    Key := #0;
  end;
end;

procedure TfrmCliente.edtCPFClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( Key in['0'..'9',',', #8] ) then
  Key := #0;
end;

procedure TfrmCliente.edtNomeClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['A'..'Z',#8]) and not (Key in['a'..'z',#8]) and not (Key in ['´', '~', ' ', #8]) then
  Key := #0;
end;

procedure TfrmCliente.rbCPFClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;
  rbIdCliente.Checked := False;
  rbNome.Checked := False;
end;

procedure TfrmCliente.rbIdClienteClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;
  rbNome.Checked := False;
  rbCPF.Checked := False;
end;

procedure TfrmCliente.rbNomeClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;
  rbIdCliente.Checked := False;
  rbCPF.Checked := False;
end;

end.
