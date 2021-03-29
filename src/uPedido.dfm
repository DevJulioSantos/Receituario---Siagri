object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'frmPedido'
  ClientHeight = 727
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object lblCLientes: TLabel
      Left = 328
      Top = 6
      Width = 238
      Height = 40
      Caption = 'Pedido de venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlMid: TPanel
    Left = 0
    Top = 57
    Width = 1064
    Height = 629
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object pnlBusca: TPanel
      Left = 1
      Top = 1
      Width = 1062
      Height = 64
      Align = alTop
      TabOrder = 0
      object rbCodPedido: TRadioButton
        Left = 16
        Top = 8
        Width = 85
        Height = 17
        Caption = 'Cod. Pedido'
        TabOrder = 0
        OnClick = rbCodPedidoClick
      end
      object rbStatusPedido: TRadioButton
        Left = 107
        Top = 8
        Width = 83
        Height = 17
        Caption = 'Status Pedido'
        TabOrder = 1
        OnClick = rbStatusPedidoClick
      end
      object edtBuscar: TEdit
        Left = 15
        Top = 31
        Width = 220
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 2
      end
      object btnPesquisar: TBitBtn
        Left = 241
        Top = 26
        Width = 93
        Height = 28
        Caption = 'Pesquisar'
        Glyph.Data = {
          FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
          180000000000C80A0000C40E0000C40E00000000000000000000FFFFFFFCF9F6
          F3E8DCF9F4EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FBF9F6DCAF81DA9C5BD7
          A16AF0E1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000F3E8DDDC9C5BFFD3A0F3BE86D198
          5DF5ECE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000F9F4EED7A16BF3BF87FFD29FF6C48DCD8C48
          F7F0EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFF0E1D1D1995EF6C38CFFD29FF5C18AD19A62F5
          EBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFF5EDE4CD8C48F5C18AFFD3A0EFBA81D29D66FAF7
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFF7F2ECD19B63EEB880FFD4A1F2BC84CD9152FBF9F6
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFF5ECE2D19C66F1BB82FFD4A0F1BB81D2A06EF9F4EEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFBF8F3CF9356EEB87EFFD5A1EAB37AD4A473FEFEFCFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCFBFBD3A471E9B177FFCE9AEAB277D19B64FFFFFFFFFFFF
          FFFFFFFFFFFFFDFCFAF6EDE4F3E6D9F1E3D4F3E6D9F6EDE5FDFCFAFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFAF5F0D6A878E9B177FFD29DE8B075D6AD81FEFDFDFFFFFFE4
          C6A7DBB38ADCB184DEB183DDB182DEB284DCB184DBB38AE4C6A7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFED2A16CE8AF71FFD4A1E6AE75D4A676D09C66E3BD95F6DF
          C6FBEBD7FFF2E2FFF5E7FFF2E2FBEBD7F5DFC6E3BD95CF9A63F5EBE0FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD9AF86E6AE74EDB77ED39B63F9E5D1FFF7EAFFF2E2FEF1E0
          FEF0DFFEF0DFFEF0DFFEF1E0FFF2E2FFF7E9F9E5D0D09B62EAD3BBFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFD5A676D19B63FBEAD6FFF4E5FEF0DFFEF0DFFEF0DFFEF0DFFE
          F0DFFEF0DFFEF0DFFEF0DFFEF0DFFFF4E4FAE9D4D09B62F5EADFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFCF9B64F9E6D2FFF4E4FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0
          DFFEF0DFFEF0DFFEF0DFFEF0DFFFF3E4F9E6CFCF9964FFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C6A7E4
          BE96FFF7E9FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DF
          FEF0DFFEF0DFFEF0DFFEF0DFFFF7EAE4BD94E4C6A8FFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFADAB389F5DFC5FFF2
          E2FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFE
          F0DFFEF0DFFEF0DFFFF2E2F5DFC5DBB489FEFDFC0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EDE4DCB284FBEBD7FEF1E0FEF0DF
          FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0
          DFFEF0DFFEF1E0FBEAD7DCB284F8F1E80000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D9DEB183FFF2E3FEF0DFFEF0DFFEF0DFFE
          F0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DF
          FEF0DFFFF2E2DEB182F4E9DE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF2E3D4DDB282FFF5E6FEF0DFFEF0DFFEF0DFFEF0DFFEF0
          DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFF
          F5E6DDB282F3E7D90000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF2E5D9DEB283FFF2E3FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DF
          FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFFF2E2DEB2
          83F4E9DE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF7EDE4DCB083FBEBD8FEF1E0FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFE
          F0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF1E0FBEAD7DCB184F8F0E8
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF9
          DBB389F5E0C6FFF2E2FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0
          DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFFF2E2F5DFC5DBB389FEFDFC0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C5A7E3
          BE96FFF7E9FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DF
          FEF0DFFEF0DFFEF0DFFEF0DFFFF7E9E4BD94E4C6A8FFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9A63F9E6
          D2FFF3E4FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFE
          F0DFFEF0DFFFF3E4F9E6D1CF9A64FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9DDD29B63FBE9D5
          FFF3E4FEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFEF0DFFFF3
          E4FAE9D4D19B63F5EADFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAD2B9D29B62F9E6D2FF
          F7E9FFF2E2FEF1E0FEF0DFFEF0DFFEF0DFFEF1E0FFF2E2FFF7E9F9E6D2D09B63
          EAD2BBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9DECE9963E3BE96F6E0
          C6FBEBD8FFF2E2FFF5E7FFF2E2FBEBD7F5DFC6E3BE95CE9A63F4EADEFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C6A7DBB38ADCB184
          DDB183DDB181DDB183DCB183DBB289E3C6A7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBF7EFE8F4E9DEF3
          E6D9F4E9DEF7EFE8FEFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000}
        TabOrder = 3
        OnClick = btnPesquisarClick
      end
      object cbStatus: TComboBox
        Left = 16
        Top = 31
        Width = 136
        Height = 21
        TabOrder = 4
        Visible = False
        Items.Strings = (
          'Confirmado'
          'Pendente')
      end
    end
    object pnlPedidos: TPanel
      Left = 1
      Top = 65
      Width = 1062
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pnlGridPedidos: TPanel
      Left = 1
      Top = 97
      Width = 1062
      Height = 144
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object grdPedidos: TDBGrid
        Left = 0
        Top = 0
        Width = 1062
        Height = 144
        Align = alClient
        DataSource = dmPrincipal.dsPedidoTotal
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = grdPedidosCellClick
        OnDblClick = grdPedidosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PEDIDO_TOTAL'
            Title.Caption = 'Cod. Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_PEDIDO'
            Title.Caption = 'Data Pedido'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Caption = 'Cod. Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_TOTAL'
            Title.Caption = 'Qtd. Total'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Caption = 'Valor Total'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTEM_PROD_CONTROLADO'
            Title.Caption = 'Contem Prod. Controlado'
            Visible = True
          end>
      end
    end
    object pnlItensPedido: TPanel
      Left = 1
      Top = 241
      Width = 1062
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Itens Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pnlGridItens: TPanel
      Left = 1
      Top = 282
      Width = 1062
      Height = 143
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object grdItensPedido: TDBGrid
        Left = 0
        Top = 0
        Width = 1062
        Height = 143
        Align = alClient
        DataSource = dmPrincipal.dsPedidoItem
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PEDIDO_ITEM'
            Title.Caption = 'Cod. Pedido item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PEDIDO_TOTAL'
            Title.Caption = 'Cod. Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Caption = 'Cod. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PRODUTO'
            Title.Caption = 'Qtd. Produto'
            Visible = True
          end>
      end
    end
    object pgControlePedido: TPageControl
      Left = 1
      Top = 425
      Width = 1062
      Height = 203
      ActivePage = tsItemPedido
      Align = alClient
      TabOrder = 5
      object tsPedido: TTabSheet
        Hint = 'Pesquiser Cliente'
        Caption = 'Pedido'
        object Label1: TLabel
          Left = 11
          Top = 18
          Width = 58
          Height = 13
          Caption = 'Cod. Pedido'
        end
        object Label2: TLabel
          Left = 97
          Top = 18
          Width = 58
          Height = 13
          Caption = 'Data Pedido'
        end
        object Label4: TLabel
          Left = 216
          Top = 18
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object Label5: TLabel
          Left = 11
          Top = 99
          Width = 76
          Height = 13
          Caption = 'Qd. Itens Total '
        end
        object Label6: TLabel
          Left = 97
          Top = 99
          Width = 51
          Height = 13
          Caption = 'Valor Total'
        end
        object Label7: TLabel
          Left = 12
          Top = 59
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object edtIdPedido: TEdit
          Left = 11
          Top = 32
          Width = 80
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object edtDataPedido: TEdit
          Left = 97
          Top = 32
          Width = 114
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object edtQtdTotalItens: TEdit
          Left = 11
          Top = 113
          Width = 77
          Height = 21
          Enabled = False
          TabOrder = 2
        end
        object edtValorTotal: TEdit
          Left = 97
          Top = 113
          Width = 114
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object edtStatus: TEdit
          Left = 216
          Top = 32
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 4
        end
        object cbProdControlado: TCheckBox
          Left = 216
          Top = 116
          Width = 169
          Height = 17
          Caption = 'Cont'#233'm Produto Controlado'
          Enabled = False
          TabOrder = 5
        end
        object edtNomeCliente: TEdit
          Left = 97
          Top = 72
          Width = 187
          Height = 21
          Hint = 'Para adicionar um cliente utilize o bot'#227'o de pesquisa (...)'
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object btnPesqCliente: TBitBtn
          Left = 285
          Top = 73
          Width = 30
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 7
          OnClick = btnPesqClienteClick
        end
        object edtCodCliente: TEdit
          Left = 12
          Top = 73
          Width = 79
          Height = 21
          Hint = 'Para adicionar um cliente utilize o bot'#227'o de pesquisa (...)'
          Enabled = False
          ReadOnly = True
          TabOrder = 8
        end
      end
      object tsItemPedido: TTabSheet
        Caption = 'Itens Pedido'
        ImageIndex = 1
        object Label8: TLabel
          Left = 12
          Top = 27
          Width = 38
          Height = 13
          Caption = 'Produto'
        end
        object Label9: TLabel
          Left = 12
          Top = 71
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object Label10: TLabel
          Left = 97
          Top = 71
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object edtNomeProduto: TEdit
          Left = 97
          Top = 41
          Width = 187
          Height = 21
          Hint = 'Para adicionar um produto utilize o bot'#227'o de pesquisa (...)'
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object btnPesqProdudo: TBitBtn
          Left = 286
          Top = 41
          Width = 30
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 1
          OnClick = btnPesqProdudoClick
        end
        object edtIdProduto: TEdit
          Left = 12
          Top = 41
          Width = 79
          Height = 21
          Hint = 'Para adicionar um produto utilize o bot'#227'o de pesquisa (...)'
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtQuantidade: TEdit
          Left = 12
          Top = 85
          Width = 79
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object cbProdControladoItem: TCheckBox
          Left = 183
          Top = 87
          Width = 119
          Height = 17
          Caption = 'Produto Controlado'
          Enabled = False
          TabOrder = 4
        end
        object edtValor: TEdit
          Left = 97
          Top = 85
          Width = 79
          Height = 21
          Enabled = False
          TabOrder = 5
        end
      end
    end
  end
  object pnlBot: TPanel
    Left = 0
    Top = 686
    Width = 1064
    Height = 41
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    object btnAdicionar: TBitBtn
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = btnAdicionarClick
    end
    object btnCancelar: TBitBtn
      Left = 972
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnSalvar: TBitBtn
      Left = 886
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
  end
end
