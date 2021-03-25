unit uTecnicoAgricola;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmTecnicoAgricola = class(TForm)
    pnlBot: TPanel;
    btnAdicionar: TBitBtn;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    pnlMid: TPanel;
    pnlBusca: TPanel;
    rbIdTecnico: TRadioButton;
    rbNomeTecnico: TRadioButton;
    rbCPF: TRadioButton;
    edtBuscar: TEdit;
    btnPesquisar: TBitBtn;
    pnlGrid: TPanel;
    grdTecnicos: TDBGrid;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNomeTecnico: TEdit;
    edtIdTecnico: TEdit;
    pnlTop: TPanel;
    lblCLientes: TLabel;
    rbNumRegistro: TRadioButton;
    edtCPF: TEdit;
    edtNumRegistro: TEdit;
    Label4: TLabel;
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure rbIdTecnicoClick(Sender: TObject);
    procedure rbNomeTecnicoClick(Sender: TObject);
    procedure rbCPFClick(Sender: TObject);
    procedure rbNumRegistroClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtNomeTecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumRegistroKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure grdTecnicosDblClick(Sender: TObject);
  private
    procedure ResetarCamposTecnico;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTecnicoAgricola: TfrmTecnicoAgricola;

implementation

uses uDmPrincipal, uPersistance;

{$R *.dfm}

procedure TfrmTecnicoAgricola.btnAdicionarClick(Sender: TObject);
begin
  edtNomeTecnico.Enabled := True;
  edtCPF.Enabled := True;
  edtNumRegistro.Enabled := True;

  btnSalvar.Enabled :=  True;
  btnCancelar.Enabled := True;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
end;

procedure TfrmTecnicoAgricola.btnAlterarClick(Sender: TObject);
begin
  if edtIdTecnico.Text = EmptyStr then
  begin
    ShowMessage('Selecione um técnico na grid acima');
    Exit;
  end;

  edtNomeTecnico.Enabled := True;
  edtCPF.Enabled := True;
  edtNumRegistro.Enabled := True;

  btnSalvar.Enabled :=  True;
  btnCancelar.Enabled := True;
  btnAdicionar.Enabled := False;
  btnExcluir.Enabled := False
end;

procedure TfrmTecnicoAgricola.btnExcluirClick(Sender: TObject);
begin
  if edtIdTecnico.Text = EmptyStr then
  begin
    ShowMessage('Selecione um técnico na grid acima');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir permanentemente esse técnico?', 'Atenção', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    Persistence.ExcluirTecnicoAgricola(StrToInt(edtIdTecnico.Text));
    btnPesquisarClick(nil);
    ResetarCamposTecnico
  end;
end;

procedure TfrmTecnicoAgricola.btnPesquisarClick(Sender: TObject);
begin
  try
    dmPrincipal.qryTenicosAgricola.SQL.Text := '';
    dmPrincipal.qryTenicosAgricola.SQL.Text := 'SELECT * FROM TECNICO_AGRICOLA ';

    if edtBuscar.Text <> '' then
    begin
      if rbIdTecnico.Checked then
        dmPrincipal.qryTenicosAgricola.SQL.Text := dmPrincipal.qryTenicosAgricola.SQL.Text + 'WHERE ID_TECNICO_AGRICOLA = ' + edtBuscar.Text
      else if rbNomeTecnico.Checked then
        dmPrincipal.qryTenicosAgricola.SQL.Text := dmPrincipal.qryTenicosAgricola.SQL.Text + 'WHERE UPPER(NOME) LIKE ''%' + UpperCase(edtBuscar.Text) + '%'''
      else if rbCPF.Checked then
        dmPrincipal.qryTenicosAgricola.SQL.Text := dmPrincipal.qryTenicosAgricola.SQL.Text + 'WHERE CPF LIKE ''%' + UpperCase(edtBuscar.Text) + '%'''
      else if rbNumRegistro.Checked then
        dmPrincipal.qryTenicosAgricola.SQL.Text := dmPrincipal.qryTenicosAgricola.SQL.Text + 'WHERE NUMERO_REGISTRO LIKE ''%' + UpperCase(edtBuscar.Text) + '%'''
    end;

    dmPrincipal.qryTenicosAgricola.SQL.Text := dmPrincipal.qryTenicosAgricola.SQL.Text + ' ORDER BY ID_TECNICO_AGRICOLA';
    dmPrincipal.qryTenicosAgricola.Open();

  except
   on e:exception do
   begin
     ShowMessage('Erro ao pesquisar produto. - Erro: ' + e.Message);
   end;

  end;
