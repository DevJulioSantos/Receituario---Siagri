unit uPersistance;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPersistence = class(TObject)
    private

    public
      procedure InserirCliente(pNome, pCPF: String);
      procedure ExcluirCliente(pIdCliente: Integer);
      procedure AlterarCliente(pIdCliente: Integer; pNome, pCPF: String);

      procedure InserirProduto(pNome: String; pValor: Double; pControlado: String);
      procedure ExcluirProduto(pIdPrduto: Integer);
      procedure AlterarProduto(pIdProduto: Integer; pNome: String; pValor: Double; pControlado: String);

      procedure InserirTecnicoAgricola(pNome, pCPF: String; pNumRegistro: Integer);
      procedure ExcluirTecnicoAgricola(pIdTecnico: Integer);
      procedure AlterarTecnicoAgricola(pNome, pCPF: String; pNumRegistro, pIdTecnico: Integer);

      function ValidarCPFExistente(pCPF: String): Boolean;
  end;

var
  Persistence: TPersistence;

implementation

uses
  uDmPrincipal;

{ TPersistence }

procedure TPersistence.AlterarCliente(pIdCliente: Integer; pNome, pCPF: String);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('UPDATE CLIENTES SET NOME = :NOME, CPF = :CPF WHERE ID_CLIENTE = :ID_CLIENTE;');

      vQry.ParamByName('NOME').AsString := pNome;
      vQry.ParamByName('CPF').AsString  := pCPF;	  
      vQry.ParamByName('ID_CLIENTE').AsInteger := pIdCliente;
  	  vQry.ExecSQL;
      
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao alterar registro na tabela "CLIENTES"! Erro: ' + e.Message);
				Abort;
			end;    
    end;
  finally
		FreeAndNil(vQry);
  end;    
end;

procedure TPersistence.AlterarProduto(pIdProduto: Integer; pNome: String;
  pValor: Double; pControlado: String);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('UPDATE PRODUTOS SET NOME = :NOME, VALOR = :VALOR, CONTROLADO = :CONTROLADO WHERE ID_PRODUTO = :ID_PRODUTO;');

      vQry.ParamByName('NOME').AsString := pNome;
      vQry.ParamByName('VALOR').AsFloat := pValor;
      vQry.ParamByName('CONTROLADO').AsString := pControlado;
      vQry.ParamByName('ID_PRODUTO').AsInteger := pIdProduto;
  	  vQry.ExecSQL;
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao alterar dados na tabela "PRODUTOS"! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

procedure TPersistence.AlterarTecnicoAgricola(pNome, pCPF: String; pNumRegistro,
  pIdTecnico: Integer);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('UPDATE TECNICO_AGRICOLA SET NOME = :NOME, CPF = :CPF, NUMERO_REGISTRO = :NUMERO_REGISTRO WHERE ID_TECNICO_AGRICOLA = :ID_TECNICO_AGRICOLA;');

      vQry.ParamByName('NOME').AsString := pNome;
      vQry.ParamByName('CPF').AsString := pCPF;
      vQry.ParamByName('NUMERO_REGISTRO').AsInteger := pNumRegistro;
      vQry.ParamByName('ID_TECNICO_AGRICOLA').AsInteger := pIdTecnico;
  	  vQry.ExecSQL;
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao alterar dados na tabela "TECNICO_AGRICOLA"! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

procedure TPersistence.ExcluirCliente(pIdCliente: Integer);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('DELETE FROM CLIENTES WHERE ID_CLIENTE = :ID_CLIENTE;');

      vQry.ParamByName('ID_CLIENTE').AsInteger := pIdCliente;
      vQry.ExecSQL;
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao deletar registro na tabela "CLIENTES"! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

procedure TPersistence.ExcluirProduto(pIdPrduto: Integer);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('DELETE FROM CLIENTES WHERE ID_PRODUTO = :ID_PRODUTO;');

      vQry.ParamByName('ID_PRODUTO').AsInteger := pIdPrduto;
      vQry.ExecSQL;
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao deletar registro na tabela "PRODUTOS"! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

procedure TPersistence.ExcluirTecnicoAgricola(pIdTecnico: Integer);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('DELETE FROM TECNICO_AGRICOLA WHERE ID_TECNICO_AGRICOLA = :ID_TECNICO_AGRICOLA;');

      vQry.ParamByName('ID_TECNICO_AGRICOLA').AsInteger := pIdTecnico;
      vQry.ExecSQL;
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao deletar registro na tabela "TECNICO_AGRICOLA"! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

procedure TPersistence.InserirCliente(pNome, pCPF: String);
var
  vQry: TFDQuery;
begin
  vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('INSERT INTO CLIENTES (NOME, CPF) VALUES (:NOME, :CPF);');

      vQry.ParamByName('NOME').AsString := pNome;
      vQry.ParamByName('CPF').AsString  := pCPF;

      vQry.ExecSQL;
		except
			on e:Exception do
			begin
        raise Exception.Create('Erro ao inserir dados na tabela "CLIENTES"! Erro: ' + e.Message);
				Abort;
			end;
		end;

	finally
		FreeAndNil(vQry);
	end;
end;

procedure TPersistence.InserirProduto(pNome: String; pValor: Double;  pControlado: String);
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('INSERT INTO PRODUTOS (NOME, VALOR, CONTROLADO) VALUES (:NOME, :VALOR, :CONTROLADO);');

      vQry.ParamByName('NOME').AsString := pNome;
      vQry.ParamByName('VALOR').AsFloat := pValor;
      vQry.ParamByName('CONTROLADO').AsString := pControlado;
      vQry.ExecSQL;
    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao inserir dados na tabela "PRODUTOS"! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

procedure TPersistence.InserirTecnicoAgricola(pNome, pCPF: String;
  pNumRegistro: Integer);
var
  vQry: TFDQuery;
begin
  vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('INSERT INTO TECNICO_AGRICOLA (NOME, CPF, NUMERO_REGISTRO) VALUES (:NOME, :CPF, :NUMERO_REGISTRO);');

      vQry.ParamByName('NOME').AsString := pNome;
      vQry.ParamByName('CPF').AsString  := pCPF;
      vQry.ParamByName('NUMERO_REGISTRO').AsInteger  := pNumRegistro;

      vQry.ExecSQL;
		except
			on e:Exception do
			begin
        raise Exception.Create('Erro ao inserir dados na tabela "TECNICO_AGRICOLA"! Erro: ' + e.Message);
				Abort;
			end;
		end;

	finally
		FreeAndNil(vQry);
	end;
end;

function TPersistence.ValidarCPFExistente(pCPF: String): Boolean;
var
  vQry: TFDQuery;
begin

vQry := TFDQuery.Create(nil);
	try
		try
      vQry.Connection := dmPrincipal.FDConnection;
      vQry.SQL.Clear;
      vQry.Close;

      vQry.SQL.Add('SELECT * FROM CLIENTES WHERE CPF = :CPF;');
      vQry.ParamByName('CPF').AsString  := pCPF;
	    vQry.Open;

      if not vQry.IsEmpty then
        Result := True
      else
        Result := False;

    except
      on e:Exception do
			begin
        raise Exception.Create('Erro ao pesquisar CPF! Erro: ' + e.Message);
				Abort;
			end;
    end;
  finally
		FreeAndNil(vQry);
  end;
end;

end.
