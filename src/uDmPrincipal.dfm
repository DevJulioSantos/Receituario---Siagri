object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 377
  Width = 1110
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 1040
    Top = 24
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'D:\Delphi\Projects\Receituario---Siagri\utils\fbclient.dll'
    Left = 1040
    Top = 80
  end
  object qryClientes: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from clientes where id_cliente = 3')
    Left = 24
    Top = 16
    object qryClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 11
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 24
    Top = 72
  end
  object qryProdutos: TFDQuery
    Connection = FDConnection
    Left = 96
    Top = 16
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 96
    Top = 72
  end
  object qryTenicosAgricola: TFDQuery
    Connection = FDConnection
    Left = 177
    Top = 16
  end
  object dsTecnicosAgricola: TDataSource
    DataSet = qryTenicosAgricola
    Left = 175
    Top = 72
  end
end