end;

procedure TfrmTecnicoAgricola.btnSalvarClick(Sender: TObject);
begin
  if edtIdTecnico.Text = EmptyStr then
  begin
    if (edtNomeTecnico.Text = EmptyStr) or (edtCPF.Text = EmptyStr) or (edtNumRegistro.Text = EmptyStr) then
    begin
      ShowMessage('Os campos "Nome", "CPF" e "Número do Registro" devem ser preenchidos.');
      Exit
    end;

    Persistence.InserirTecnicoAgricola(edtNomeTecnico.Text, edtCPF.Text, StrToInt(edtNumRegistro.Text));
    ShowMessage('Técnico inserido com sucesso!');
  end
  else
  begin
    Persistence.AlterarTecnicoAgricola(edtNomeTecnico.Text, edtCPF.Text, StrToInt(edtNumRegistro.Text), StrToInt(edtIdTecnico.Text));
    ShowMessage('Técnico alterado com sucesso!');
  end;

  ResetarCamposTecnico;
  btnPesquisarClick(nil);
end;

procedure TfrmTecnicoAgricola.ResetarCamposTecnico;
begin
  edtIdTecnico.Clear;
  edtIdTecnico.Enabled := False;
  edtNomeTecnico.Clear;
  edtNomeTecnico.Enabled := False;
  edtCPF.Clear;
  edtCPF.Enabled := False;
  edtNumRegistro.Clear;
  edtNumRegistro.Enabled := False;
  btnAdicionar.Enabled := True;
  btnAlterar.Enabled := True;
  btnExcluir.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;
end;

procedure TfrmTecnicoAgricola.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if rbIdTecnico.Checked or rbCPF.Checked or rbNumRegistro.Checked then
  begin
    if not ( Key in['0'..'9',',', #8] ) then
    Key := #0;
  end
  else if rbNomeTecnico.Checked then
  begin
    if not (Key in['A'..'Z',#8]) and not (Key in['a'..'z',#8]) and not (Key in ['´', '~', ' ', #8]) then
    Key := #0;
  end;
end;

procedure TfrmTecnicoAgricola.edtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( Key in['0'..'9', #8] ) then
  Key := #0;
end;

procedure TfrmTecnicoAgricola.edtNomeTecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['A'..'Z',#8]) and not (Key in['a'..'z',#8]) and not (Key in ['´', '~', ' ', #8]) then
  Key := #0;
end;

procedure TfrmTecnicoAgricola.edtNumRegistroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not ( Key in['0'..'9', #8] ) then
  Key := #0;
end;

procedure TfrmTecnicoAgricola.grdTecnicosDblClick(Sender: TObject);
begin
  edtIdTecnico.Text   := dmPrincipal.qryTenicosAgricola.FieldByName('ID_TECNICO_AGRICOLA').AsString;
  edtNomeTecnico.Text := dmPrincipal.qryTenicosAgricola.FieldByName('NOME').AsString;
  edtCPF.Text         := dmPrincipal.qryTenicosAgricola.FieldByName('CPF').AsString;
  edtNumRegistro.Text := dmPrincipal.qryTenicosAgricola.FieldByName('NUMERO_REGISTRO').AsString;
end;

procedure TfrmTecnicoAgricola.rbCPFClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;

  rbNomeTecnico.Checked := False;
  rbIdTecnico.Checked := False;
  rbNumRegistro.Checked := False;
end;

procedure TfrmTecnicoAgricola.rbIdTecnicoClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;

  rbNomeTecnico.Checked := False;
  rbCPF.Checked := False;
  rbNumRegistro.Checked := False;
end;

procedure TfrmTecnicoAgricola.rbNomeTecnicoClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;

  rbIdTecnico.Checked := False;
  rbCPF.Checked := False;
  rbNumRegistro.Checked := False;
end;

procedure TfrmTecnicoAgricola.rbNumRegistroClick(Sender: TObject);
begin
  edtBuscar.Enabled := True;
  edtBuscar.Clear;

  rbNomeTecnico.Checked := False;
  rbCPF.Checked := False;
  rbIdTecnico.Checked := False;
end;

end.
