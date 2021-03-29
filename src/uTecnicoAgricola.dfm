object frmTecnicoAgricola: TfrmTecnicoAgricola
  Left = 480
  Top = 100
  ClientHeight = 501
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBot: TPanel
    Left = 0
    Top = 444
    Width = 994
    Height = 57
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      994
      57)
    object btnAdicionar: TBitBtn
      Left = 4
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = btnAdicionarClick
    end
    object btnAlterar: TBitBtn
      Left = 88
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnSalvar: TBitBtn
      Left = 820
      Top = 22
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      Left = 174
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 910
      Top = 22
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 4
    end
  end
  object pnlMid: TPanel
    Left = 0
    Top = 57
    Width = 994
    Height = 387
    Align = alClient
    TabOrder = 1
    object pnlBusca: TPanel
      Left = 1
      Top = 1
      Width = 992
      Height = 64
      Align = alTop
      Color = clWindow
      ParentBackground = False
      TabOrder = 0
      object rbIdTecnico: TRadioButton
        Left = 16
        Top = 8
        Width = 85
        Height = 17
        Caption = 'Cod. T'#233'cnico'
        TabOrder = 0
        OnClick = rbIdTecnicoClick
      end
      object rbNomeTecnico: TRadioButton
        Left = 102
        Top = 8
        Width = 50
        Height = 17
        Caption = 'Nome'
        TabOrder = 1
        OnClick = rbNomeTecnicoClick
      end
      object rbCPF: TRadioButton
        Left = 154
        Top = 8
        Width = 39
        Height = 17
        Caption = 'CPF'
        TabOrder = 2
        OnClick = rbCPFClick
      end
      object edtBuscar: TEdit
        Left = 16
        Top = 31
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 3
        OnKeyPress = edtBuscarKeyPress
      end
      object btnPesquisar: TBitBtn
        Left = 286
        Top = 27
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
        TabOrder = 4
        OnClick = btnPesquisarClick
      end
      object rbNumRegistro: TRadioButton
        Left = 197
        Top = 8
        Width = 84
        Height = 17
        Caption = 'Num. Registro'
        TabOrder = 5
        OnClick = rbNumRegistroClick
      end
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 65
      Width = 992
      Height = 240
      Align = alTop
      TabOrder = 1
      object grdTecnicos: TDBGrid
        Left = 1
        Top = 1
        Width = 990
        Height = 238
        Align = alClient
        DataSource = dmPrincipal.dsTecnicosAgricola
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdTecnicosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_TECNICO_AGRICOLA'
            Title.Caption = 'Cod. T'#233'cnico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_REGISTRO'
            Title.Caption = 'Num. Registro'
            Visible = True
          end>
      end
    end
    object pnlCadastro: TPanel
      Left = 1
      Top = 305
      Width = 992
      Height = 81
      Align = alClient
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 104
        Top = 20
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label2: TLabel
        Left = 359
        Top = 20
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label3: TLabel
        Left = 7
        Top = 20
        Width = 62
        Height = 13
        Caption = 'Cod. T'#233'cnico'
      end
      object Label4: TLabel
        Left = 512
        Top = 16
        Width = 68
        Height = 13
        Caption = 'Num. Registro'
      end
      object edtNomeTecnico: TEdit
        Left = 104
        Top = 35
        Width = 249
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        MaxLength = 100
        TabOrder = 0
        OnKeyPress = edtNomeTecnicoKeyPress
      end
      object edtIdTecnico: TEdit
        Left = 7
        Top = 35
        Width = 91
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object edtCPF: TEdit
        Left = 359
        Top = 35
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        MaxLength = 11
        TabOrder = 2
        OnKeyPress = edtCPFKeyPress
      end
      object edtNumRegistro: TEdit
        Left = 512
        Top = 35
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        MaxLength = 6
        TabOrder = 3
        OnKeyPress = edtNumRegistroKeyPress
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    object lblCLientes: TLabel
      Left = 262
      Top = 11
      Width = 449
      Height = 40
      Caption = 'Cadastro de T'#233'cnicos Agr'#237'colas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
