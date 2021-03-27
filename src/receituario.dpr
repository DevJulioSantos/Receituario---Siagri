program receituario;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDmPrincipal in 'uDmPrincipal.pas' {dmPrincipal: TDataModule},
  uPersistance in 'uPersistance.pas',
  uProduto in 'uProduto.pas' {frmProdutos},
  uTecnicoAgricola in 'uTecnicoAgricola.pas' {frmTecnicoAgricola},
  uCliente in 'uCliente.pas' {frmCliente},
  uPedido in 'uPedido.pas' {frmPedido},
  uPesqCliente in 'uPesqCliente.pas' {frmPesqCliente},
  uPesqProduto in 'uPesqProduto.pas' {frmPesqProduto},
  uReceita in 'uReceita.pas' {frmReceita},
  uPesqTecnico in 'uPesqTecnico.pas' {frmPesqTecnico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPedido, frmPedido);
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  Application.CreateForm(TfrmPesqProduto, frmPesqProduto);
  Application.CreateForm(TfrmReceita, frmReceita);
  Application.CreateForm(TfrmPesqTecnico, frmPesqTecnico);
  Application.Run;
end.
