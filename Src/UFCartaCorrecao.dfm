object frmCartaCorrecao: TfrmCartaCorrecao
  Left = 499
  Top = 174
  Caption = 'Carta de Corre'#231#227'o'
  ClientHeight = 497
  ClientWidth = 754
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    754
    497)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 62
    Width = 79
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Numero Da Nota'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Chave *'
  end
  object Correcao: TLabel
    Left = 0
    Top = 115
    Width = 50
    Height = 13
    Caption = 'Corre'#231#227'o*'
  end
  object Label4: TLabel
    Left = 0
    Top = 285
    Width = 70
    Height = 13
    Caption = 'Termos de uso'
  end
  object Label6: TLabel
    Left = 8
    Top = 62
    Width = 56
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Data/Hora*'
  end
  object Label7: TLabel
    Left = 479
    Top = 8
    Width = 55
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Sequencia*'
  end
  object Label3: TLabel
    Left = 319
    Top = 62
    Width = 74
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'CodigoIbgeUF*'
  end
  object edtNota: TEdit
    Left = 168
    Top = 81
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 4
  end
  object edtChave: TEdit
    Left = 8
    Top = 27
    Width = 432
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 1
  end
  object mmCorrecao: TMemo
    Left = 0
    Top = 134
    Width = 753
    Height = 154
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
  end
  object mmTermo: TMemo
    Left = 0
    Top = 304
    Width = 753
    Height = 159
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      
        'A Carta de Corre'#231#227'o n'#227'o podera ser utilizada se estiver relacion' +
        'ada com:'
      ''
      '1- As variaveis que determinan o valor do imposto tais como:'
      '    *Base de Calculo'
      '    *Aliquota'
      '    *Diferen'#231'a de pre'#231'o'
      '    *Quantidade'
      '    *Valor da opera'#231#227'o ou da presta'#231#227'o'
      
        '2-A corre'#231#227'o de dados cadastrais que implique mudanca do remeten' +
        'te ou do destinatario.'
      '3-A data de emiss'#227'o ou de sa'#237'da.')
    TabOrder = 7
  end
  object edtDataEnvio: TEdit
    Left = 8
    Top = 81
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 118
    Top = 108
    Width = 186
    Height = 21
    Date = 41326.483804768520000000
    Time = 41326.483804768520000000
    TabOrder = 0
    Visible = False
  end
  object Button1: TButton
    Left = 245
    Top = 469
    Width = 75
    Height = 25
    Caption = 'Enviar CCE'
    TabOrder = 8
    OnClick = Button1Click
  end
  object edtSequencia: TEdit
    Left = 479
    Top = 27
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 2
    Text = '1'
  end
  object edtCodigoIbgeUf: TEdit
    Left = 319
    Top = 81
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 5
  end
  object Button2: TButton
    Left = 344
    Top = 469
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 9
    OnClick = Button2Click
  end
  object HistoricoNFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT *,max(carta_correcao_seq) as sequencia  FROM HISTORICO_NF' +
        'E')
    SQLConnection = Modulo.SQLConexao
    Left = 56
    Top = 176
    object HistoricoNFeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object HistoricoNFeNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
      Required = True
    end
    object HistoricoNFeSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object HistoricoNFeDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object HistoricoNFeCHAVE: TStringField
      FieldName = 'CHAVE'
      Required = True
      Size = 44
    end
    object HistoricoNFeSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object HistoricoNFeAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object HistoricoNFeMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object HistoricoNFeRECIBO: TStringField
      FieldName = 'RECIBO'
    end
    object HistoricoNFeSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object HistoricoNFeSERVIDOR: TStringField
      FieldName = 'SERVIDOR'
      Size = 100
    end
    object HistoricoNFePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
    end
    object HistoricoNFeCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object HistoricoNFeCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 250
    end
    object HistoricoNFeFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object HistoricoNFeEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object HistoricoNFeDATA: TDateField
      FieldName = 'DATA'
    end
    object HistoricoNFeHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object HistoricoNFeUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object HistoricoNFeNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object HistoricoNFeIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object HistoricoNFeEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object HistoricoNFeFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object HistoricoNFeCARTA_CORRECAO_SEQ: TIntegerField
      FieldName = 'CARTA_CORRECAO_SEQ'
    end
  end
  object NotaClienteIbgeUf: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Modulo.SQLConexao
    Left = 232
    Top = 176
  end
  object QryFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from FILIAIS')
    SQLConnection = Modulo.SQLConexao
    Left = 152
    Top = 176
    object QryFilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Required = True
    end
    object QryFilialDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object QryFilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object QryFilialFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      Required = True
      Size = 80
    end
    object QryFilialFIL_END_ENDERECO: TStringField
      FieldName = 'FIL_END_ENDERECO'
      Size = 70
    end
    object QryFilialFIL_END_BAIRRO: TStringField
      FieldName = 'FIL_END_BAIRRO'
      Size = 50
    end
    object QryFilialFIL_END_CID_CODIGO: TIntegerField
      FieldName = 'FIL_END_CID_CODIGO'
    end
    object QryFilialFIL_END_CID_NOME: TStringField
      FieldName = 'FIL_END_CID_NOME'
      Size = 60
    end
    object QryFilialFIL_END_CID_UF: TStringField
      FieldName = 'FIL_END_CID_UF'
      Size = 2
    end
    object QryFilialFIL_END_CEP: TStringField
      FieldName = 'FIL_END_CEP'
      Size = 15
    end
    object QryFilialFIL_INSCEST: TStringField
      FieldName = 'FIL_INSCEST'
      Size = 30
    end
    object QryFilialFIL_EMAIL: TStringField
      FieldName = 'FIL_EMAIL'
      Size = 70
    end
    object QryFilialFIL_HOMEPAGE: TStringField
      FieldName = 'FIL_HOMEPAGE'
      Size = 75
    end
    object QryFilialFIL_END_COMPLETO: TStringField
      FieldName = 'FIL_END_COMPLETO'
      Size = 350
    end
    object QryFilialFIL_FONE: TStringField
      FieldName = 'FIL_FONE'
      Size = 15
    end
    object QryFilialFIL_FAX: TStringField
      FieldName = 'FIL_FAX'
      Size = 15
    end
    object QryFilialFIL_NOMEFANTASIA: TStringField
      FieldName = 'FIL_NOMEFANTASIA'
      Size = 120
    end
    object QryFilialMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QryFilialFIL_OBS: TBlobField
      FieldName = 'FIL_OBS'
      Size = -1
    end
    object QryFilialEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object QryFilialDATA: TDateField
      FieldName = 'DATA'
    end
    object QryFilialHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object QryFilialUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object QryFilialNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object QryFilialIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object QryFilialEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QryFilialFIL_COMOCOMPROU: TStringField
      FieldName = 'FIL_COMOCOMPROU'
      Size = 200
    end
    object QryFilialFIL_ESTAEMPRESAUSAOS: TStringField
      FieldName = 'FIL_ESTAEMPRESAUSAOS'
      Size = 10
    end
    object QryFilialFIL_NOMECONTATO: TStringField
      FieldName = 'FIL_NOMECONTATO'
      Size = 200
    end
    object QryFilialFIL_SISTEMA: TStringField
      FieldName = 'FIL_SISTEMA'
      Size = 50
    end
    object QryFilialFIL_BLOQUEADA: TIntegerField
      FieldName = 'FIL_BLOQUEADA'
    end
    object QryFilialFIL_VALORMENSALIDADE: TFloatField
      FieldName = 'FIL_VALORMENSALIDADE'
    end
    object QryFilialFIL_DATAVENDMENSALIDADE: TDateField
      FieldName = 'FIL_DATAVENDMENSALIDADE'
    end
    object QryFilialFIL_MESCORRENTEPAGO: TIntegerField
      FieldName = 'FIL_MESCORRENTEPAGO'
    end
    object QryFilialPERMITIRATUALIZAR: TIntegerField
      FieldName = 'PERMITIRATUALIZAR'
    end
    object QryFilialFIL_USER_QTD: TIntegerField
      FieldName = 'FIL_USER_QTD'
    end
    object QryFilialFIL_CPF: TStringField
      FieldName = 'FIL_CPF'
      Size = 30
    end
    object QryFilialFIL_IDENTIDADE: TStringField
      FieldName = 'FIL_IDENTIDADE'
      Size = 30
    end
    object QryFilialQTD_USER: TIntegerField
      FieldName = 'QTD_USER'
    end
    object QryFilialDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object QryFilialFIL_TIPOCLIENTE: TStringField
      FieldName = 'FIL_TIPOCLIENTE'
    end
    object QryFilialEMP_BLOQUEIATUDO: TIntegerField
      FieldName = 'EMP_BLOQUEIATUDO'
    end
    object QryFilialFIL_END_COMPLEMENTO: TStringField
      FieldName = 'FIL_END_COMPLEMENTO'
      Size = 999
    end
    object QryFilialFIL_END_NUMERO: TStringField
      FieldName = 'FIL_END_NUMERO'
      Size = 999
    end
    object QryFilialFIL_END_COD_IBGEUF: TStringField
      FieldName = 'FIL_END_COD_IBGEUF'
      Size = 30
    end
    object QryFilialFIL_END_COD_IBGEMUNIC: TStringField
      FieldName = 'FIL_END_COD_IBGEMUNIC'
      Size = 60
    end
    object QryFilialFIL_INSMUN: TStringField
      FieldName = 'FIL_INSMUN'
      Size = 30
    end
    object QryFilialFIL_CNAE: TStringField
      FieldName = 'FIL_CNAE'
      Size = 30
    end
    object QryFilialFIL_INSESTSUBTITUTO: TStringField
      FieldName = 'FIL_INSESTSUBTITUTO'
      Size = 30
    end
    object QryFilialFIL_PAIS: TStringField
      FieldName = 'FIL_PAIS'
      Size = 60
    end
    object QryFilialFIL_USARANFE: TStringField
      FieldName = 'FIL_USARANFE'
      Size = 30
    end
    object QryFilialFIL_CORRETO: TIntegerField
      FieldName = 'FIL_CORRETO'
    end
    object QryFilialVEND_CODIGO: TIntegerField
      FieldName = 'VEND_CODIGO'
    end
  end
  object XMLDocument1: TXMLDocument
    Options = [doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl]
    XML.Strings = (
      
        '<retEnvEvento versao='#39'1.00'#39' xmlns='#39'http://www.portalfiscal.inf.b' +
        'r/nfe'#39' xmlns:ns2='#39'http://www.w3.org/2000/09/xmldsig#'#39'><idLote>20' +
        '9</idLote><tpAmb>2</tpAmb><verAplic>GO2.0</verAplic><cOrgao>52</' +
        'cOrgao><cStat>128</cStat><xMotivo>Lote de Evento Processado</xMo' +
        'tivo><retEvento versao='#39'1.00'#39'><infEvento><tpAmb>2</tpAmb><verApl' +
        'ic>GO2.0</verAplic><cOrgao>52</cOrgao><cStat>573</cStat><xMotivo' +
        '>Rejeicao: Duplicidade de evento</xMotivo><chNFe>521303086583620' +
        '00186550010000002091000002097</chNFe><tpEvento>110110</tpEvento>' +
        '<nSeqEvento>1</nSeqEvento><dhRegEvento>2013-03-04T15:18:57-03:00' +
        '</dhRegEvento></infEvento></retEvento></retEnvEvento>')
    Left = 496
    Top = 80
    DOMVendorDesc = 'MSXML'
  end
end
