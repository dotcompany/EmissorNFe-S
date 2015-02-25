{$I ACBr.inc}
unit UFNFSEletronica;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, Menus, Mask, DB,   DBCtrls,
  DBClient, ACBrNFe, ACBrNFeNotasFiscais, UFStatus, ACBrNFeWebServices,
  ACBrNFeConfiguracoes, pcnNFe, pcnConversao,ACBrNFeDANFEClass, pcnNFeW,
  JvMemoryDataset, ACBrNFeDANFERave,Provider, SqlExpr, JvBaseEdits,
  JvExStdCtrls, JvMemo, JvExMask, JvToolEdit,JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvProgressBar, JvXPProgressBar, Grids, DBGrids, ImgList,
  JvComponentBase, FMTBcd, RpDefine, RpRender, RpRenderPDF,   RpRave, RpCon,
  RpConDS, JvBaseDlg, JvProgressDialog, JvExControls, JvSpecialProgress, OleCtrls, SHDocVw, ACBrUtil,
  ACBrNFSe, ACBrNFSeNotasFiscais, pnfsConversao;

type
  TFNFSEletronica = class(TForm)
    CbTipoOperacao: TComboBox;
    StBar: TStatusBar;
    PopupMenuGridConsulta: TPopupMenu;
    ConsultaStatusNFe1: TMenuItem;
    EStatus_: TDBEdit;
    EEMail: TDBEdit;
    QryItens: TSQLQuery;
    QryParametrosNFE: TSQLQuery;
    QryCadNota: TSQLQuery;
    QryClienteaaa: TSQLQuery;
    QryClienteaaaEMP_GRUPO: TIntegerField;
    QryClienteaaaEMP_CODIGO: TIntegerField;
    QryClienteaaaFIL_CODIGO: TIntegerField;
    QryClienteaaaCLI_CODIGO: TIntegerField;
    QryClienteaaaCLI_CPFCNPJ: TStringField;
    QryClienteaaaCLI_RGINSC: TStringField;
    QryClienteaaaCLI_RAZAO: TStringField;
    QryClienteaaaCLI_FANTASIA: TStringField;
    QryClienteaaaCLI_TIPO: TStringField;
    QryClienteaaaCLI_SEXO: TStringField;
    QryClienteaaaFLAG_DATAALT: TDateField;
    QryClienteaaaDELETADO: TIntegerField;
    QryClienteaaaCLI_END_ENDERECO: TStringField;
    QryClienteaaaCLI_END_BAIRRO: TStringField;
    QryClienteaaaCLI_END_CID_CODIGO: TIntegerField;
    QryClienteaaaCLI_END_CID_NOME: TStringField;
    QryClienteaaaCLI_END_CID_UF: TStringField;
    QryClienteaaaCLI_END_CEP: TStringField;
    QryClienteaaaCLI_FONE: TStringField;
    QryClienteaaaCLI_FAX: TStringField;
    QryClienteaaaCLI_BANCO: TStringField;
    QryClienteaaaCLI_AGENCIA: TStringField;
    QryClienteaaaCLI_DTCADASTRO: TDateField;
    QryClienteaaaCLI_EMAIL: TStringField;
    QryClienteaaaVEN_CODIGO: TIntegerField;
    QryClienteaaaVEN_CODIGO_AG: TIntegerField;
    QryClienteaaaCLI_NOMECONTATO: TStringField;
    QryClienteaaaCLI_CONTATOEMAIL: TStringField;
    QryClienteaaaCLI_DATANASC: TDateField;
    QryClienteaaaCLI_VENDEDOR: TIntegerField;
    QryClienteaaaVEN_COM: TFloatField;
    QryClienteaaaAG_COM: TFloatField;
    QryClienteaaaTP_CODIGO: TStringField;
    QryClienteaaaCLI_LIMITE: TFloatField;
    QryClienteaaaCLI_BLOQUEADO: TIntegerField;
    QryClienteaaaFP_CODIGO: TIntegerField;
    QryClienteaaaTC_CODIGO: TIntegerField;
    QryClienteaaaCLI_MALA: TIntegerField;
    QryClienteaaaCLI_TOTALDESCONTO: TFloatField;
    QryClienteaaaCLI_FOTO: TStringField;
    QryClienteaaaVEN_CODIGO_AG_2: TIntegerField;
    QryClienteaaaAG_COM_2: TFloatField;
    QryClienteaaaCLI_END_ENDERECO_TRABALHO: TStringField;
    QryClienteaaaCLI_END_BAIRRO_TRABALHO: TStringField;
    QryClienteaaaCLI_END_CID_CODIGO_TRABALHO: TIntegerField;
    QryClienteaaaCLI_END_CID_NOME_TRABALHO: TStringField;
    QryClienteaaaCLI_END_CID_UF_TRABALHO: TStringField;
    QryClienteaaaCLI_END_CEP_TRABALHO: TStringField;
    QryClienteaaaCLI_FONE_TRABALHO: TStringField;
    QryClienteaaaCLI_FAX_TRABALHO: TStringField;
    QryClienteaaaCLI_CELULAR: TStringField;
    QryClienteaaaCLI_LOCALTRABALHO: TStringField;
    QryClienteaaaCLI_NOMEGERENTE_TRABALHO: TStringField;
    QryClienteaaaCLI_END_COMPLETO: TStringField;
    QryClienteaaaCLI_END_COMPLEMENTO: TStringField;
    QryClienteaaaCLI_END_NUMERO: TStringField;
    QryClienteaaaCLI_END_LT: TStringField;
    QryClienteaaaCLI_END_QD: TStringField;
    QryClienteaaaCLI_END_PONTOREFERENCIA: TStringField;
    QryClienteaaaMON_CODIGO: TIntegerField;
    QryClienteaaaCLI_CODIGOPAI: TIntegerField;
    QryClienteaaaTI_CODIGO: TIntegerField;
    QryClienteaaaCLI_OBS: TGraphicField;
    QryClienteaaaCLI_GRAUESCOLARIDADE: TStringField;
    QryClienteaaaCLI_POSUICARTAO: TStringField;
    QryClienteaaaVISA: TIntegerField;
    QryClienteaaaMASTERCAR: TIntegerField;
    QryClienteaaaDEBITO: TIntegerField;
    QryClienteaaaAMERICAM: TIntegerField;
    QryClienteaaaOUTROS: TIntegerField;
    QryClienteaaaCLI_NUMERODACONTA: TStringField;
    QryClienteaaaCLI_BAN_CLIENTEDESDE: TDateField;
    QryClienteaaaCLI_BAN_NOMEGERENTE: TStringField;
    QryClienteaaaCLI_BAN_FONE: TStringField;
    QryClienteaaaCLI_BAN_FONE_2: TStringField;
    QryClienteaaaCLI_BAN_FONE_3: TStringField;
    QryClienteaaaCLI_BAN_NOMEGERENTE_2: TStringField;
    QryClienteaaaCLI_BAN_NOMEGERENTE_3: TStringField;
    QryClienteaaaCLI_BAN_CLIENTEDESDE_1: TDateField;
    QryClienteaaaCLI_BAN_CLIENTEDESDE_3: TDateField;
    QryClienteaaaCLI_NUMERODACONTA_2: TStringField;
    QryClienteaaaCLI_NUMERODACONTA_3: TStringField;
    QryClienteaaaCLI_BANCO_2: TStringField;
    QryClienteaaaCLI_BANCO_3: TStringField;
    QryClienteaaaCLI_AGENCIA_2: TStringField;
    QryClienteaaaCLI_AGENCIA_3: TStringField;
    QryClienteaaaCLI_RENDAFAMILHAR: TStringField;
    QryClienteaaaCLI_FICHADO: TStringField;
    QryClienteaaaCLI_TEMPOTRABALHO: TStringField;
    QryClienteaaaCLI_ESTADOCIVIL: TStringField;
    QryClienteaaaCLI_NOMECONJUGE: TStringField;
    QryClienteaaaCLI_CONJUGECPF: TStringField;
    QryClienteaaaCLI_CONJUGERG: TStringField;
    QryClienteaaaCLI_CONJUGEDATANASC: TDateField;
    QryClienteaaaCLI_CONJUGEEMAIL: TStringField;
    QryClienteaaaCLI_NOMEMAE: TStringField;
    QryClienteaaaCLI_NOMEPAI: TStringField;
    QryClienteaaaCLI_FONEMAE: TStringField;
    QryClienteaaaCLI_FONEMAE_2: TStringField;
    QryClienteaaaCLI_FONEPAI: TStringField;
    QryClienteaaaCLI_FONEPAI_2: TStringField;
    QryClienteaaaCLI_TIPOMORADIA: TStringField;
    QryClienteaaaCLI_TIPOCONSTRUCOA: TStringField;
    QryClienteaaaCLI_MORADIA: TStringField;
    QryClienteaaaCLI_AGUA: TFloatField;
    QryClienteaaaCLI_ENERGIA: TFloatField;
    QryClienteaaaCLI_POSSUEMANIMAIS: TStringField;
    QryClienteaaaCLI_QTDANIMAIS: TStringField;
    QryClienteaaaCLI_NOMEGERENTE_2: TStringField;
    QryClienteaaaCLI_NOMEGERENTE_3: TStringField;
    QryClienteaaaCLI_NOMEGERENTE_1: TStringField;
    QryClienteaaaDATA: TDateField;
    QryClienteaaaHORAS: TTimeField;
    QryClienteaaaUSER_NOME: TStringField;
    QryClienteaaaNOMECOMPUTADOR: TStringField;
    QryClienteaaaIPDAMAQUINA: TStringField;
    QryClienteaaaCLI_PROVI: TStringField;
    QryClienteaaaCLI_NUMEROMATRICULA: TStringField;
    QryClienteaaaCLI_COBR_ENDERECO: TStringField;
    QryClienteaaaCLI_COBR_BAIRRO: TStringField;
    QryClienteaaaCLI_COBR_CEP: TStringField;
    QryClienteaaaCLI_COBR_LT: TStringField;
    QryClienteaaaCLI_COBR_QD: TStringField;
    QryClienteaaaCLI_COBR_NUMERO: TStringField;
    QryClienteaaaCLI_COBR_COMPLEMENTO: TStringField;
    QryClienteaaaCLI_COBR_CID_CODIGO: TIntegerField;
    QryClienteaaaCLI_COBR_CID_NOME: TStringField;
    QryClienteaaaCLI_COBR_UF: TStringField;
    QryClienteaaaCLI_COBR_PONTOREFERENCIA: TStringField;
    QryClienteaaaCLI_COBR_TELEFONE: TStringField;
    QryClienteaaaCLI_COBR_CELULAR: TStringField;
    QryClienteaaaCLI_COBR_FONE: TStringField;
    QryClienteaaaCLI_ENTR_BAIRRO: TStringField;
    QryClienteaaaCLI_ENTR_CELULAR: TStringField;
    QryClienteaaaCLI_ENTR_CEP: TStringField;
    QryClienteaaaCLI_ENTR_CID_CODIGO: TIntegerField;
    QryClienteaaaCLI_ENTR_CID_NOME: TStringField;
    QryClienteaaaCLI_ENTR_COMPLEMENTO: TStringField;
    QryClienteaaaCLI_ENTR_ENDERECO: TStringField;
    QryClienteaaaCLI_ENTR_FONE: TStringField;
    QryClienteaaaCLI_ENTR_LT: TStringField;
    QryClienteaaaCLI_ENTR_NUMERO: TStringField;
    QryClienteaaaCLI_ENTR_PONTOREFERENCIA: TStringField;
    QryClienteaaaCLI_ENTR_QD: TStringField;
    QryClienteaaaCLI_ENTR_TELEFONE: TStringField;
    QryClienteaaaCLI_ENTR_UF: TStringField;
    QryClienteaaaCLI_COBR_FAX: TStringField;
    QryClienteaaaCLI_ENTR_FAX: TStringField;
    QryClienteaaaROTA_CODIGO: TIntegerField;
    QryClienteaaaTRA_CODIGO: TIntegerField;
    QryClienteaaaCLI_AGUATIPO: TStringField;
    QryClienteaaaCLI_HOMEPAGE: TStringField;
    QryClienteaaaCON_NUMERO: TStringField;
    QryClienteaaaPC_CODIGO: TIntegerField;
    QryClienteaaaCLI_ATIVO_INATIVO: TIntegerField;
    QryClienteaaaCLI_INATIVOAPOS: TIntegerField;
    QryClienteaaaCLI_VENDASOMENTEAVISTA: TIntegerField;
    QryClienteaaaCLI_BLOQUEIOAUTOAPOS: TIntegerField;
    QryClienteaaaCLI_DATAULTIMACOMPRA: TDateField;
    QryClienteaaaCLI_DATAULTIMAOS: TDateField;
    QryClienteaaaCLI_SKYPE: TStringField;
    QryClienteaaaCLI_MSN: TStringField;
    QryClienteaaaCLI_NEXTEL: TStringField;
    QryClienteaaaCLI_RAMOATIVIDADE: TStringField;
    QryClienteaaaCLI_NOMESOCIO: TStringField;
    QryClienteaaaCLI_BLOQMOTIVO: TStringField;
    QryClienteaaaFIL_CNPJ: TStringField;
    QryClienteaaaCLI_END_COD_IBGEUF: TStringField;
    QryClienteaaaCLI_END_COD_IBGEMUNIC: TStringField;
    HistoricoNFe: TSQLQuery;
    CdsHistoricoNFe: TClientDataSet;
    DspHistoricoNFe: TDataSetProvider;
    CdsHistoricoNFeCOD_EMPRESA: TIntegerField;
    CdsHistoricoNFeNOTA_FISCAL: TIntegerField;
    CdsHistoricoNFeSERIE: TStringField;
    CdsHistoricoNFeDATA_EMISSAO: TDateField;
    CdsHistoricoNFeCHAVE: TStringField;
    CdsHistoricoNFeSEQUENCIA: TIntegerField;
    CdsHistoricoNFeAMBIENTE: TIntegerField;
    CdsHistoricoNFeMODELO: TIntegerField;
    CdsHistoricoNFeRECIBO: TStringField;
    CdsHistoricoNFeSTATUS: TStringField;
    CdsHistoricoNFeSERVIDOR: TStringField;
    CdsHistoricoNFePROTOCOLO: TStringField;
    CdsHistoricoNFeCOD_CLIENTE: TIntegerField;
    CdsHistoricoNFeCAMINHO: TStringField;
    CdsHistoricoNFeFIL_CODIGO: TIntegerField;
    CdsHistoricoNFeEMP_GRUPO: TIntegerField;
    CdsHistoricoNFeDATA: TDateField;
    CdsHistoricoNFeHORAS: TTimeField;
    CdsHistoricoNFeUSER_NOME: TStringField;
    CdsHistoricoNFeNOMECOMPUTADOR: TStringField;
    CdsHistoricoNFeIPDAMAQUINA: TStringField;
    CdsHistoricoNFeEMP_CODIGO: TIntegerField;
    CdsHistoricoNFeFIL_CNPJ: TStringField;
    QryMaximo: TSQLQuery;
    DspQryMaximo: TDataSetProvider;
    CdsQryMaximo: TClientDataSet;
    CdsQryMaximoTOTAL: TFMTBCDField;
    QryFinanceiro: TSQLQuery;
    DspQryFinanceiro: TDataSetProvider;
    CsdQryFinanceiro: TClientDataSet;
    cbEmailSSL: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    EValorICMS: TJvCalcEdit;
    QryTotaisNfe: TSQLQuery;
    ImageList2: TImageList;
    QryTotaisNfeNI_VALOR_TOTAL: TFMTBCDField;
    QryTotaisNfeNI_VALOR_DESCONTO: TFMTBCDField;
    QryTotaisNfeNI_VALOR_FRETE: TFMTBCDField;
    QryTotaisNfeNI_VALORSEGURO: TFMTBCDField;
    QryTotaisNfeNI_ICMS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryTotaisNfeNI_ICMS_VALOR: TFMTBCDField;
    QryTotaisNfeNI_ICMSSUBS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryTotaisNfeNI_ICMSSUBS_VALOR: TFMTBCDField;
    QryTotaisNfeNI_IPI_VALOR_BASE_CALCULO: TFMTBCDField;
    QryTotaisNfeNI_IPI_VALOR: TFMTBCDField;
    QryTotaisNfeNI_PIS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryTotaisNfeNI_PIS_VALOR: TFMTBCDField;
    QryTotaisNfeNI_COFINS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryTotaisNfeNI_COFINS_VALOR: TFMTBCDField;
    qryLookTributacoes: TSQLQuery;
    Qrytotalitem: TSQLQuery;
    QrytotalitemQTD: TIntegerField;
    qryLookTributacoesTRIBUTACOES_CODIGO: TIntegerField;
    qryLookTributacoesTRIBUTACOES_DESCRICAO: TStringField;
    qryLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA: TFloatField;
    qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO: TFloatField;
    qryLookTributacoesTRIBUTACOESICMS_TIPO_TRIBUTACAO: TStringField;
    qryLookTributacoesSTICMSA_CODIGO: TIntegerField;
    qryLookTributacoesSTICMSB_CODIGO: TStringField;
    qryLookTributacoesTRIBUTACOES_IPI_TIPO_TRIBUTACAO: TStringField;
    qryLookTributacoesTRIBUTACOICMS_TIPO_RECOLHIMENTO: TStringField;
    qryLookTributacoesSTIPI_CODIGO: TStringField;
    qryLookTributacoesTRIBUTACOES_PIS_ALIQUOTA: TFMTBCDField;
    qryLookTributacoesTRIBUTACOES_PIS_ST: TStringField;
    qryLookTributacoesTRIBUTACOES_COFINS_ALIQUOTA: TFloatField;
    qryLookTributacoesTRIBUTACOES_EMPRESA: TIntegerField;
    qryLookTributacoesTRIBUTACOES_COFINS_ST: TStringField;
    qryLookTributacoesTRIBUTACOES_IPI_ALIQUOTA: TFloatField;
    qryLookTributacoesTRIBUTACOICMS_TIPO_SUBSTITUICAO: TStringField;
    qryLookTributacoesTRIBUTACOES_ICMS_MVA: TFloatField;
    qryLookTributacoesEMP_GRUPO: TIntegerField;
    qryLookTributacoesEMP_CODIGO: TIntegerField;
    qryLookTributacoesFIL_CODIGO: TIntegerField;
    qryLookTributacoesDATA: TDateField;
    qryLookTributacoesHORAS: TTimeField;
    qryLookTributacoesNOMECOMPUTADOR: TStringField;
    qryLookTributacoesIPDAMAQUINA: TStringField;
    qryLookTributacoesUSER_NOME: TStringField;
    qryLookTributacoesNI_COFINS_ALIQUOTA_TIPO: TIntegerField;
    qryLookTributacoesNI_PIS_ALIQUOTA_TIPO: TIntegerField;
    qryLookTributacoesCSOSN: TStringField;
    QryLookFiliais: TSQLQuery;
    DslookFiliais: TDataSource;
    QryTotalDesconto: TSQLQuery;
    QryTotalDescontoTOTAL: TFMTBCDField;
    DspLookFiliais: TDataSetProvider;
    CdsLookFiliais: TClientDataSet;
    CdsLookFiliaisFIL_CODIGO: TIntegerField;
    CdsLookFiliaisDELETADO: TIntegerField;
    CdsLookFiliaisFIL_CNPJ: TStringField;
    CdsLookFiliaisFIL_NOME: TStringField;
    CdsLookFiliaisFIL_END_ENDERECO: TStringField;
    CdsLookFiliaisFIL_END_BAIRRO: TStringField;
    CdsLookFiliaisFIL_END_CID_CODIGO: TIntegerField;
    CdsLookFiliaisFIL_END_CID_NOME: TStringField;
    CdsLookFiliaisFIL_END_CID_UF: TStringField;
    CdsLookFiliaisFIL_END_CEP: TStringField;
    CdsLookFiliaisFIL_INSCEST: TStringField;
    CdsLookFiliaisFIL_EMAIL: TStringField;
    CdsLookFiliaisFIL_HOMEPAGE: TStringField;
    CdsLookFiliaisFIL_END_COMPLETO: TStringField;
    CdsLookFiliaisFIL_FONE: TStringField;
    CdsLookFiliaisFIL_FAX: TStringField;
    CdsLookFiliaisFIL_NOMEFANTASIA: TStringField;
    CdsLookFiliaisMON_CODIGO: TIntegerField;
    CdsLookFiliaisFIL_OBS: TBlobField;
    CdsLookFiliaisEMP_GRUPO: TIntegerField;
    CdsLookFiliaisDATA: TDateField;
    CdsLookFiliaisHORAS: TTimeField;
    CdsLookFiliaisUSER_NOME: TStringField;
    CdsLookFiliaisNOMECOMPUTADOR: TStringField;
    CdsLookFiliaisIPDAMAQUINA: TStringField;
    CdsLookFiliaisEMP_CODIGO: TIntegerField;
    CdsLookFiliaisFIL_COMOCOMPROU: TStringField;
    CdsLookFiliaisFIL_ESTAEMPRESAUSAOS: TStringField;
    CdsLookFiliaisFIL_NOMECONTATO: TStringField;
    CdsLookFiliaisFIL_SISTEMA: TStringField;
    CdsLookFiliaisFIL_BLOQUEADA: TIntegerField;
    CdsLookFiliaisFIL_VALORMENSALIDADE: TFloatField;
    CdsLookFiliaisFIL_DATAVENDMENSALIDADE: TDateField;
    CdsLookFiliaisFIL_MESCORRENTEPAGO: TIntegerField;
    CdsLookFiliaisPERMITIRATUALIZAR: TIntegerField;
    CdsLookFiliaisFIL_USER_QTD: TIntegerField;
    CdsLookFiliaisFIL_CPF: TStringField;
    CdsLookFiliaisFIL_IDENTIDADE: TStringField;
    CdsLookFiliaisQTD_USER: TIntegerField;
    CdsLookFiliaisDIA_VENCIMENTO: TIntegerField;
    CdsLookFiliaisFIL_TIPOCLIENTE: TStringField;
    CdsLookFiliaisEMP_BLOQUEIATUDO: TIntegerField;
    CdsLookFiliaisFIL_END_COMPLEMENTO: TStringField;
    CdsLookFiliaisFIL_END_NUMERO: TStringField;
    CdsLookFiliaisFIL_END_COD_IBGEUF: TStringField;
    CdsLookFiliaisFIL_END_COD_IBGEMUNIC: TStringField;
    CdsLookFiliaisFIL_INSMUN: TStringField;
    CdsLookFiliaisFIL_CNAE: TStringField;
    CdsLookFiliaisFIL_INSESTSUBTITUTO: TStringField;
    CdsLookFiliaisFIL_PAIS: TStringField;
    CdsLookFiliaisFIL_USARANFE: TStringField;
    RvRenderPDF1: TRvRenderPDF;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbQuantidade: TLabel;
    lbValorTotal: TLabel;
    RVDS_NFE: TRvDataSetConnection;
    RVPRJ_NFE: TRvProject;
    PopupMenuUtilitarios: TPopupMenu;
    FazerbackupXMLdalista1: TMenuItem;
    N2: TMenuItem;
    FazerbackuptodosXML1: TMenuItem;
    JvSpecialProgress1: TJvSpecialProgress;
    N3: TMenuItem;
    VerificarAtulizaes1: TMenuItem;
    ACBrNFe: TACBrNFe;
    N4: TMenuItem;
    Cancelamentodiretodenfe1: TMenuItem;
    qryconshistorico: TSQLQuery;
    qryconshistoricoCOD_EMPRESA: TIntegerField;
    qryconshistoricoNOTA_FISCAL: TIntegerField;
    qryconshistoricoSERIE: TStringField;
    qryconshistoricoDATA_EMISSAO: TDateField;
    qryconshistoricoCHAVE: TStringField;
    qryconshistoricoSEQUENCIA: TIntegerField;
    qryconshistoricoAMBIENTE: TIntegerField;
    qryconshistoricoMODELO: TIntegerField;
    qryconshistoricoRECIBO: TStringField;
    qryconshistoricoSTATUS: TStringField;
    qryconshistoricoSERVIDOR: TStringField;
    qryconshistoricoPROTOCOLO: TStringField;
    qryconshistoricoCOD_CLIENTE: TIntegerField;
    qryconshistoricoCAMINHO: TStringField;
    qryconshistoricoFIL_CODIGO: TIntegerField;
    qryconshistoricoEMP_GRUPO: TIntegerField;
    qryconshistoricoDATA: TDateField;
    qryconshistoricoHORAS: TTimeField;
    qryconshistoricoUSER_NOME: TStringField;
    qryconshistoricoNOMECOMPUTADOR: TStringField;
    qryconshistoricoIPDAMAQUINA: TStringField;
    qryconshistoricoEMP_CODIGO: TIntegerField;
    qryconshistoricoFIL_CNPJ: TStringField;
    CdsLookFiliaisFIL_CORRETO: TIntegerField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    RxNotaFiscal: TJvMemoryData;
    RxNotaFiscalCOD_EMPRESA: TIntegerField;
    RxNotaFiscalNOTA_FISCAL: TIntegerField;
    RxNotaFiscalDATA_EMISSAO: TDateField;
    RxNotaFiscalSERIE: TStringField;
    RxNotaFiscalSTATUS_NFE: TStringField;
    RxNotaFiscalRAZAO_SOCIAL: TStringField;
    RxNotaFiscalCNPJCPF: TStringField;
    RxNotaFiscalVALOR_NOTA: TFloatField;
    RxNotaFiscalSTATUS: TStringField;
    RxNotaFiscalCHAVE: TStringField;
    RxNotaFiscalST: TIntegerField;
    RxNotaFiscalCAMINHO_XML: TStringField;
    RxNotaFiscalEMAIL: TStringField;
    RxNotaFiscalCOD_CLIENTE: TIntegerField;
    RxNotaFiscalMARCADO: TBooleanField;
    DBGridConsulta: TDBGrid;
    RxNotaFiscalCLI_RAZAO: TStringField;
    RxNotaFiscalCLI_CPFCNPJ: TStringField;
    QryConsultaNota: TSQLQuery;
    dsRxNotaFiscal: TDataSource;
    QryConsultaNotaCLI_CODIGO: TIntegerField;
    QryConsultaNotaCLI_RAZAO: TStringField;
    QryConsultaNotaCLI_EMAIL: TStringField;
    QryConsultaNotaCLI_CPFCNPJ: TStringField;
    QryConsultaNotaNOT_NUMERONFE: TIntegerField;
    QryConsultaNotaNOT_SERIE: TStringField;
    QryConsultaNotaDATA: TDateField;
    QryConsultaNotaNOT_TOTNOTA: TFMTBCDField;
    QryConsultaNotaNT_VALORTOTALSERVICO: TFMTBCDField;
    QryConsultaNotaNOT_STATUS_NFE: TIntegerField;
    QryConsultaNotaNOT_DATAEMISSAO: TDateField;
    QryConsultaNotaCAMINHO_XML: TStringField;
    QryConsultaNotaCAMINHO_PDF: TStringField;
    SQLQuery1: TSQLQuery;
    SQLQuery1FIL_CODIGO: TIntegerField;
    SQLQuery1CLI_CODIGO: TIntegerField;
    SQLQuery1CLI_CPFCNPJ: TStringField;
    SQLQuery1CLI_RAZAO: TStringField;
    SQLQuery1CLI_EMAIL: TStringField;
    SQLQuery1CLI_CONTATOEMAIL: TStringField;
    QryCliEmail: TSQLQuery;
    QryCliEmailFIL_CODIGO: TIntegerField;
    QryCliEmailCLI_CODIGO: TIntegerField;
    QryCliEmailCLI_CPFCNPJ: TStringField;
    QryCliEmailCLI_RAZAO: TStringField;
    QryCliEmailCLI_EMAIL: TStringField;
    QryCliEmailCLI_CONTATOEMAIL: TStringField;
    CsdQryFinanceiroFIL_CODIGO: TIntegerField;
    CsdQryFinanceiroTIT_CODIGO: TIntegerField;
    CsdQryFinanceiroPED_CODIGO: TIntegerField;
    CsdQryFinanceiroDELETADO: TIntegerField;
    CsdQryFinanceiroCLI_CODIGO: TIntegerField;
    CsdQryFinanceiroTIT_DTLCTO: TDateField;
    CsdQryFinanceiroTIT_VALOR: TFMTBCDField;
    CsdQryFinanceiroTIT_DESC: TStringField;
    CsdQryFinanceiroTIT_VENCIMENTO: TDateField;
    CsdQryFinanceiroTIT_STATUS: TIntegerField;
    CsdQryFinanceiroTIT_DTBAIXA: TDateField;
    CsdQryFinanceiroTIT_VALORPAGO: TFMTBCDField;
    CsdQryFinanceiroVEN_CODIGO: TIntegerField;
    CsdQryFinanceiroVEN_CODIGO_AG: TIntegerField;
    CsdQryFinanceiroVEN_COM: TFMTBCDField;
    CsdQryFinanceiroVEN_COM_AG: TFMTBCDField;
    CsdQryFinanceiroTIT_TIPO: TStringField;
    CsdQryFinanceiroTIT_NRORIG: TStringField;
    CsdQryFinanceiroPLANO_CODIGO: TIntegerField;
    CsdQryFinanceiroOS_CODIGO: TIntegerField;
    CsdQryFinanceiroCON_NUMERO: TStringField;
    CsdQryFinanceiroTIT_JUROS: TFMTBCDField;
    CsdQryFinanceiroVEN_CODIGO_AG_2: TIntegerField;
    CsdQryFinanceiroVEN_COM_AG_2: TFMTBCDField;
    CsdQryFinanceiroTIT_SALDO: TFMTBCDField;
    CsdQryFinanceiroTIT_CODIGO1: TIntegerField;
    CsdQryFinanceiroTIT_CODIGO2: TIntegerField;
    CsdQryFinanceiroTP_START: TStringField;
    CsdQryFinanceiroBCO_CODIGO: TIntegerField;
    CsdQryFinanceiroTIT_NUMEROORIGINAL: TStringField;
    CsdQryFinanceiroTIT_NUMERO: TStringField;
    CsdQryFinanceiroTIT_NFNUMERO: TStringField;
    CsdQryFinanceiroOS_NUM_OS: TIntegerField;
    CsdQryFinanceiroPP_VALOREXTEN: TStringField;
    CsdQryFinanceiroTIT_ORDEM: TStringField;
    CsdQryFinanceiroTIT_AGRUPAMENTO: TIntegerField;
    CsdQryFinanceiroTIT_AGRUPADOR: TStringField;
    CsdQryFinanceiroPC_CODIGO: TIntegerField;
    CsdQryFinanceiroMON_CODIGO: TIntegerField;
    CsdQryFinanceiroTIT_OBS: TBlobField;
    CsdQryFinanceiroEMP_CODIGO: TIntegerField;
    CsdQryFinanceiroCH_CODIGO: TIntegerField;
    CsdQryFinanceiroCH_NUMERO: TStringField;
    CsdQryFinanceiroCH_DATA: TDateField;
    CsdQryFinanceiroCH_DATAVENC: TDateField;
    CsdQryFinanceiroCH_VALOR: TFMTBCDField;
    CsdQryFinanceiroCH_DEST: TStringField;
    CsdQryFinanceiroCH_STATUS: TStringField;
    CsdQryFinanceiroCH_AGENCIA: TStringField;
    CsdQryFinanceiroFOR_CODIGO: TIntegerField;
    CsdQryFinanceiroCH_NUMEROCONTA: TStringField;
    CsdQryFinanceiroCH_NOMECORRENTISTA: TStringField;
    CsdQryFinanceiroCH_DATAREPASSE: TDateField;
    CsdQryFinanceiroFIN_CODIGO: TIntegerField;
    CsdQryFinanceiroCH_DIAS: TFMTBCDField;
    CsdQryFinanceiroCH_DATABAIXA: TDateField;
    CsdQryFinanceiroPP_VALORCOMISSAO: TFMTBCDField;
    CsdQryFinanceiroPP_VALORCOMISSAO_AG: TFMTBCDField;
    CsdQryFinanceiroPP_VALORCOMISSAO_AG_2: TFMTBCDField;
    CsdQryFinanceiroEMP_GRUPO: TIntegerField;
    CsdQryFinanceiroCH_OBS: TBlobField;
    CsdQryFinanceiroDATA: TDateField;
    CsdQryFinanceiroHORAS: TTimeField;
    CsdQryFinanceiroUSER_NOME: TStringField;
    CsdQryFinanceiroNOMECOMPUTADOR: TStringField;
    CsdQryFinanceiroIPDAMAQUINA: TStringField;
    CsdQryFinanceiroPC_PAI: TIntegerField;
    CsdQryFinanceiroTIT_BOLETOIMPRIMIDO: TStringField;
    CsdQryFinanceiroTIT_PERCENTUALJUROS: TFMTBCDField;
    CsdQryFinanceiroTIT_PERCENTUALMULTA: TFMTBCDField;
    CsdQryFinanceiroTIT_PERCENTUALDESCONTO: TFMTBCDField;
    CsdQryFinanceiroTIT_VALOROUTROSACRESCIMOS: TFMTBCDField;
    CsdQryFinanceiroTIT_DEMONSTRATIVO: TStringField;
    CsdQryFinanceiroTIT_INSTRUCAOCAIXA: TStringField;
    CsdQryFinanceiroTIT_NOSSONUMERO: TStringField;
    CsdQryFinanceiroTIT_DATAPAGAMENTO: TDateField;
    CsdQryFinanceiroTIT_DIASATRAZO: TIntegerField;
    CsdQryFinanceiroBOLETO_CON_CODIGO: TStringField;
    CsdQryFinanceiroBOLETO_CON_DIGITO: TStringField;
    CsdQryFinanceiroTIT_REMESSA_GERADA: TStringField;
    CsdQryFinanceiroTIT_CARTAOBANDEIRA: TStringField;
    CsdQryFinanceiroBOLETO_CON_CODIGO1: TStringField;
    CsdQryFinanceiroBOLETO_DATA_GERADO: TDateField;
    CsdQryFinanceiroTIT_DATAVENCEXTEN: TStringField;
    CsdQryFinanceiroFIN_CARTAO_NUMERO: TStringField;
    CsdQryFinanceiroFIN_CARTAO_NUMEROSEGURANCA: TStringField;
    CsdQryFinanceiroFIL_CNPJ: TStringField;
    CsdQryFinanceiroCLI_NOME: TStringField;
    CsdQryFinanceiroTIT_CONFERIDO: TStringField;
    QryItensFIL_CODIGO: TIntegerField;
    QryItensNOT_CODIGO: TIntegerField;
    QryItensNI_CODIGO: TIntegerField;
    QryItensPRO_CODIGO: TStringField;
    QryItensNI_QTD: TFMTBCDField;
    QryItensNI_VALORUN: TFMTBCDField;
    QryItensNI_SUBTOT: TFMTBCDField;
    QryItensDELETADO: TIntegerField;
    QryItensPRO_NOME: TStringField;
    QryItensMON_CODIGO: TIntegerField;
    QryItensEMP_CODIGO: TIntegerField;
    QryItensEMP_GRUPO: TIntegerField;
    QryItensDATA: TDateField;
    QryItensHORAS: TTimeField;
    QryItensUSER_NOME: TStringField;
    QryItensNOMECOMPUTADOR: TStringField;
    QryItensIPDAMAQUINA: TStringField;
    QryItensNI_BAIXADO: TIntegerField;
    QryItensFIL_CNPJ: TStringField;
    QryItensPRO_CODIGO_NCM: TStringField;
    QryItensNI_CFOP: TStringField;
    QryItensNI_VALOR_DESCONTO: TFMTBCDField;
    QryItensNI_ICMS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryItensNI_ICMS_VALOR: TFMTBCDField;
    QryItensNI_ICMS_ALIQUOTA: TFMTBCDField;
    QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryItensNI_VALOR_TOTAL: TFMTBCDField;
    QryItensNI_ICMSSUBS_ALIQUOTA: TFMTBCDField;
    QryItensNI_ICMSSUBS_VALOR: TFMTBCDField;
    QryItensNI_IPI_VALOR_BASE_CALCULO: TFMTBCDField;
    QryItensNI_PIS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryItensNI_IPI_ALIQUOTA: TFMTBCDField;
    QryItensNI_PIS_ALIQUOTA: TFMTBCDField;
    QryItensNI_IPI_VALOR: TFMTBCDField;
    QryItensNI_PIS_VALOR: TFMTBCDField;
    QryItensNI_COFINS_VALOR_BASE_CALCULO: TFMTBCDField;
    QryItensTRIBUTACOES_CODIGO: TIntegerField;
    QryItensNI_COFINS_ALIQUOTA: TFMTBCDField;
    QryItensNI_COFINS_VALOR: TFMTBCDField;
    QryItensNI_VALOR_FRETE: TFMTBCDField;
    QryItensNI_CST: TStringField;
    QryItensNI_UNID: TStringField;
    QryItensNI_EAN: TStringField;
    QryItensNI_VALORSEGURO: TFMTBCDField;
    QryItensNI_INFORMACAOADICIONAL: TStringField;
    QryItensNI_COFINS_ALIQUOTA_TIPO: TIntegerField;
    QryItensNI_PIS_ALIQUOTA_TIPO: TIntegerField;
    QryItensPRO_CODFABRICANTE: TStringField;
    QryItensVEIC_TPOP: TStringField;
    QryItensVEIC_CHASSI: TStringField;
    QryItensVEIC_CCOR: TStringField;
    QryItensVEIC_XCOR: TStringField;
    QryItensVEIC_POT: TStringField;
    QryItensVEIC_CILIN: TStringField;
    QryItensVEIC_PESOL: TStringField;
    QryItensVEIC_PESOB: TStringField;
    QryItensVEIC_NSERIE: TStringField;
    QryItensVEIC_TPCOMB: TStringField;
    QryItensVEIC_NMOTOR: TStringField;
    QryItensVEIC_CMT: TStringField;
    QryItensVEIC_DIST: TStringField;
    QryItensVEIC_RENAVAM: TStringField;
    QryItensVEIC_ANOMOD: TIntegerField;
    QryItensVEIC_ANOFAB: TIntegerField;
    QryItensVEIC_TPPINT: TStringField;
    QryItensVEIC_TPVEIC: TIntegerField;
    QryItensVEIC_ESPVEIC: TIntegerField;
    QryItensVEIC_VIN: TStringField;
    QryItensVEIC_CONDVEIC: TStringField;
    QryItensVEIC_CMOD: TStringField;
    QryItensVEIC_CM3: TStringField;
    QryItensVEIC_CMKG: TStringField;
    QryItensVEIC_CCORDENATRAN: TStringField;
    QryItensVEIC_LOTA: TStringField;
    QryItensVEIC_TPREST: TStringField;
    QryItensNI_MVA: TFMTBCDField;
    QryItensNI_PMVAST: TFMTBCDField;
    QryItensNI_PREDBCST: TFMTBCDField;
    QryItensNI_PESO: TFMTBCDField;
    QryItensNI_VALORREALDESCONTO: TFMTBCDField;
    IMPRIMENFERAVE1: TACBrNFeDANFERave;
    QryParametrosNFENFE_CODIGO: TIntegerField;
    QryParametrosNFENFE_CERTIFICADOCAMINHO: TStringField;
    QryParametrosNFENFE_CERTIFICADOSENHA: TStringField;
    QryParametrosNFENFE_CERTIFICADONUMEROSERIE: TStringField;
    QryParametrosNFENFE_GERALDANFERETRATO: TStringField;
    QryParametrosNFENFE_GERALFORMADEEMISSAO: TStringField;
    QryParametrosNFENFE_GERALCAMINHOLOGOMARCA: TStringField;
    QryParametrosNFENFE_GERALSALVARARQENVRESP: TStringField;
    QryParametrosNFENFE_WEBSERVICEUFDESTINO: TStringField;
    QryParametrosNFENFE_WEBSERVICEAMBIENTE: TStringField;
    QryParametrosNFENFE_WEBSERVICEVISUALIZARMSG: TIntegerField;
    QryParametrosNFENFE_PROXYHOST: TStringField;
    QryParametrosNFENFE_PROXYPORTA: TStringField;
    QryParametrosNFENFE_PROXYUSUARIO: TStringField;
    QryParametrosNFENFE_PROXYSENHA: TStringField;
    QryParametrosNFENFE_EMITENTECNPJ: TStringField;
    QryParametrosNFENFE_EMITENTEINSCESTAD: TStringField;
    QryParametrosNFENFE_EMITENTERAZAO: TStringField;
    QryParametrosNFENFE_EMITENTEFANTASIA: TStringField;
    QryParametrosNFENFE_EMITENTEFONE: TStringField;
    QryParametrosNFENFE_EMITENTECEP: TStringField;
    QryParametrosNFENFE_EMITENTELOGRADOURO: TStringField;
    QryParametrosNFENFE_EMITENTENUMERO: TStringField;
    QryParametrosNFENFE_EMITENTECOMPLEMENTO: TStringField;
    QryParametrosNFENFE_EMITENTEBAIRRO: TStringField;
    QryParametrosNFENFE_EMITENTECODCIDADE: TStringField;
    QryParametrosNFENFE_EMITENTECIDADE: TStringField;
    QryParametrosNFENFE_EMITENTEUF: TStringField;
    QryParametrosNFENFE_EMAILSMTP: TStringField;
    QryParametrosNFENFE_EMAILPORTA: TStringField;
    QryParametrosNFENFE_EMAILUSUARIO: TStringField;
    QryParametrosNFENFE_EMAILSENHA: TStringField;
    QryParametrosNFENFE_EMAILASSUNTO: TStringField;
    QryParametrosNFENFE_EMAILSMTPSEGURO: TIntegerField;
    QryParametrosNFENFE_EMAILMENSAGEM: TStringField;
    QryParametrosNFEFIL_CODIGO: TIntegerField;
    QryParametrosNFEMON_CODIGO: TIntegerField;
    QryParametrosNFEDELETADO: TIntegerField;
    QryParametrosNFEEMP_GRUPO: TIntegerField;
    QryParametrosNFEDATA: TDateField;
    QryParametrosNFEHORAS: TTimeField;
    QryParametrosNFEUSER_NOME: TStringField;
    QryParametrosNFENOMECOMPUTADOR: TStringField;
    QryParametrosNFEIPDAMAQUINA: TStringField;
    QryParametrosNFEEMP_CODIGO: TIntegerField;
    QryParametrosNFEFIL_CNPJ: TStringField;
    QryParametrosNFENFE_CAMINHOXML: TStringField;
    QryParametrosNFENEF_CAMINHOPDF: TStringField;
    QryParametrosNFENFE_CAMINHOCANCELADO: TStringField;
    QryParametrosNFENFE_CAMINHORAVE: TStringField;
    QryParametrosNFENFE_OPTANTESIMPLESNASCIONAL: TStringField;
    QryParametrosNFENFE_OBSAPARECENANOTA: TStringField;
    QryParametrosNFENFE_SERIE: TStringField;
    QryParametrosNFENFE_CFOPPADRAO: TStringField;
    QryParametrosNFENFE_TIPODERETE: TIntegerField;
    QryParametrosNFEIMPRIMENFECODIGOFABRICA: TStringField;
    QryParametrosNFECONTROLEESTOQUENFE: TStringField;
    QryItensPRO_ANP: TIntegerField;
    cdsCartaCorrecao: TClientDataSet;
    QryCartaCorrecao: TSQLQuery;
    DtsCartaCorrecao: TDataSetProvider;
    cdsCartaCorrecaoFIL_CODIGO: TIntegerField;
    cdsCartaCorrecaoNOT_CODIGO: TIntegerField;
    cdsCartaCorrecaoNOT_NR: TIntegerField;
    cdsCartaCorrecaoNOT_ESPECIE: TStringField;
    cdsCartaCorrecaoNOT_SERIE: TStringField;
    cdsCartaCorrecaoNOT_DATAEMISSAO: TDateField;
    cdsCartaCorrecaoNOT_DATASAIDA: TDateField;
    cdsCartaCorrecaoPED_CODIGO: TStringField;
    cdsCartaCorrecaoNOT_TOTITENS: TFMTBCDField;
    cdsCartaCorrecaoNOT_TOTNOTA: TFMTBCDField;
    cdsCartaCorrecaoTRA_CODIGO: TIntegerField;
    cdsCartaCorrecaoNOT_CPFCNPJ: TStringField;
    cdsCartaCorrecaoNOT_DESCONTO: TFMTBCDField;
    cdsCartaCorrecaoNOT_ACRECIMO: TFMTBCDField;
    cdsCartaCorrecaoNOT_VALIPI: TFMTBCDField;
    cdsCartaCorrecaoNOT_ALIQIPI: TFloatField;
    cdsCartaCorrecaoNOT_BASEIPI: TFMTBCDField;
    cdsCartaCorrecaoDELETADO: TIntegerField;
    cdsCartaCorrecaoNOT_VALICM: TFMTBCDField;
    cdsCartaCorrecaoNOT_ALIQICM: TFloatField;
    cdsCartaCorrecaoNOT_BASEICM: TFMTBCDField;
    cdsCartaCorrecaoNOT_SITUACAO: TStringField;
    cdsCartaCorrecaoNOT_BASESUBS: TFMTBCDField;
    cdsCartaCorrecaoNOT_VALSUBS: TFMTBCDField;
    cdsCartaCorrecaoFRETE: TIntegerField;
    cdsCartaCorrecaoNOT_VALFRETE: TFMTBCDField;
    cdsCartaCorrecaoNOT_VALSEGURO: TFMTBCDField;
    cdsCartaCorrecaoNOT_DESPACESS: TFMTBCDField;
    cdsCartaCorrecaoCLI_CODIGO: TIntegerField;
    cdsCartaCorrecaoNOT_VOLUMES: TIntegerField;
    cdsCartaCorrecaoNOT_TIPO_VOLUMES: TStringField;
    cdsCartaCorrecaoNOT_ALIQSUBS: TFloatField;
    cdsCartaCorrecaoCFOP_COF: TStringField;
    cdsCartaCorrecaoNT_VALORISSQN: TFMTBCDField;
    cdsCartaCorrecaoNT_VALORTOTALSERVICO: TFMTBCDField;
    cdsCartaCorrecaoNOT_VALISSQN: TFMTBCDField;
    cdsCartaCorrecaoNOT_BASEISSQN: TFMTBCDField;
    cdsCartaCorrecaoNOT_ALIISSQN: TFloatField;
    cdsCartaCorrecaoNOT_ITENS_DESCONTO: TFMTBCDField;
    cdsCartaCorrecaoNOT_ITENSSERVICO_DESCONTO: TFMTBCDField;
    cdsCartaCorrecaoNOT_ITENS_TOTALPROD: TFMTBCDField;
    cdsCartaCorrecaoNOT_ITENS_SERV_SUBTOTAL: TFMTBCDField;
    cdsCartaCorrecaoOS_CODIGO: TIntegerField;
    cdsCartaCorrecaoMON_CODIGO: TIntegerField;
    cdsCartaCorrecaoNOT_FORMAPGMT: TStringField;
    cdsCartaCorrecaoNOT_OBSERVACAO: TBlobField;
    cdsCartaCorrecaoEMP_GRUPO: TIntegerField;
    cdsCartaCorrecaoDATA: TDateField;
    cdsCartaCorrecaoHORAS: TTimeField;
    cdsCartaCorrecaoUSER_NOME: TStringField;
    cdsCartaCorrecaoNOMECOMPUTADOR: TStringField;
    cdsCartaCorrecaoIPDAMAQUINA: TStringField;
    cdsCartaCorrecaoEMP_CODIGO: TIntegerField;
    cdsCartaCorrecaoNOT_TRANSRAZAO: TStringField;
    cdsCartaCorrecaoNOT_TRANSPLACA: TStringField;
    cdsCartaCorrecaoNOT_TRANSCNPJCPF: TStringField;
    cdsCartaCorrecaoNOT_TRANSENDERECO: TStringField;
    cdsCartaCorrecaoNOT_TRANSMUNICIPIO: TStringField;
    cdsCartaCorrecaoNOT_TRANSUF2: TStringField;
    cdsCartaCorrecaoNOT_TRANSQTD: TStringField;
    cdsCartaCorrecaoNOT_TRANSESPECIE: TStringField;
    cdsCartaCorrecaoNOT_TRANSMARCA: TStringField;
    cdsCartaCorrecaoNOT_TRANSNUMERO: TStringField;
    cdsCartaCorrecaoNOT_TRANSPESOBRUTO: TStringField;
    cdsCartaCorrecaoNOT_TRANSPESOLIQUIDO: TStringField;
    cdsCartaCorrecaoNOT_TRANSINSCRICAO: TStringField;
    cdsCartaCorrecaoNOT_TRANSUF: TStringField;
    cdsCartaCorrecaoDUPLICATA1: TStringField;
    cdsCartaCorrecaoDUPLICATA2: TStringField;
    cdsCartaCorrecaoDUPLICATA3: TStringField;
    cdsCartaCorrecaoDUPLICATA4: TStringField;
    cdsCartaCorrecaoDUPLICATA5: TStringField;
    cdsCartaCorrecaoDUPLICATA6: TStringField;
    cdsCartaCorrecaoVENCIMENTO1: TStringField;
    cdsCartaCorrecaoVENCIMENTO2: TStringField;
    cdsCartaCorrecaoVENCIMENTO3: TStringField;
    cdsCartaCorrecaoVENCIMENTO4: TStringField;
    cdsCartaCorrecaoVENCIMENTO5: TStringField;
    cdsCartaCorrecaoVENCIMENTO6: TStringField;
    cdsCartaCorrecaoVALOR1: TStringField;
    cdsCartaCorrecaoVALOR2: TStringField;
    cdsCartaCorrecaoVALOR3: TStringField;
    cdsCartaCorrecaoVALOR4: TStringField;
    cdsCartaCorrecaoVALOR5: TStringField;
    cdsCartaCorrecaoVALOR6: TStringField;
    cdsCartaCorrecaoBOLETOAUTOMATICO: TIntegerField;
    cdsCartaCorrecaoNOT_STATUS: TStringField;
    cdsCartaCorrecaoNOT_HORASAIDA: TTimeField;
    cdsCartaCorrecaoNOT_ENTRADASAIDA: TIntegerField;
    cdsCartaCorrecaoNOT_OBSCORPOITEM: TStringField;
    cdsCartaCorrecaoFIL_CNPJ: TStringField;
    cdsCartaCorrecaoNOT_CHAVENFE: TStringField;
    cdsCartaCorrecaoNOT_CAMINHOXMLNFE: TStringField;
    cdsCartaCorrecaoNOT_LOTE: TIntegerField;
    cdsCartaCorrecaoMEMORESP: TStringField;
    cdsCartaCorrecaoWBRESPOSTA: TStringField;
    cdsCartaCorrecaoMEMOLOG: TStringField;
    cdsCartaCorrecaoMEMORESPWS: TStringField;
    cdsCartaCorrecaoMEMODADOS: TStringField;
    cdsCartaCorrecaoNOT_BASEPIS: TFMTBCDField;
    cdsCartaCorrecaoNOT_ALIQPIS: TFloatField;
    cdsCartaCorrecaoNOT_VALPIS: TFMTBCDField;
    cdsCartaCorrecaoNOT_BASECOFINS: TFMTBCDField;
    cdsCartaCorrecaoNOT_ALIQCOFINS: TFloatField;
    cdsCartaCorrecaoNOT_VALCOFINS: TFMTBCDField;
    cdsCartaCorrecaoNOT_FORMADEEMISSAO: TStringField;
    cdsCartaCorrecaoNOT_FORMAPGMTNFE: TStringField;
    cdsCartaCorrecaoNOT_FINALILDADEEMISSAO: TStringField;
    cdsCartaCorrecaoNOT_TIPOIMPRESSAODANFE: TStringField;
    cdsCartaCorrecaoNOT_CALCULARAUTOMATICO: TIntegerField;
    cdsCartaCorrecaoNOT_TIPO: TStringField;
    cdsCartaCorrecaoNOT_STATUS_NFE: TIntegerField;
    cdsCartaCorrecaoNOT_EFCSTATUS: TIntegerField;
    cdsCartaCorrecaoNOT_NUMERONFE: TIntegerField;
    cdsCartaCorrecaoCFOP_DESCRICAO: TStringField;
    cdsCartaCorrecaoNFE_OPTANTESIMPLESNASCIONAL: TStringField;
    cdsCartaCorrecaoNOT_OBSFISCO: TStringField;
    cdsCartaCorrecaoNOT_NFESTATUSSTRING: TStringField;
    cdsCartaCorrecaoNOT_SEQUENCIA_CORRECAO: TIntegerField;
    QryCadNotaFIL_CODIGO: TIntegerField;
    QryCadNotaNOT_CODIGO: TIntegerField;
    QryCadNotaNOT_NR: TIntegerField;
    QryCadNotaNOT_ESPECIE: TStringField;
    QryCadNotaNOT_SERIE: TStringField;
    QryCadNotaNOT_DATAEMISSAO: TDateField;
    QryCadNotaNOT_DATASAIDA: TDateField;
    QryCadNotaPED_CODIGO: TStringField;
    QryCadNotaNOT_TOTITENS: TFMTBCDField;
    QryCadNotaNOT_TOTNOTA: TFMTBCDField;
    QryCadNotaTRA_CODIGO: TIntegerField;
    QryCadNotaNOT_CPFCNPJ: TStringField;
    QryCadNotaNOT_DESCONTO: TFMTBCDField;
    QryCadNotaNOT_ACRECIMO: TFMTBCDField;
    QryCadNotaNOT_VALIPI: TFMTBCDField;
    QryCadNotaNOT_ALIQIPI: TFMTBCDField;
    QryCadNotaNOT_BASEIPI: TFMTBCDField;
    QryCadNotaDELETADO: TIntegerField;
    QryCadNotaNOT_VALICM: TFMTBCDField;
    QryCadNotaNOT_ALIQICM: TFMTBCDField;
    QryCadNotaNOT_BASEICM: TFMTBCDField;
    QryCadNotaNOT_SITUACAO: TStringField;
    QryCadNotaNOT_BASESUBS: TFMTBCDField;
    QryCadNotaNOT_VALSUBS: TFMTBCDField;
    QryCadNotaFRETE: TIntegerField;
    QryCadNotaNOT_VALFRETE: TFMTBCDField;
    QryCadNotaNOT_VALSEGURO: TFMTBCDField;
    QryCadNotaNOT_DESPACESS: TFMTBCDField;
    QryCadNotaCLI_CODIGO: TIntegerField;
    QryCadNotaNOT_VOLUMES: TIntegerField;
    QryCadNotaNOT_TIPO_VOLUMES: TStringField;
    QryCadNotaNOT_ALIQSUBS: TFMTBCDField;
    QryCadNotaCFOP_COF: TStringField;
    QryCadNotaNT_VALORISSQN: TFMTBCDField;
    QryCadNotaNT_VALORTOTALSERVICO: TFMTBCDField;
    QryCadNotaNOT_VALISSQN: TFMTBCDField;
    QryCadNotaNOT_BASEISSQN: TFMTBCDField;
    QryCadNotaNOT_ALIISSQN: TFMTBCDField;
    QryCadNotaNOT_ITENS_DESCONTO: TFMTBCDField;
    QryCadNotaNOT_ITENSSERVICO_DESCONTO: TFMTBCDField;
    QryCadNotaNOT_ITENS_TOTALPROD: TFMTBCDField;
    QryCadNotaNOT_ITENS_SERV_SUBTOTAL: TFMTBCDField;
    QryCadNotaOS_CODIGO: TIntegerField;
    QryCadNotaMON_CODIGO: TIntegerField;
    QryCadNotaNOT_FORMAPGMT: TStringField;
    QryCadNotaNOT_OBSERVACAO: TBlobField;
    QryCadNotaEMP_GRUPO: TIntegerField;
    QryCadNotaDATA: TDateField;
    QryCadNotaHORAS: TTimeField;
    QryCadNotaUSER_NOME: TStringField;
    QryCadNotaNOMECOMPUTADOR: TStringField;
    QryCadNotaIPDAMAQUINA: TStringField;
    QryCadNotaEMP_CODIGO: TIntegerField;
    QryCadNotaNOT_TRANSRAZAO: TStringField;
    QryCadNotaNOT_TRANSPLACA: TStringField;
    QryCadNotaNOT_TRANSCNPJCPF: TStringField;
    QryCadNotaNOT_TRANSENDERECO: TStringField;
    QryCadNotaNOT_TRANSMUNICIPIO: TStringField;
    QryCadNotaNOT_TRANSUF2: TStringField;
    QryCadNotaNOT_TRANSQTD: TStringField;
    QryCadNotaNOT_TRANSESPECIE: TStringField;
    QryCadNotaNOT_TRANSMARCA: TStringField;
    QryCadNotaNOT_TRANSNUMERO: TStringField;
    QryCadNotaNOT_TRANSPESOBRUTO: TStringField;
    QryCadNotaNOT_TRANSPESOLIQUIDO: TStringField;
    QryCadNotaNOT_TRANSINSCRICAO: TStringField;
    QryCadNotaNOT_TRANSUF: TStringField;
    QryCadNotaDUPLICATA1: TStringField;
    QryCadNotaDUPLICATA2: TStringField;
    QryCadNotaDUPLICATA3: TStringField;
    QryCadNotaDUPLICATA4: TStringField;
    QryCadNotaDUPLICATA5: TStringField;
    QryCadNotaDUPLICATA6: TStringField;
    QryCadNotaVENCIMENTO1: TStringField;
    QryCadNotaVENCIMENTO2: TStringField;
    QryCadNotaVENCIMENTO3: TStringField;
    QryCadNotaVENCIMENTO4: TStringField;
    QryCadNotaVENCIMENTO5: TStringField;
    QryCadNotaVENCIMENTO6: TStringField;
    QryCadNotaVALOR1: TStringField;
    QryCadNotaVALOR2: TStringField;
    QryCadNotaVALOR3: TStringField;
    QryCadNotaVALOR4: TStringField;
    QryCadNotaVALOR5: TStringField;
    QryCadNotaVALOR6: TStringField;
    QryCadNotaBOLETOAUTOMATICO: TIntegerField;
    QryCadNotaNOT_STATUS: TStringField;
    QryCadNotaNOT_HORASAIDA: TTimeField;
    QryCadNotaNOT_ENTRADASAIDA: TIntegerField;
    QryCadNotaNOT_OBSCORPOITEM: TStringField;
    QryCadNotaFIL_CNPJ: TStringField;
    QryCadNotaNOT_CHAVENFE: TStringField;
    QryCadNotaNOT_CAMINHOXMLNFE: TStringField;
    QryCadNotaNOT_LOTE: TIntegerField;
    QryCadNotaMEMORESP: TStringField;
    QryCadNotaWBRESPOSTA: TStringField;
    QryCadNotaMEMOLOG: TStringField;
    QryCadNotaMEMORESPWS: TStringField;
    QryCadNotaMEMODADOS: TStringField;
    QryCadNotaNOT_BASEPIS: TFMTBCDField;
    QryCadNotaNOT_ALIQPIS: TFMTBCDField;
    QryCadNotaNOT_VALPIS: TFMTBCDField;
    QryCadNotaNOT_BASECOFINS: TFMTBCDField;
    QryCadNotaNOT_ALIQCOFINS: TFMTBCDField;
    QryCadNotaNOT_VALCOFINS: TFMTBCDField;
    QryCadNotaNOT_FORMADEEMISSAO: TStringField;
    QryCadNotaNOT_FORMAPGMTNFE: TStringField;
    QryCadNotaNOT_FINALILDADEEMISSAO: TStringField;
    QryCadNotaNOT_TIPOIMPRESSAODANFE: TStringField;
    QryCadNotaNOT_CALCULARAUTOMATICO: TIntegerField;
    QryCadNotaNOT_TIPO: TStringField;
    QryCadNotaNOT_STATUS_NFE: TIntegerField;
    QryCadNotaNOT_NUMERONFE: TIntegerField;
    QryCadNotaEMP_GRUPO_1: TIntegerField;
    QryCadNotaEMP_CODIGO_1: TIntegerField;
    QryCadNotaFIL_CODIGO_1: TIntegerField;
    QryCadNotaCLI_CODIGO_1: TIntegerField;
    QryCadNotaCLI_CPFCNPJ: TStringField;
    QryCadNotaCLI_RGINSC: TStringField;
    QryCadNotaCLI_RAZAO: TStringField;
    QryCadNotaCLI_FANTASIA: TStringField;
    QryCadNotaCLI_TIPO: TStringField;
    QryCadNotaCLI_SEXO: TStringField;
    QryCadNotaFLAG_DATAALT: TDateField;
    QryCadNotaDELETADO_1: TIntegerField;
    QryCadNotaCLI_END_ENDERECO: TStringField;
    QryCadNotaCLI_END_BAIRRO: TStringField;
    QryCadNotaCLI_END_CID_CODIGO: TIntegerField;
    QryCadNotaCLI_END_CID_NOME: TStringField;
    QryCadNotaCLI_END_CID_UF: TStringField;
    QryCadNotaCLI_END_CEP: TStringField;
    QryCadNotaCLI_FONE: TStringField;
    QryCadNotaCLI_FAX: TStringField;
    QryCadNotaCLI_BANCO: TStringField;
    QryCadNotaCLI_AGENCIA: TStringField;
    QryCadNotaCLI_DTCADASTRO: TDateField;
    QryCadNotaCLI_EMAIL: TStringField;
    QryCadNotaVEN_CODIGO: TIntegerField;
    QryCadNotaVEN_CODIGO_AG: TIntegerField;
    QryCadNotaCLI_NOMECONTATO: TStringField;
    QryCadNotaCLI_CONTATOEMAIL: TStringField;
    QryCadNotaCLI_DATANASC: TDateField;
    QryCadNotaCLI_VENDEDOR: TIntegerField;
    QryCadNotaVEN_COM: TFloatField;
    QryCadNotaAG_COM: TFloatField;
    QryCadNotaTP_CODIGO: TStringField;
    QryCadNotaCLI_LIMITE: TFloatField;
    QryCadNotaCLI_BLOQUEADO: TIntegerField;
    QryCadNotaFP_CODIGO: TIntegerField;
    QryCadNotaTC_CODIGO: TIntegerField;
    QryCadNotaCLI_MALA: TIntegerField;
    QryCadNotaCLI_TOTALDESCONTO: TFloatField;
    QryCadNotaCLI_FOTO: TStringField;
    QryCadNotaVEN_CODIGO_AG_2: TIntegerField;
    QryCadNotaAG_COM_2: TFloatField;
    QryCadNotaCLI_END_ENDERECO_TRABALHO: TStringField;
    QryCadNotaCLI_END_BAIRRO_TRABALHO: TStringField;
    QryCadNotaCLI_END_CID_CODIGO_TRABALHO: TIntegerField;
    QryCadNotaCLI_END_CID_NOME_TRABALHO: TStringField;
    QryCadNotaCLI_END_CID_UF_TRABALHO: TStringField;
    QryCadNotaCLI_END_CEP_TRABALHO: TStringField;
    QryCadNotaCLI_FONE_TRABALHO: TStringField;
    QryCadNotaCLI_FAX_TRABALHO: TStringField;
    QryCadNotaCLI_CELULAR: TStringField;
    QryCadNotaCLI_LOCALTRABALHO: TStringField;
    QryCadNotaCLI_NOMEGERENTE_TRABALHO: TStringField;
    QryCadNotaCLI_END_COMPLETO: TStringField;
    QryCadNotaCLI_END_COMPLEMENTO: TStringField;
    QryCadNotaCLI_END_NUMERO: TStringField;
    QryCadNotaCLI_END_LT: TStringField;
    QryCadNotaCLI_END_QD: TStringField;
    QryCadNotaCLI_END_PONTOREFERENCIA: TStringField;
    QryCadNotaMON_CODIGO_1: TIntegerField;
    QryCadNotaCLI_CODIGOPAI: TIntegerField;
    QryCadNotaTI_CODIGO: TIntegerField;
    QryCadNotaCLI_OBS: TBlobField;
    QryCadNotaCLI_GRAUESCOLARIDADE: TStringField;
    QryCadNotaCLI_POSUICARTAO: TStringField;
    QryCadNotaVISA: TIntegerField;
    QryCadNotaMASTERCAR: TIntegerField;
    QryCadNotaDEBITO: TIntegerField;
    QryCadNotaAMERICAM: TIntegerField;
    QryCadNotaOUTROS: TIntegerField;
    QryCadNotaCLI_NUMERODACONTA: TStringField;
    QryCadNotaCLI_BAN_CLIENTEDESDE: TDateField;
    QryCadNotaCLI_BAN_NOMEGERENTE: TStringField;
    QryCadNotaCLI_BAN_FONE: TStringField;
    QryCadNotaCLI_BAN_FONE_2: TStringField;
    QryCadNotaCLI_BAN_FONE_3: TStringField;
    QryCadNotaCLI_BAN_NOMEGERENTE_2: TStringField;
    QryCadNotaCLI_BAN_NOMEGERENTE_3: TStringField;
    QryCadNotaCLI_BAN_CLIENTEDESDE_1: TDateField;
    QryCadNotaCLI_BAN_CLIENTEDESDE_3: TDateField;
    QryCadNotaCLI_NUMERODACONTA_2: TStringField;
    QryCadNotaCLI_NUMERODACONTA_3: TStringField;
    QryCadNotaCLI_BANCO_2: TStringField;
    QryCadNotaCLI_BANCO_3: TStringField;
    QryCadNotaCLI_AGENCIA_2: TStringField;
    QryCadNotaCLI_AGENCIA_3: TStringField;
    QryCadNotaCLI_RENDAFAMILHAR: TStringField;
    QryCadNotaCLI_FICHADO: TStringField;
    QryCadNotaCLI_TEMPOTRABALHO: TStringField;
    QryCadNotaCLI_ESTADOCIVIL: TStringField;
    QryCadNotaCLI_NOMECONJUGE: TStringField;
    QryCadNotaCLI_CONJUGECPF: TStringField;
    QryCadNotaCLI_CONJUGERG: TStringField;
    QryCadNotaCLI_CONJUGEDATANASC: TDateField;
    QryCadNotaCLI_CONJUGEEMAIL: TStringField;
    QryCadNotaCLI_NOMEMAE: TStringField;
    QryCadNotaCLI_NOMEPAI: TStringField;
    QryCadNotaCLI_FONEMAE: TStringField;
    QryCadNotaCLI_FONEMAE_2: TStringField;
    QryCadNotaCLI_FONEPAI: TStringField;
    QryCadNotaCLI_FONEPAI_2: TStringField;
    QryCadNotaCLI_TIPOMORADIA: TStringField;
    QryCadNotaCLI_TIPOCONSTRUCOA: TStringField;
    QryCadNotaCLI_MORADIA: TStringField;
    QryCadNotaCLI_AGUA: TFloatField;
    QryCadNotaCLI_ENERGIA: TFloatField;
    QryCadNotaCLI_POSSUEMANIMAIS: TStringField;
    QryCadNotaCLI_QTDANIMAIS: TStringField;
    QryCadNotaCLI_NOMEGERENTE_2: TStringField;
    QryCadNotaCLI_NOMEGERENTE_3: TStringField;
    QryCadNotaCLI_NOMEGERENTE_1: TStringField;
    QryCadNotaDATA_1: TDateField;
    QryCadNotaHORAS_1: TTimeField;
    QryCadNotaUSER_NOME_1: TStringField;
    QryCadNotaNOMECOMPUTADOR_1: TStringField;
    QryCadNotaIPDAMAQUINA_1: TStringField;
    QryCadNotaCLI_PROVI: TStringField;
    QryCadNotaCLI_NUMEROMATRICULA: TStringField;
    QryCadNotaCLI_COBR_ENDERECO: TStringField;
    QryCadNotaCLI_COBR_BAIRRO: TStringField;
    QryCadNotaCLI_COBR_CEP: TStringField;
    QryCadNotaCLI_COBR_LT: TStringField;
    QryCadNotaCLI_COBR_QD: TStringField;
    QryCadNotaCLI_COBR_NUMERO: TStringField;
    QryCadNotaCLI_COBR_COMPLEMENTO: TStringField;
    QryCadNotaCLI_COBR_CID_CODIGO: TIntegerField;
    QryCadNotaCLI_COBR_CID_NOME: TStringField;
    QryCadNotaCLI_COBR_UF: TStringField;
    QryCadNotaCLI_COBR_PONTOREFERENCIA: TStringField;
    QryCadNotaCLI_COBR_TELEFONE: TStringField;
    QryCadNotaCLI_COBR_CELULAR: TStringField;
    QryCadNotaCLI_COBR_FONE: TStringField;
    QryCadNotaCLI_ENTR_BAIRRO: TStringField;
    QryCadNotaCLI_ENTR_CELULAR: TStringField;
    QryCadNotaCLI_ENTR_CEP: TStringField;
    QryCadNotaCLI_ENTR_CID_CODIGO: TIntegerField;
    QryCadNotaCLI_ENTR_CID_NOME: TStringField;
    QryCadNotaCLI_ENTR_COMPLEMENTO: TStringField;
    QryCadNotaCLI_ENTR_ENDERECO: TStringField;
    QryCadNotaCLI_ENTR_FONE: TStringField;
    QryCadNotaCLI_ENTR_LT: TStringField;
    QryCadNotaCLI_ENTR_NUMERO: TStringField;
    QryCadNotaCLI_ENTR_PONTOREFERENCIA: TStringField;
    QryCadNotaCLI_ENTR_QD: TStringField;
    QryCadNotaCLI_ENTR_TELEFONE: TStringField;
    QryCadNotaCLI_ENTR_UF: TStringField;
    QryCadNotaCLI_COBR_FAX: TStringField;
    QryCadNotaCLI_ENTR_FAX: TStringField;
    QryCadNotaROTA_CODIGO: TIntegerField;
    QryCadNotaTRA_CODIGO_1: TIntegerField;
    QryCadNotaCLI_AGUATIPO: TStringField;
    QryCadNotaCLI_HOMEPAGE: TStringField;
    QryCadNotaCON_NUMERO: TStringField;
    QryCadNotaPC_CODIGO: TIntegerField;
    QryCadNotaCLI_ATIVO_INATIVO: TIntegerField;
    QryCadNotaCLI_INATIVOAPOS: TIntegerField;
    QryCadNotaCLI_VENDASOMENTEAVISTA: TIntegerField;
    QryCadNotaCLI_BLOQUEIOAUTOAPOS: TIntegerField;
    QryCadNotaCLI_DATAULTIMACOMPRA: TDateField;
    QryCadNotaCLI_DATAULTIMAOS: TDateField;
    QryCadNotaCLI_SKYPE: TStringField;
    QryCadNotaCLI_MSN: TStringField;
    QryCadNotaCLI_NEXTEL: TStringField;
    QryCadNotaCLI_RAMOATIVIDADE: TStringField;
    QryCadNotaCLI_NOMESOCIO: TStringField;
    QryCadNotaCLI_BLOQMOTIVO: TStringField;
    QryCadNotaFIL_CNPJ_1: TStringField;
    QryCadNotaCLI_END_COD_IBGEUF: TStringField;
    QryCadNotaCLI_END_COD_IBGEMUNIC: TStringField;
    QryCadNotaCLI_PAIS: TStringField;
    QryCadNotaCFOP_DESCRICAO: TStringField;
    QryCadNotaNOT_OBSFISCO: TStringField;
    QryCadNotaNFE_OPTANTESIMPLESNASCIONAL: TStringField;
    QryCadNotaTOTALIMPOSTOTRANSPARENCIA: TFMTBCDField;
    QryVazia: TSQLQuery;
    QryConsultaNotaCHAVE: TStringField;
    QryConsultaNotaCAMINHO: TStringField;
    QryTotaisNfeTOTALIMPOSTOTRANSPARENCIA: TFMTBCDField;
    QryItensTOTALIMPOSTOTRANSPARENCIA: TFMTBCDField;
    Panel4: TPanel;
    btnStatusServico: TBitBtn;
    btnValidarNFe: TBitBtn;
    btnCancelamento: TBitBtn;
    btnInutiliza: TBitBtn;
    btnReemitirDanfe: TBitBtn;
    buttonCCe: TBitBtn;
    btnEnviarEMail: TBitBtn;
    btnImprimir: TBitBtn;
    btnUtilitarios: TBitBtn;
    btnFechar: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    CbTipoConsulta: TComboBox;
    Label2: TLabel;
    cbStatusNota: TComboBox;
    EDataInicial: TJvDateEdit;
    lblTipo: TLabel;
    lblDtFinal: TLabel;
    EDataFinal: TJvDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    lbAvisoNFNaoEnviada: TLabel;
    btnConsultar: TBitBtn;
    QrNotas: TSQLQuery;
    DspNotas: TDataSetProvider;
    CdsNotas: TClientDataSet;
    DsNotas: TDataSource;
    QrNotasCOD_EMPRESA: TIntegerField;
    QrNotasCOD_CLIENTE: TIntegerField;
    QrNotasNOTA_FISCAL: TIntegerField;
    QrNotasSERIE: TStringField;
    QrNotasDATA_EMISSAO: TDateField;
    QrNotasNOT_TOTNOTA: TFMTBCDField;
    QrNotasNT_VALORTOTALSERVICO: TFMTBCDField;
    QrNotasSTATUS_NFE: TIntegerField;
    QrNotasST: TIntegerField;
    QrNotasRAZAO_SOCIAL: TStringField;
    QrNotasEMAIL: TStringField;
    QrNotasCNPJCPF: TStringField;
    QrNotasNOT_DATAEMISSAO: TDateField;
    QrNotasCHAVE: TStringField;
    QrNotasCAMINHO: TStringField;
    QrNotasNOT_NFEDEVOLUCAO: TStringField;
    QrNotasVALOR_NOTA: TFMTBCDField;
    QrNotasSTATUS: TStringField;
    CdsNotasCOD_EMPRESA: TIntegerField;
    CdsNotasCOD_CLIENTE: TIntegerField;
    CdsNotasNOTA_FISCAL: TIntegerField;
    CdsNotasSERIE: TStringField;
    CdsNotasDATA_EMISSAO: TDateField;
    CdsNotasNOT_TOTNOTA: TFMTBCDField;
    CdsNotasNT_VALORTOTALSERVICO: TFMTBCDField;
    CdsNotasSTATUS_NFE: TIntegerField;
    CdsNotasST: TIntegerField;
    CdsNotasRAZAO_SOCIAL: TStringField;
    CdsNotasEMAIL: TStringField;
    CdsNotasCNPJCPF: TStringField;
    CdsNotasNOT_DATAEMISSAO: TDateField;
    CdsNotasCHAVE: TStringField;
    CdsNotasCAMINHO: TStringField;
    CdsNotasNOT_NFEDEVOLUCAO: TStringField;
    CdsNotasVALOR_NOTA: TFMTBCDField;
    CdsNotasSTATUS: TStringField;
    CdsNotasCAMINHO_PDF: TStringField;
    CdsNotasCAMINHO_XML: TStringField;
    QrNotasMARCADO: TStringField;
    CdsNotasMARCADO: TStringField;
    Panel1: TPanel;
    shpCancelada: TShape;
    Label3: TLabel;
    Label8: TLabel;
    shpValidada: TShape;
    shpDevolucao: TShape;
    Label9: TLabel;
    QrItens: TSQLQuery;
    DspItens: TDataSetProvider;
    CdsItens: TClientDataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField11: TStringField;
    DateField3: TDateField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    DateField4: TDateField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    FMTBCDField6: TFMTBCDField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DsItens: TDataSource;
    QrNotasCFOP_DESCRICAO: TStringField;
    QrNotasCFOP_COF: TStringField;
    QrNotasNOT_FORMAPGMTNFE: TStringField;
    QrNotasNFE_OPTANTESIMPLESNASCIONAL: TStringField;
    QrNotasCLI_END_CEP: TStringField;
    QrNotasCLI_END_ENDERECO: TStringField;
    QrNotasCLI_END_NUMERO: TStringField;
    QrNotasCLI_END_COMPLEMENTO: TStringField;
    QrNotasCLI_END_BAIRRO: TStringField;
    QrNotasCLI_END_COD_IBGEMUNIC: TStringField;
    QrNotasCLI_END_CID_NOME: TStringField;
    QrNotasCLI_END_CID_UF: TStringField;
    QrNotasCLI_FONE: TStringField;
    QrNotasCLI_TIPO: TStringField;
    QrNotasCLI_RGINSC: TStringField;
    QrNotasCLI_PAIS: TStringField;
    CdsNotasCFOP_DESCRICAO: TStringField;
    CdsNotasCFOP_COF: TStringField;
    CdsNotasNOT_FORMAPGMTNFE: TStringField;
    CdsNotasNFE_OPTANTESIMPLESNASCIONAL: TStringField;
    CdsNotasCLI_END_CEP: TStringField;
    CdsNotasCLI_END_ENDERECO: TStringField;
    CdsNotasCLI_END_NUMERO: TStringField;
    CdsNotasCLI_END_COMPLEMENTO: TStringField;
    CdsNotasCLI_END_BAIRRO: TStringField;
    CdsNotasCLI_END_COD_IBGEMUNIC: TStringField;
    CdsNotasCLI_END_CID_NOME: TStringField;
    CdsNotasCLI_END_CID_UF: TStringField;
    CdsNotasCLI_FONE: TStringField;
    CdsNotasCLI_TIPO: TStringField;
    CdsNotasCLI_RGINSC: TStringField;
    CdsNotasCLI_PAIS: TStringField;
    QrNotasTIPO_NOTA_FISCAL: TIntegerField;
    QrNotasNOME_TIPO_NOTA_FISCAL: TStringField;
    CdsNotasNOME_TIPO_NOTA_FISCAL: TStringField;
    CdsNotasTIPO_NOTA_FISCAL: TIntegerField;
    ACBrNFSe: TACBrNFSe;
    QryParametrosNFENFSE_CAMINHOSCHEMAS: TStringField;
    QrItensServico: TSQLQuery;
    DspItensServico: TDataSetProvider;
    CdsItensServico: TClientDataSet;
    QrNotasNOT_CODIGO: TIntegerField;
    CdsNotasNOT_CODIGO: TIntegerField;
    CdsLookFiliaisVEND_CODIGO: TIntegerField;
    CdsLookFiliaisMENSALIDADEDOMESPAGA: TIntegerField;
    CdsLookFiliaisAVISARDOBLOQUEIO: TIntegerField;
    CdsLookFiliaisSERVICO_RAMO_ATUACAO: TStringField;
    CdsLookFiliaisCODIGO_TRIBUTACAO_MUNICIPIO: TStringField;
    QrNotasNFSE_NUMERO_RPS: TIntegerField;
    CdsNotasNFSE_NUMERO_RPS: TIntegerField;
    QrLoteRPS: TSQLQuery;
    CdsItensServicoFIL_CODIGO: TIntegerField;
    CdsItensServicoNOT_CODIGO: TIntegerField;
    CdsItensServicoNI_CODIGO: TIntegerField;
    CdsItensServicoDELETADO: TIntegerField;
    CdsItensServicoPRO_CODIGO: TStringField;
    CdsItensServicoNI_QTD: TFloatField;
    CdsItensServicoNI_VALORUN: TFMTBCDField;
    CdsItensServicoNI_VALORTOTAL: TFMTBCDField;
    CdsItensServicoSER_DESCRICAO: TStringField;
    CdsItensServicoNI_ALIQISSQN: TFMTBCDField;
    CdsItensServicoNI_TOTALISSQN: TFMTBCDField;
    CdsItensServicoMON_CODIGO: TIntegerField;
    CdsItensServicoEMP_GRUPO: TIntegerField;
    CdsItensServicoDATA: TDateField;
    CdsItensServicoHORAS: TTimeField;
    CdsItensServicoUSER_NOME: TStringField;
    CdsItensServicoNOMECOMPUTADOR: TStringField;
    CdsItensServicoIPDAMAQUINA: TStringField;
    CdsItensServicoEMP_CODIGO: TIntegerField;
    CdsItensServicoFIL_CNPJ: TStringField;
    CdsItensServicoTOTALIMPOSTOTRANSPARENCIA: TFMTBCDField;
    lblStatusValidar: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnValidarNFeClick(Sender: TObject);

    Procedure AtualizaStatusNotaFiscal(NotaFiscal : Integer; vStatus : String);


    Procedure AbreDados;
    Procedure ValidaEmpresa;
    Procedure ValidaCliente;
    procedure PreencheInterfaces;
    Procedure Mensagens(AStatus : Integer);
    procedure NotaFiscalSaida(NotaFiscal, CodCliente : Integer);

    procedure btnReemitirDanfeClick(Sender: TObject);
    procedure btnCancelamentoClick(Sender: TObject);
    procedure btnInutilizaClick(Sender: TObject);
    procedure ConsultaStatusNFe1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcbrNFeStatusChange(Sender: TObject);
    procedure QryParametrosNFEBeforeOpen(DataSet: TDataSet);
    procedure CbTipoConsultaChange(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridConsultaCellClick(Column: TColumn);
    procedure CdsLookFiliaisAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnEnviarEMailClick(Sender: TObject);
    procedure btnUtilitariosClick(Sender: TObject);
    procedure ProgressBackupProgress(Sender: TObject; var AContinue: Boolean);
    procedure FazerbackupXMLdalista1Click(Sender: TObject);
    procedure VerificarAtulizaes1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Cancelamentodiretodenfe1Click(Sender: TObject);
    procedure buttonCCeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FDSAFASFASDCalcFields(DataSet: TDataSet);
    procedure RxNotaFiscal1CalcFields(DataSet: TDataSet);
    procedure QryConsultaNotaCalcFields(DataSet: TDataSet);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure btnStatusServicoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure CdsNotasCalcFields(DataSet: TDataSet);
    procedure CdsNotasAfterScroll(DataSet: TDataSet);
    procedure DBGridConsultaDblClick(Sender: TObject);
  private
    fContingencia,
    CNPJ_EMPRESA,
    CodEstado: String;
    function Arredondar(AValor: Double; ADecimais: Integer): Double;
    function IsDigit(Texto: string): boolean;
    function SoNumero(Texto: String): String;
    procedure AjustaCamposData(AFocu: Boolean);
    procedure EnviaEmailCliente;
    procedure SelecionaNotaFiscal;
    function ExisteSelecionado: Boolean;
    procedure NFeAdicionaItens(ANFe: TNFe; ACodNota, ACodFilial, ACodEmpresa: string);
    procedure NFeAdicionaDadosTransportadora(ANFe: TNFe);
    procedure NFeAdicionaTotais(ANFe: TNFe; ACodNota, ACodFilial: string);
    procedure ConfiguraImagensBotoes;
    procedure ProcessaNotas;
    procedure ProcessaNFe(ATipo: string);
    procedure ProcessaNFSe;
    procedure ProcessaNFCe;
    procedure AlimentaComponenteNFSe(LoteNFSe, NumNFSe: String);
    function GerarNumeroLote(AFilCodigo: string): Integer;
    { Private declarations }
  public
    NFe: TNFe;
//    NFeW : TNFeW;

  //  NFeDanfe : TACBrNFeDANFERave;

    Ambiente, CamimhoNFe, EMailSMTP, EMailUSUARIO, EMailSENHA, EMailASSUNTO, EMailMENSAGEM: String;

    FormaContigencia, EMailPorta, EMailSeguro : Integer;



      { Public declarations }
  end;



var
  FNFSEletronica: TFNFSEletronica;

implementation

uses UModulo, UFPrincipal, UFuncoes, UFNFSCancelamento, UGeradorChaveNFe,
  UFormInutilizaNew, UFtpBackup, UXMLBackup, uVerificaUpdate, UFCartaCorrecao;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TFNFSEletronica.NotaFiscalSaida(NotaFiscal, CodCliente : Integer);
begin
  QryCadNota.Close;
  QryCadNota.SQL.Clear;
  QryCadNota.SQL.Add('Select                                                                                                        ');
  QryCadNota.SQL.Add('    nota.fil_codigo, nota.TOTALIMPOSTOTRANSPARENCIA,                                                          ');
  QryCadNota.SQL.Add('    nota.not_codigo,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_nr,                                                                                              ');
  QryCadNota.SQL.Add('    nota.not_especie,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_serie,                                                                                           ');
  QryCadNota.SQL.Add('    nota.not_dataemissao,                                                                                     ');
  QryCadNota.SQL.Add('    nota.not_datasaida,                                                                                       ');
  QryCadNota.SQL.Add('    nota.ped_codigo,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_totitens,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_totnota,                                                                                         ');
  QryCadNota.SQL.Add('    nota.tra_codigo,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_cpfcnpj,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_desconto,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_acrecimo,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_valipi,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_aliqipi,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_baseipi,                                                                                         ');
  QryCadNota.SQL.Add('    nota.deletado,                                                                                            ');
  QryCadNota.SQL.Add('    nota.not_valicm,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_aliqicm,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_baseicm,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_situacao,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_basesubs,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_valsubs,                                                                                         ');
  QryCadNota.SQL.Add('    nota.frete,                                                                                               ');
  QryCadNota.SQL.Add('    nota.not_valfrete,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_valseguro,                                                                                       ');
  QryCadNota.SQL.Add('    nota.not_despacess,                                                                                       ');
  QryCadNota.SQL.Add('    nota.cli_codigo,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_volumes,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_tipo_volumes,                                                                                    ');
  QryCadNota.SQL.Add('    nota.not_aliqsubs,                                                                                        ');
  QryCadNota.SQL.Add('    nota.cfop_cof,                                                                                            ');
  QryCadNota.SQL.Add('    nota.nt_valorissqn,                                                                                       ');
  QryCadNota.SQL.Add('    nota.nt_valortotalservico,                                                                                ');
  QryCadNota.SQL.Add('    nota.not_valissqn,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_baseissqn,                                                                                       ');
  QryCadNota.SQL.Add('    nota.not_aliissqn,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_itens_desconto,                                                                                  ');
  QryCadNota.SQL.Add('    nota.not_itensservico_desconto,                                                                           ');
  QryCadNota.SQL.Add('    nota.not_itens_totalprod,                                                                                 ');
  QryCadNota.SQL.Add('    nota.not_itens_serv_subtotal,                                                                             ');
  QryCadNota.SQL.Add('    nota.os_codigo,                                                                                           ');
  QryCadNota.SQL.Add('    nota.mon_codigo,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_formapgmt,                                                                                       ');
  QryCadNota.SQL.Add('    nota.not_observacao,                                                                                      ');
  QryCadNota.SQL.Add('    nota.emp_grupo,                                                                                           ');
  QryCadNota.SQL.Add('    nota.data,                                                                                                ');
  QryCadNota.SQL.Add('    nota.horas,                                                                                               ');
  QryCadNota.SQL.Add('    nota.user_nome,                                                                                           ');
  QryCadNota.SQL.Add('    nota.nomecomputador,                                                                                      ');
  QryCadNota.SQL.Add('    nota.ipdamaquina,                                                                                         ');
  QryCadNota.SQL.Add('    nota.emp_codigo,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_transrazao,                                                                                      ');
  QryCadNota.SQL.Add('    nota.not_transplaca,                                                                                      ');
  QryCadNota.SQL.Add('    nota.not_transcnpjcpf,                                                                                    ');
  QryCadNota.SQL.Add('    nota.not_transendereco,                                                                                   ');
  QryCadNota.SQL.Add('    nota.not_transmunicipio,                                                                                  ');
  QryCadNota.SQL.Add('    nota.not_transuf2,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_transqtd,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_transespecie,                                                                                    ');
  QryCadNota.SQL.Add('    nota.not_transmarca,                                                                                      ');
  QryCadNota.SQL.Add('    nota.not_transnumero,                                                                                     ');
  QryCadNota.SQL.Add('    nota.not_transpesobruto,                                                                                  ');
  QryCadNota.SQL.Add('    nota.not_transpesoliquido,                                                                                ');
  QryCadNota.SQL.Add('    nota.not_transinscricao,                                                                                  ');
  QryCadNota.SQL.Add('    nota.not_transuf,                                                                                         ');
  QryCadNota.SQL.Add('    nota.duplicata1,                                                                                          ');
  QryCadNota.SQL.Add('    nota.duplicata2,                                                                                          ');
  QryCadNota.SQL.Add('    nota.duplicata3,                                                                                          ');
  QryCadNota.SQL.Add('    nota.duplicata4,                                                                                          ');
  QryCadNota.SQL.Add('    nota.duplicata5,                                                                                          ');
  QryCadNota.SQL.Add('    nota.duplicata6,                                                                                          ');
  QryCadNota.SQL.Add('    nota.vencimento1,                                                                                         ');
  QryCadNota.SQL.Add('    nota.vencimento2,                                                                                         ');
  QryCadNota.SQL.Add('    nota.vencimento3,                                                                                         ');
  QryCadNota.SQL.Add('    nota.vencimento4,                                                                                         ');
  QryCadNota.SQL.Add('    nota.vencimento5,                                                                                         ');
  QryCadNota.SQL.Add('    nota.vencimento6,                                                                                         ');
  QryCadNota.SQL.Add('    nota.valor1,                                                                                              ');
  QryCadNota.SQL.Add('    nota.valor2,                                                                                              ');
  QryCadNota.SQL.Add('    nota.valor3,                                                                                              ');
  QryCadNota.SQL.Add('    nota.valor4,                                                                                              ');
  QryCadNota.SQL.Add('    nota.valor5,                                                                                              ');
  QryCadNota.SQL.Add('    nota.valor6,                                                                                              ');
  QryCadNota.SQL.Add('    nota.boletoautomatico,                                                                                    ');
  QryCadNota.SQL.Add('    nota.not_status,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_horasaida,                                                                                       ');
  QryCadNota.SQL.Add('    nota.not_entradasaida,                                                                                    ');
  QryCadNota.SQL.Add('    nota.not_obscorpoitem,                                                                                    ');
  QryCadNota.SQL.Add('    nota.fil_cnpj,                                                                                            ');
  QryCadNota.SQL.Add('    nota.not_chavenfe,                                                                                        ');
  QryCadNota.SQL.Add('    nota.not_caminhoxmlnfe,                                                                                   ');
  QryCadNota.SQL.Add('    nota.not_lote,                                                                                            ');
  QryCadNota.SQL.Add('    nota.memoresp,                                                                                            ');
  QryCadNota.SQL.Add('    nota.wbresposta,                                                                                          ');
  QryCadNota.SQL.Add('    nota.memolog,                                                                                             ');
  QryCadNota.SQL.Add('    nota.memorespws,                                                                                          ');
  QryCadNota.SQL.Add('    nota.memodados,                                                                                           ');
  QryCadNota.SQL.Add('    nota.not_basepis,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_aliqpis,                                                                                         ');
  QryCadNota.SQL.Add('    nota.not_valpis,                                                                                          ');
  QryCadNota.SQL.Add('    nota.not_basecofins,                                                                                      ');
  QryCadNota.SQL.Add('    nota.not_aliqcofins,                                                                                      ');
  QryCadNota.SQL.Add('    nota.not_valcofins,                                                                                       ');
  QryCadNota.SQL.Add('    nota.not_formadeemissao,                                                                                  ');
  QryCadNota.SQL.Add('    nota.not_formapgmtnfe,                                                                                    ');
  QryCadNota.SQL.Add('    nota.not_finalildadeemissao,                                                                              ');
  QryCadNota.SQL.Add('    nota.not_tipoimpressaodanfe,                                                                              ');
  QryCadNota.SQL.Add('    nota.not_calcularautomatico,                                                                              ');
  QryCadNota.SQL.Add('    nota.not_tipo,                                                                                            ');
  QryCadNota.SQL.Add('    nota.NOT_OBSFISCO,                                                                                        ');
  QryCadNota.SQL.Add('    nota.NOT_NUMERONFE,                                                                                       ');
  QryCadNota.SQL.Add('    nota.NOT_STATUS_NFE,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.emp_grupo,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.emp_codigo,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.fil_codigo,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_codigo,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_cpfcnpj,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_rginsc,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_razao,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_fantasia,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_tipo,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_sexo,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.flag_dataalt,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.deletado,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_end_endereco,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_end_bairro,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_end_cid_codigo,                                                                              ');
  QryCadNota.SQL.Add('    clientes.cli_end_cid_nome,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_end_cid_uf,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_end_cep,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_fone,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_fax,                                                                                         ');
  QryCadNota.SQL.Add('    clientes.cli_banco,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_agencia,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_dtcadastro,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_email,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.ven_codigo,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.ven_codigo_ag,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_nomecontato,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_contatoemail,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_datanasc,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_vendedor,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.ven_com,                                                                                         ');
  QryCadNota.SQL.Add('    clientes.ag_com,                                                                                          ');
  QryCadNota.SQL.Add('    clientes.tp_codigo,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_limite,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_bloqueado,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.fp_codigo,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.tc_codigo,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_mala,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_totaldesconto,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_foto,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.ven_codigo_ag_2,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.ag_com_2,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_end_endereco_trabalho,                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_end_bairro_trabalho,                                                                         ');
  QryCadNota.SQL.Add('    clientes.cli_end_cid_codigo_trabalho,                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_end_cid_nome_trabalho,                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_end_cid_uf_trabalho,                                                                         ');
  QryCadNota.SQL.Add('    clientes.cli_end_cep_trabalho,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_fone_trabalho,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_fax_trabalho,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_celular,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_localtrabalho,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_nomegerente_trabalho,                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_end_completo,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_end_complemento,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_end_numero,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_end_lt,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_end_qd,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_end_pontoreferencia,                                                                         ');
  QryCadNota.SQL.Add('    clientes.mon_codigo,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_codigopai,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.ti_codigo,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_obs,                                                                                         ');
  QryCadNota.SQL.Add('    clientes.cli_grauescolaridade,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_posuicartao,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.visa,                                                                                            ');
  QryCadNota.SQL.Add('    clientes.mastercar,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.debito,                                                                                          ');
  QryCadNota.SQL.Add('    clientes.americam,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.outros,                                                                                          ');
  QryCadNota.SQL.Add('    clientes.cli_numerodaconta,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_ban_clientedesde,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_ban_nomegerente,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_ban_fone,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_ban_fone_2,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_ban_fone_3,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_ban_nomegerente_2,                                                                           ');
  QryCadNota.SQL.Add('    clientes.cli_ban_nomegerente_3,                                                                           ');
  QryCadNota.SQL.Add('    clientes.cli_ban_clientedesde_1,                                                                          ');
  QryCadNota.SQL.Add('    clientes.cli_ban_clientedesde_3,                                                                          ');
  QryCadNota.SQL.Add('    clientes.cli_numerodaconta_2,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_numerodaconta_3,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_banco_2,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_banco_3,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_agencia_2,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_agencia_3,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_rendafamilhar,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_fichado,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_tempotrabalho,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_estadocivil,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_nomeconjuge,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_conjugecpf,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_conjugerg,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_conjugedatanasc,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_conjugeemail,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_nomemae,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_nomepai,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_fonemae,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_fonemae_2,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_fonepai,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_fonepai_2,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_tipomoradia,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_tipoconstrucoa,                                                                              ');
  QryCadNota.SQL.Add('    clientes.cli_moradia,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_agua,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_energia,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_possuemanimais,                                                                              ');
  QryCadNota.SQL.Add('    clientes.cli_qtdanimais,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.cli_nomegerente_2,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_nomegerente_3,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_nomegerente_1,                                                                               ');
  QryCadNota.SQL.Add('    clientes.data,                                                                                            ');
  QryCadNota.SQL.Add('    clientes.horas,                                                                                           ');
  QryCadNota.SQL.Add('    clientes.user_nome,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.nomecomputador,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.ipdamaquina,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_provi,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_numeromatricula,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_endereco,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_bairro,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_cep,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_lt,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_qd,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_numero,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_complemento,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_cid_codigo,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_cid_nome,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_uf,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_pontoreferencia,                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_telefone,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_celular,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_fone,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_entr_bairro,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_entr_celular,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_entr_cep,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_entr_cid_codigo,                                                                             ');
  QryCadNota.SQL.Add('    clientes.cli_entr_cid_nome,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_entr_complemento,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_entr_endereco,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_entr_fone,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_entr_lt,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_entr_numero,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_entr_pontoreferencia,                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_entr_qd,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_entr_telefone,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_entr_uf,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.cli_cobr_fax,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_entr_fax,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.rota_codigo,                                                                                     ');
  QryCadNota.SQL.Add('    clientes.tra_codigo,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_aguatipo,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.cli_homepage,                                                                                    ');
  QryCadNota.SQL.Add('    clientes.con_numero,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.pc_codigo,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_ativo_inativo,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_inativoapos,                                                                                 ');
  QryCadNota.SQL.Add('    clientes.cli_vendasomenteavista,                                                                          ');
  QryCadNota.SQL.Add('    clientes.cli_bloqueioautoapos,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_dataultimacompra,                                                                            ');
  QryCadNota.SQL.Add('    clientes.cli_dataultimaos,                                                                                ');
  QryCadNota.SQL.Add('    clientes.cli_skype,                                                                                       ');
  QryCadNota.SQL.Add('    clientes.cli_msn,                                                                                         ');
  QryCadNota.SQL.Add('    clientes.cli_nextel,                                                                                      ');
  QryCadNota.SQL.Add('    clientes.cli_ramoatividade,                                                                               ');
  QryCadNota.SQL.Add('    clientes.cli_nomesocio,                                                                                   ');
  QryCadNota.SQL.Add('    clientes.cli_bloqmotivo,                                                                                  ');
  QryCadNota.SQL.Add('    clientes.fil_cnpj,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_pais,                                                                                        ');
  QryCadNota.SQL.Add('    clientes.cli_end_cod_ibgeuf,                                                                              ');
  QryCadNota.SQL.Add('    clientes.cli_end_cod_ibgemunic,nota.CFOP_DESCRICAO, nota.NFE_OPTANTESIMPLESNASCIONAL                      ');
  QryCadNota.SQL.Add('from nota                                                                                                     ');
  QryCadNota.SQL.Add('   inner join clientes on (nota.EMP_codigo = clientes.EMP_codigo) and (nota.cli_codigo = clientes.cli_codigo) ');

  QryCadNota.SQL.Add('WHERE NOTA.FIL_CODIGO     =' + cdslookfiliaisfil_codigo.AsString );
  QryCadNota.SQL.Add('AND   NOTA.NOT_NUMERONFE  =' + CdsNotasNOTA_FISCAL.AsString); //ToStr(NotaFiscal));
/// QryCadNota.SQL.Add('AND   CLIENTES.CLI_CODIGO =' +  CdsNotasCOD_CLIENTE.asstring);//tToStr(CodCliente));
//  QryCadNota.SQL.SaveToFile('sql1.txt');
//ShowMessage(QryCadNota.SQL.Text);
  QryCadNota.Open;

  //ShowMessage(IntToStr(QryCadNota.RecordCount));
end;

Procedure TFNFSEletronica.Mensagens(AStatus: Integer);
begin
   lblStatusValidar.Caption := UFuncoes.RetornaMensagemStatus(AStatus);
   lblStatusValidar.Repaint;
end;

Function Iif(pCond: Boolean; pTrue, pFalse: Variant): Variant;
begin
   if pCond then

      Result := pTrue
   else
      Result := pFalse;
end;

Procedure TFNFSEletronica.AtualizaStatusNotaFiscal(NotaFiscal : Integer; vStatus : String);
begin
  // Validada
  QryCadNota.Close;
  QryCadNota.SQL.Clear;
  QryCadNota.SQL.Add('UPDATE NOTA                            ');
  QryCadNota.SQL.Add('SET    NOT_STATUS_NFE = :STATUS        ');
  QryCadNota.SQL.Add('WHERE  FIL_CODIGO     = :FIL_CODIGO    ');
  QryCadNota.SQL.Add('AND    NOT_NUMERONFE  = :NOT_NUMERONFE ');
  QryCadNota.ParamByName('FIL_CODIGO').Value    := cdslookfiliaisfil_codigo.AsInteger;
  QryCadNota.ParamByName('NOT_NUMERONFE').Value := NotaFiscal;
  QryCadNota.ParamByName('STATUS').Value        := vStatus;
  QryCadNota.ExecSQL;
  QryCadNota.Close;
end;

procedure TFNFSEletronica.btnStatusServicoClick(Sender: TObject);
begin
   AcbrNFe.WebServices.StatusServico.Executar;
   Mensagens(AcbrNFe.WebServices.StatusServico.cStat);
end;

{ TODO -oEric -cReescrita :  Apenas para melhorar a escrita }
Procedure TFNFSEletronica.ValidaEmpresa;
begin
   // Pesquisa os Dados Cadastrais da Empresa;
  if not (CdsLookFiliaisFIL_CNPJ.AsString='') then
  begin

     if (CdsLookFiliaisFIL_NOME.AsString = '') Or (CdsLookFiliaisFIL_CNPJ.AsString = '') then
     begin
        Application.MessageBox('Empresa n„o possui os dados necess·rios, ' + #13#10 +
                               'para validaÁ„o da NF-e.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;

     if (CdsLookFiliaisFIL_END_ENDERECO.AsString = '') then begin
        Application.MessageBox('Empresa n„o possui endereÁo.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;

     if (CdsLookFiliaisFIL_INSCEST.AsString = '') then begin
        Application.MessageBox('Empresa n„o possui inscriÁ„o estadual.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;

     if (CdsLookFiliaisFIL_END_CEP.AsString = '') then begin
        Application.MessageBox('Empresa n„o possui cep.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;

     if (CdsLookFiliaisFIL_END_BAIRRO.AsString = '') then begin
        Application.MessageBox('Empresa n„o possui bairro.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;

     if (CdsLookFiliaisFIL_END_CID_NOME.AsString = '') then begin
        Application.MessageBox('Empresa n„o possui municÌpio.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;

     if (CdsLookFiliaisFIL_END_CID_UF.AsString = '') then begin
        Application.MessageBox('Empresa n„o possui estado.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     end;
  end
  else begin
     Application.MessageBox('Empresa inexistente.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
     Abort;
  end;
end;

procedure TFNFSEletronica.VerificarAtulizaes1Click(Sender: TObject);
begin
  WinExec('UpdaterNFE.exe',SW_SHOWNORMAL);
end;

Procedure TFNFSEletronica.ValidaCliente;
begin
  NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

  if (QryCadNotaCLI_RAZAO.AsString = '')   Or
    (QryCadNotaCLI_CPFCNPJ.AsString = '') then begin

    Application.MessageBox('Cliente n„o possui os dados necess·rios ' + #13#10 +
                           'para validaÁ„o da NF-e.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
    Abort;
  end;

  if (QryCadNotaCLI_CODIGO.AsInteger > 0) then begin

    if (QryCadNotaCLI_END_ENDERECO.AsString = '') then begin
      Application.MessageBox('Cliente n„o possui endereÁo.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    end;

    if (QryCadNotaCLI_END_CEP.AsString = '') then begin
      Application.MessageBox('Cliente n„o possui cep.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    end;

    if (QryCadNotaCLI_END_BAIRRO.AsString = '') then begin
      Application.MessageBox('Cliente n„o possui bairro.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    end;

    if (QryCadNotaCLI_END_CID_NOME.AsString = '') then begin
      Application.MessageBox('Cliente n„o possui municÌpio.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    end;

    if (QryCadNotaCLI_END_CID_UF.AsString = '') then begin
      Application.MessageBox('Cliente n„o possui estado.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    end;
  end else begin
    Application.MessageBox('Cliente n„o possui endereÁo.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
    Abort;
  end;
end;

procedure TFNFSEletronica.FormShow(Sender: TObject);
begin
 ABREDADOS;
end;

procedure TFNFSEletronica.ProgressBackupProgress(Sender: TObject;
  var AContinue: Boolean);
begin
BackupXML();
end;

procedure TFNFSEletronica.btnConsultarClick(Sender: TObject);
   (*
      FunÁ„o respons·vel apenas por validar a data inicial e final informados;
   *)
   function ValidaDatas: Boolean;
   begin
      Result := True;
      case CbTipoConsulta.ItemIndex Of
         0 :
         begin
            if EDataInicial.Date = 0 then
            begin
               MensagemAtencao('Informe a Data InicÌal.');
               EDataInicial.SetFocus;
               Result := False;
            end;

            if EDataFinal.Date = 0 then
            begin
               MensagemAtencao('Informe a Data Final.');
               EDataFinal.SetFocus;
               Result := False;
            end;

            if EDataInicial.Date > EDataFinal.Date then
            begin
               MensagemAtencao('A Data Final n„o Pode ser Menor que A Data InicÌal.');
               EDataInicial.SetFocus;
               Result := False;
            end;
         end;
      end;
   end;
var
   sDataIni,
   sDataFim: string;
begin
   if (Ambiente = 'H') Or (Ambiente = 'P') then
   begin
      MensagemAtencao('Tipo de Ambiente Inv·lido.');
      btnConsultar.SetFocus;

      Abort;
   end;

   ValidaEmpresa;

   lblStatusValidar.Caption := '';

   (*
      Valida os dados informados nos campos de datas;
   *)
   if not ValidaDatas then
      Abort;

   sDataIni := FormatDateTime('mm/dd/yyyy', StrToDate(EDataInicial.Text));
   sDataFim := FormatDateTime('mm/dd/yyyy', StrToDate(EDataFinal.Text));

   (*
      Valor do Combo de Status com o item index:
      0. ValidaÁ„o Normal Sem Retorno
      1. Erro na ValidaÁ„o do Arquivo
      2. ValidaÁ„o ContingÍncia Sem Retorno
      3. ValidaÁ„o SCAN Sem Retorno
      4 NF-e Validada
      5 NF-e Cancelada
      6 NF-e Inutilizada
      7 N„o Validada
      8 NF-e DevoluÁ„o
      9 Todos
   *)
   CdsNotas.Close;
   CdsNotas.Params.Clear;
   CdsNotas.FetchParams;
   CdsNotas.Params.ParamByName('PDATA_INI').AsString := sDataIni;
   CdsNotas.Params.ParamByName('PDATA_FIM').AsString := sDataFim;

   (*
      Se n„o for devoluÁ„o, o par‚metro "PDEVOLUCAO", deve receber 0 (zero);
      Se for, o par‚metro "PSTATUS_NOTA" deve receber 0 (zero);
   *)
   if cbStatusNota.ItemIndex <> 8 then
      CdsNotas.Params.ParamByName('PDEVOLUCAO').AsString := '0'
   else
   begin
      CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString  := '0';
      CdsNotas.Params.ParamByName('PDEVOLUCAO').AsString    := 'SIM';
   end;

   case cbStatusNota.ItemIndex of
      0: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '1';
      1: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '2';
      2: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '3';
      3: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '4';
      4: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '5';
      5: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '6';
      6: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '7';
      7: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '9';
      9: CdsNotas.Params.ParamByName('PSTATUS_NOTA').AsString := '0';
   end;

   CdsNotas.Open;

   lbQuantidade.Caption := FormatFloat('###,###,##0', CdsNotas.RecordCount);
   lbValorTotal.Caption := FormatFloat('###,###,##0.00', 0);

   with TClientDataSet.Create(Self) do
   begin
      try
         CloneCursor(CdsNotas, False);
         Filter   := 'STATUS_NFE = 9';
         Filtered := True;

         lbAvisoNFNaoEnviada.Visible := not IsEmpty;
      finally
         Free;
      end;
   end;

   CdsNotas.Last;
   CdsNotas.First;
end;


Function TFNFSEletronica.SoNumero(Texto : String) : String;
var
Ind    : Integer;
TmpRet : String;
begin
TmpRet := '';
for Ind := 1 to Length(Texto) do
    begin
    if IsDigit(Copy(Texto,Ind,1)) then
       begin
       TmpRet := TmpRet + Copy(Texto, Ind, 1);
       end;
    end;
Result := TmpRet;
end;

function TFNFSEletronica.IsDigit(Texto: string): boolean;
begin
 result := true;
 try
    StrToInt(Texto);
 except
    result := false;
 end;
end;

procedure TFNFSEletronica.btnEnviarEMailClick(Sender: TObject);
begin
   EnviaEmailCliente;
end;

procedure TFNFSEletronica.btnFecharClick(Sender: TObject);
begin
   if Application.MessageBox( 'Tem certeza que deseja sair do sistema ?', 'Sair...',
   MB_ICONQUESTION + MB_YESNO ) = ID_YES
   then begin
   try
   WinExec('TaskKill -f -im Sistemas.exe', SW_HIDE);
   Application.Terminate;
   FINALLY
   WinExec('TaskKill -f -im Sistemas.exe', SW_HIDE);
   Application.Terminate;
   END;
   end;
   Abort;

end;

procedure TFNFSEletronica.FormKeyPress(Sender: TObject; var Key: Char);
Var Z : Integer;
begin
   if Key =  #13 then begin
      Key := #0;
      SelectNext(ActiveControl, True, True);
   end;

   if key = #27 then begin

      Z := Application.MessageBox ('Tem certeza que deseja sair do formul·rio?', 'A T E N « √ O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2);

      if Z = MrYes then begin
         Close;
      end;
   end;
end;

procedure TFNFSEletronica.FormPaint(Sender: TObject);
var
  Atualizador: TUpdate;
begin
  Atualizador := TUpdate.Create;
  with Atualizador do
  begin
    Host       := 'ftp.dotcompany.com.br';
    UserName   := 'dotcompany';
    PassWord   := 'reboot7901';
    directory  := '/www/';
    FileName   := 'Sistemas.exe';
  end;
  //update no inicio desativado
  //Atualizador.Update;
end;

function TFNFSEletronica.ExisteSelecionado: Boolean;
begin
   with TClientDataSet.Create(Self) do
   begin
      try
         CloneCursor(CdsNotas, False);

         while not Eof do
         begin
            if FieldByName('MARCADO').AsString = 'S' then
            begin
               Result := True;
               Exit;
            end;

            Next;
         end;

         Result := False;
      finally
         Free;
      end;
   end;
end;

procedure TFNFSEletronica.ProcessaNFe(ATipo: string);
VAR
  Ok : Boolean;
  valorimposto,
  valorimposto1 : String;
  I,
  CodPis,
  CodOperacaoPis,
  CodIPI,
  CodCofins,
  CodOperacaoCofins : Integer;
  totaldesconto : Variant;
  CFOP : string;

  LNotaFiscal: ACBrNFeNotasFiscais.NotaFiscal;

  Status, sNotaFiscal, _Sequencia,x,y : Integer;
  NumeroRecibo, sDataHora, sSerie : String;
  arquivos_backup:array[0..1] of string;
  cnpj:string;
  stats,Modo:string;

  LAlgumSelecionado: Boolean;
begin
   AcbrNFe.NotasFiscais.Clear;

   // teste
   AcbrNFe.Configuracoes.Geral.VersaoDF := ve310; 


   IMPRIMENFERAVE1.Logo := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
   IMPRIMENFERAVE1.NumCopias := 1;

   if ATipo = '1' then
   begin
      ACBrNFe.Configuracoes.Geral.ModeloDF := moNFe;
      IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, Copy(QryParametrosNFE.FieldByName('NFE_GERALDANFERETRATO').AsString, 1, 1));
   end
   else
   begin
      ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
      IMPRIMENFERAVE1.TipoDANFE := tiNFCe;
   end;

   lblStatusValidar.Caption := '';


   with CdsNotas do
   begin
      First;
      DisableControls;
      try
         (*
            Filtra somente notas do tipo de produto, que estejam marcadas e
            que o status seja diferente de 5 e 6;
         *)
         Filtered := False;
         Filter   :=
            'TIPO_NOTA_FISCAL IN (' + ATipo + ') AND ' +
            'MARCADO = ' + QuotedStr('S') + ' AND ' +
            'NOT STATUS_NFE IN (5, 6)';
         Filtered := True;

         while not Eof do
         begin
            LNotaFiscal := AcbrNFe.NotasFiscais.Add;

            with LNotaFiscal.NFe do
            begin
               Application.ProcessMessages;

               infNFe.ID := CdsNotasNOTA_FISCAL.AsString;

               (* Preenche Nota Fiscal *)
               NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

               Ide.natOp     := CdsNotas.FieldByName('CFOP_DESCRICAO').AsString; // Dangelo Mudar para DescriÁ„o
               infNFe.ID     := IntToStr(CdsNotas.FieldByName('NOTA_FISCAL').AsInteger);
               Ide.nNF       := CdsNotas.FieldByName('NOTA_FISCAL').AsInteger;
               Ide.cNF       := CdsNotas.FieldByName('NOTA_FISCAL').AsInteger;

               if ATipo = '1' then
                  Ide.modelo    := 55
               else
               begin
                  Ide.modelo    := 65; // NFCE
                  Ide.indPres   := pcPresencial;
               end;

               if CdsNotas.FieldByName('SERIE').AsString = '' then
               begin
                  MensagemAtencao('Nota Fiscal N„o Possui SÈrie');
                  btnConsultar.SetFocus;
                  Abort;
               end
               else
                  Ide.serie := StrToInt(CdsNotas.FieldByName('SERIE').AsString);

               Ide.dEmi      := Date;//QryCadNotaNOT_DATAEMISSAO.AsDateTime;
               Ide.dSaiEnt   := Date;//QryCadNotaNOT_DATASAIDA.AsDateTime;
               Ide.tpAmb     := StrToTpAmb(Ok, Ambiente);

               Case FormaContigencia Of
                  1 : Ide.tpEmis := teNormal;
                  2 : Ide.tpEmis := teContingencia;
                  3 : Ide.tpEmis := teSCAN;
                  4 : Ide.tpEmis := teDPEC;
                  5 : Ide.tpEmis := teFSDA;
               end;

               if ATipo = '3' then
               begin
                  //indIEDest

                  with pag.Add do //PAGAMENTOS apenas para NFC-e
                  begin
                    tPag := fpDinheiro;
                    vPag := CdsNotas.FieldByName('VALOR_NOTA').AsCurrency;
                  end;
               end;

               Ide.verProc := '1.0.0.0';
               CFOP := RemoveChar(CdsNotas.FieldByName('CFOP_COF').AsString);
               CFOP := Copy(CFOP, 1, 4);

               // Tipo (0-Entrada / 1-SaÌda)
               if (StrToInt(CFOP) > 4999) then
                  Ide.tpNF := tnSaida
               else
                  Ide.tpNF := tnEntrada;

               // CondiÁ„o de Pagamento
               if CdsNotas.FieldByName('NOT_FORMAPGMTNFE').AsString = 'Pagamento ‡ Prazo.' then
                  Ide.indPag := ipPrazo
               else
               begin
                  if CdsNotas.FieldByName('NOT_FORMAPGMTNFE').AsString = 'Pagamento ‡ vista.' then
                     Ide.indPag := ipVista
                  else
                    Ide.indPag := ipOutras;
               end;

               Ide.cUF    := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEUF.AsString));
               Ide.cMunFG := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString));

               // **** Preenche Empresa ****
               Emit.xNome   := CdsLookFiliaisFIL_NOME.AsString;
               Emit.CNPJCPF := CdsLookFiliaisFIL_CNPJ.AsString;
               Emit.xFant   := CdsLookFiliaisFIL_NOMEFANTASIA.AsString;



               // Pesquisa o endereÁo da Empresa
               Emit.enderEmit.xLgr    := CdsLookFiliaisFIL_END_ENDERECO.AsString;

               Emit.IE                := CdsLookFiliaisFIL_INSCEST.AsString;
               if ATipo = '1' then
               begin
                  Emit.CNAE    := CdsLookFiliaisFIL_CNAE.AsString;
               end;

               Emit.enderEmit.fone    := CdsLookFiliaisFIL_FONE.AsString;
               Emit.enderEmit.CEP     := StrToInt(RemoveChar(CdsLookFiliaisFIL_END_CEP.AsString));

               if CdsLookFiliaisFIL_END_NUMERO.AsString <> '' then
                  Emit.enderEmit.nro     := CdsLookFiliaisFIL_END_NUMERO.AsString
               else
                  Emit.enderEmit.nro     := '0';

               Emit.enderEmit.xCpl    := CdsLookFiliaisFIL_END_COMPLEMENTO.AsString;
               Emit.enderEmit.xBairro := CdsLookFiliaisFIL_END_BAIRRO.AsString;
               Emit.enderEmit.cMun    := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString));
               Emit.enderEmit.xMun    := Trim(CdsLookFiliaisFIL_END_CID_NOME.AsString);
               Emit.enderEmit.UF      := Trim(CdsLookFiliaisFIL_END_CID_UF.AsString);

               //Emit.enderEmit.cPais   := 1058;      // ARRUMAR VENDER PARA OUTRO PAIS
               //Emit.enderEmit.xPais   := 'BRASIL';

               if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '' then
               begin
                  MensagemAtencao('TABELA A - CÛdigo de Regime Tribut·rio - CRT N„o pode estar vazio!' + SKIP + 'Escolha um codigo Na ConfiguraÁ„o da NF-e, Parte Contabel.');
                  Abort;
               end;

               if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '1' then
                  Emit.CRT := crtSimplesNacional;

               if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '2' then
                  Emit.CRT := crtSimplesExcessoReceita;

               if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString= '3' then
                  Emit.CRT := crtRegimeNormal;

               // Preenche Cliente;
               ValidaCliente;

               NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

               // Cadastrais do Cliente
               Dest.xNome             := CdsNotas.FieldByName('RAZAO_SOCIAL').AsString;
               Dest.CNPJCPF           := RemoveChar(CdsNotas.FieldByName('CNPJCPF').AsString);

               // endereÁo do Cliente
               Dest.enderDest.CEP     := StrToInt(RemoveChar(CdsNotas.FieldByName('CLI_END_CEP').AsString));
               Dest.enderDest.xLgr    := CdsNotas.FieldByName('CLI_END_ENDERECO').AsString;
               Dest.enderDest.nro     := CdsNotas.FieldByName('CLI_END_NUMERO').AsString;
               Dest.enderDest.xCpl    := CdsNotas.FieldByName('CLI_END_COMPLEMENTO').AsString;
               Dest.enderDest.xBairro := CdsNotas.FieldByName('CLI_END_BAIRRO').AsString;

               if CdsNotas.FieldByName('CLI_END_COD_IBGEMUNIC').AsString = '' then
               begin
                  MensagemAtencao('Cliente N„o Possui CÛdigo IBGE.');
                  btnConsultar.SetFocus;
                  Abort;
               end;

               Dest.enderDest.cMun    := StrToInt(Trim(CdsNotas.FieldByName('CLI_END_COD_IBGEMUNIC').AsString));
               Dest.enderDest.xMun    := CdsNotas.FieldByName('CLI_END_CID_NOME').AsString;
               Dest.enderDest.UF      := CdsNotas.FieldByName('CLI_END_CID_UF').AsString;
               Dest.enderDest.Fone    := CdsNotas.FieldByName('CLI_FONE').AsString;

               if ATipo = '1' then
               begin
                  if Copy(CdsNotas.FieldByName('CLI_TIPO').AsString, 1, 1) = 'F' then
                  begin
                     if CdsNotas.FieldByName('CLI_RGINSC').AsString = '' then
                        Dest.IE := 'ISENTO'
                     else
                        Dest.IE := CdsNotas.FieldByName('CLI_RGINSC').AsString;
                  end
                  else
                  begin
                     if Copy(CdsNotas.FieldByName('CLI_TIPO').AsString, 1, 1) = 'J' then
                        Dest.IE := CdsNotas.FieldByName('CLI_RGINSC').AsString
                     else
                     begin
                        MensagemAtencao('Cliente n„o Possui InscriÁ„o Estadual.');
                        btnConsultar.SetFocus;
                        Abort;
                     end;
                  end;
               end
               else
               begin
                  Dest.indIEDest := inNaoContribuinte;
               end;

               if(CdsNotas.FieldByName('CLI_PAIS').Text <> '') then
               begin
                  Dest.enderDest.xPais := splitstr(CdsNotas.FieldByName('CLI_PAIS').Text,'-',0); //MUDAR PARA ACEITAR EXPORTA«√O
                  Dest.enderDest.cPais := StrToInt(Trim(splitstr(CdsNotas.FieldByName('CLI_PAIS').Text,'-',1)));
               end;

               // Preenche Itens
               NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

               NFeAdicionaItens(
                  LNotaFiscal.NFe,
                  QryCadNotaNOT_CODIGO.AsString,
                  CdsLookFiliaisFIL_CODIGO.AsString,
                  CdsLookFiliaisEMP_CODIGO.AsString
               );

               NFeAdicionaDadosTransportadora(LNotaFiscal.NFe);

               // Financeiro
               TRY
               if (QryCadNotaPED_CODIGO.AsString <> '') or  (QryCadNotaOS_CODIGO.AsString <> '') then BEGIN
               QryFinanceiro.Close ;
               QryFinanceiro.SQL.Clear   ;
               QryFinanceiro.SQL.Add('SELECT * FROM TITULOS ') ;
               QryFinanceiro.SQL.Add('WHERE FIL_CODIGO   = ' + CdsLookFiliaisFIL_CODIGO.AsString);
               QryFinanceiro.SQL.Add('AND TIT_NFNUMERO = ' + '''' + QryCadNotaNOT_NUMERONFE.AsString + '''') ;

               END ELSE  BEGIN
                QryFinanceiro.SQL.Add('SELECT * FROM TITULOS WHERE 0=1') ;
               END;
               //QryFinanceiro.SQL.Add('AND PED_CODIGO = ' + '''' + QryCadNotaPED_CODIGO.AsString + '''') ;
               //if QryCadNotaOS_CODIGO.AsString <> '' then
               //QryFinanceiro.SQL.Add('AND OS_CODIGO = ' + '''' + QryCadNotaOS_CODIGO.AsString + '''') ;

               CsdQryFinanceiro.Close;
               CsdQryFinanceiro.Open;
               EXCEPT
               END;

               {if CsdQryFinanceiro.RecordCount > 0    then
               begin
               CsdQryFinanceiro.First;
               if not (CsdQryFinanceiro.RecordCount > 4) then
               begin
                 While CsdQryFinanceiro.Eof = False Do begin

                   Application.ProcessMessages;

                  With Cobr.Dup.Add Do begin
                  nDup      := CsdQryFinanceiroTIT_NFNUMERO.AsString + '-' + CsdQryFinanceiroTIT_ORDEM.AsString;
                  dVenc     := CsdQryFinanceiroTIT_VENCIMENTO.AsDateTime ;
                  vDup      := CsdQryFinanceiroTIT_VALOR.AsFloat         ;
                  end;

                 CsdQryFinanceiro.Next;
                 end;
               end;
               end; }

               NFeAdicionaTotais(
                  LNotaFiscal.NFe,
                  QryCadNotaNOT_CODIGO.AsString,
                  CdsLookFiliaisFIL_CODIGO.AsString
               );
            end;

            Next;
         end;
      finally
         Filtered := False;
         Filter   := '';

         First;
         EnableControls;
      end;
   end;

   if AcbrNFe.NotasFiscais.Count > 0 then
   begin
      AcbrNFe.NotasFiscais.GerarNFe;
      AcbrNFe.NotasFiscais.Valida;
      AcbrNFe.NotasFiscais.Assinar;

      AcbrNFe.Enviar(0);

      NumeroRecibo := AcbrNFe.WebServices.Enviar.Recibo;
      AcbrNFe.WebServices.Retorno.Recibo := NumeroRecibo;
      AcbrNFe.WebServices.Retorno.Executar;

      for I := 0 To (AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Count - 1) do
      begin
         sDataHora   := DateTimeToStr(AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].dhRecbto);
         sNotaFiscal := StrToInt(Copy(AcbrNFe.NotasFiscais.Items[I].NFe.procNFe.chNFe, 26, 9));
         sSerie      := Copy(AcbrNFe.NotasFiscais.Items[I].NFe.procNFe.chNFe, 25, 1);

         // Atualizar a Tabela de HistÛrico
         HistoricoNFe.Close;
         HistoricoNFe.SQL.Clear;
         HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
         HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
         HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + IntToStr(sNotaFiscal));
         HistoricoNFe.SQL.Add('AND   STATUS       = ' + IntToStr(AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat));
         CdsHistoricoNFe.Close;
         CdsHistoricoNFe.Open;

         if CdsHistoricoNFe.RecordCount = 0 then
         begin
             HistoricoNFe.Close;
             HistoricoNFe.SQL.Clear;
             HistoricoNFe.SQL.Add('INSERT INTO HISTORICO_NFE ');
             HistoricoNFe.SQL.Add('      (STATUS,            ');
             HistoricoNFe.SQL.Add('       SEQUENCIA,         ');
             HistoricoNFe.SQL.Add('       COD_EMPRESA,       ');
             HistoricoNFe.SQL.Add('       NOTA_FISCAL,       ');
             HistoricoNFe.SQL.Add('       SERIE,             ');
             HistoricoNFe.SQL.Add('       DATA_EMISSAO,      ');
             HistoricoNFe.SQL.Add('       CHAVE,             ');
             HistoricoNFe.SQL.Add('       AMBIENTE,          ');
             HistoricoNFe.SQL.Add('       MODELO,            ');
             HistoricoNFe.SQL.Add('       PROTOCOLO,         ');
             HistoricoNFe.SQL.Add('       COD_CLIENTE,       ');
             HistoricoNFe.SQL.Add('       CAMINHO,           ');
             HistoricoNFe.SQL.Add('       RECIBO,            ');
             HistoricoNFe.SQL.Add('       FIL_CODIGO,        ');
             HistoricoNFe.SQL.Add('       FIL_CNPJ)          ');

             HistoricoNFe.SQL.Add('VALUES (:STATUS,          ');
             HistoricoNFe.SQL.Add('        :SEQUENCIA,       ');
             HistoricoNFe.SQL.Add('        :COD_EMPRESA,     ');
             HistoricoNFe.SQL.Add('        :NOTA_FISCAL,     ');
             HistoricoNFe.SQL.Add('        :SERIE,           ');
             HistoricoNFe.SQL.Add('        :DATA_EMISSAO,    ');
             HistoricoNFe.SQL.Add('        :CHAVE,           ');
             HistoricoNFe.SQL.Add('        :AMBIENTE,        ');
             HistoricoNFe.SQL.Add('        :MODELO,          ');
             HistoricoNFe.SQL.Add('        :PROTOCOLO,       ');
             HistoricoNFe.SQL.Add('        :COD_CLIENTE,     ');
             HistoricoNFe.SQL.Add('        :CAMINHO,         ');
             HistoricoNFe.SQL.Add('        :RECIBO,          ');
             HistoricoNFe.SQL.Add('        :FIL_CODIGO,     ');
             HistoricoNFe.SQL.Add('        :FIL_CNPJ)       ');

             QryMaximo.Close;
             QryMaximo.SQL.Clear;
             QryMaximo.SQL.Add('SELECT MAX(SEQUENCIA) + 1 AS TOTAL ');
             QryMaximo.SQL.Add('FROM HISTORICO_NFE                 ');

             CdsQryMaximo.close;
             CdsQryMaximo.Open;

             if CdsQryMaximo.RecordCount > 0 then begin
               _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
             end else begin
               _Sequencia := CdsQryMaximoTOTAL.AsInteger;
             end;

             HistoricoNFe.ParamByName('STATUS').Value         := IntToStr(AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat);
             HistoricoNFe.ParamByName('SEQUENCIA').AsInteger  :=_Sequencia;
             HistoricoNFe.ParamByName('COD_EMPRESA').Value    := CdsLookFiliaisEMP_CODIGO.AsInteger;
             HistoricoNFe.ParamByName('NOTA_FISCAL').Value    := sNotaFiscal;
             HistoricoNFe.ParamByName('SERIE').Value          := sSerie;
             HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate  := Date;
             HistoricoNFe.ParamByName('CHAVE').Value          := AcbrNFe.WebServices.Retorno.ChaveNFe;
             HistoricoNFe.ParamByName('AMBIENTE').Value       := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);
             HistoricoNFe.ParamByName('MODELO').Value         := '55';
             HistoricoNFe.ParamByName('PROTOCOLO').Value      := AcbrNFe.WebServices.Retorno.Protocolo;

             HistoricoNFe.ParamByName('COD_CLIENTE').Value    := QryCadNotaCLI_CODIGO.AsInteger;
             HistoricoNFe.ParamByName('CAMINHO').Value        := QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
             HistoricoNFe.ParamByName('FIL_CODIGO').Value     := CdsLookFiliaisFIL_CODIGO.AsInteger;
             HistoricoNFe.ParamByName('RECIBO').Value         := AcbrNFe.WebServices.Retorno.Recibo;
             HistoricoNFe.ParamByName('FIL_CNPJ').Value       := CdsLookFiliaisFIL_CNPJ.AsString;
             HistoricoNFe.ExecSQL;
         end;

         // Envio
         Status := AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat;

         if Status <> 9999 then
         begin
            Case Status Of
            103 :  begin
                      btnReemitirDanfe.Enabled := False;
                      btnValidarNFe.Enabled    := True;
                      btnConsultar.Enabled     := True;
                   end;

            9000 : begin
                      btnReemitirDanfe.Enabled := False;
                      btnValidarNFe.Enabled    := True;
                      btnConsultar.Enabled     := True;
                   end;
            end;

            // Atualiza N˙mero Recibo e Status NF-e
            if fContingencia = '1' then
            begin
              // Normal
              Case Status Of
              100  : AtualizaStatusNotaFiscal(sNotaFiscal, '5');

              103  : AtualizaStatusNotaFiscal(sNotaFiscal, '1');

              9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
              end;
            end
            else
            if fContingencia = '2' then
            begin

              // Contigencia
              Case Status Of
              103  : AtualizaStatusNotaFiscal(sNotaFiscal, '3');

              9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
              end;
            end
            else
            begin

              // Contigencia
              Case Status Of
              103  : AtualizaStatusNotaFiscal(sNotaFiscal, '4');

              9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
              end;
            end;
         end
         else
         begin
            AtualizaStatusNotaFiscal(sNotaFiscal, '3');
            btnReemitirDanfe.Enabled := True;
         end;
      end;

      // ENVIO DE XML PARA SITE!
      TRY
         Mensagens(Status);
         arquivos_backup[0] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
         arquivos_backup[1] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
         cnpj := CdsLookFiliaisFIL_CNPJ.AsString;
         stats :=  IntToStr(Status);
         Modo := QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString;
         EnviaBackupFtp(cnpj,stats,arquivos_backup,Modo);
      except

      end;

      //cbStatusNota.ItemIndex := 9;
      //btnConsultar.Click;
      try
         EnviaEmailCliente;
      except
      
      end;
   end;
end;

procedure TFNFSEletronica.ProcessaNotas;
begin
   if CdsNotas.IsEmpty then
   begin
      MensagemAtencao('N„o existe NF-e No Grid!' + SKIP + 'Realize primeiramente uma pesquisa!');
      Abort;
   end;

   if not ExisteSelecionado then
   begin
      MensagemAtencao('N„o existe NF-e Selecionada No Grid!' + SKIP + 'Clique com o mouse sobre a NF-e, e tente novamente!');
      DBGridConsulta.SetFocus;
   end;

   ProcessaNFe('1');
   ProcessaNFe('3');
   
   ProcessaNFSe;

   ProcessaNFCe;
end;

procedure TFNFSEletronica.ProcessaNFCe;
begin
   AcbrNFe.NotasFiscais.Clear;
   ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;

end;

function TFNFSEletronica.GerarNumeroLote(AFilCodigo: string): Integer;
begin
   QrLoteRPS.Close;
   QrLoteRPS.ParamByName('PFIL_CODIGO').AsString := AFilCodigo;
   QrLoteRPS.Open;

   if QrLoteRPS.IsEmpty then
      Result := 1
   else
      Result := QrLoteRPS.FieldByName('LOTE').AsInteger + 1;

   QrLoteRPS.Close;
end;

procedure TFNFSEletronica.ProcessaNFSe;
var
   LLote: Integer;
begin
   ACBrNFSe.Configuracoes.Certificados.NumeroSerie := QryParametrosNFENFE_CERTIFICADONUMEROSERIE.AsString;

   ACBrNFSe.Configuracoes.WebServices.ConsultaLoteAposEnvio := False;//FieldByName('CONSULTA_LOTE_APOS_ENVIO').AsString = 'S';

   ACBrNFSe.Configuracoes.Arquivos.AdicionarLiteral := True;
   ACBrNFSe.Configuracoes.Arquivos.EmissaoPathNFSe := True;
   ACBrNFSe.Configuracoes.Arquivos.PastaMensal := True;
   ACBrNFSe.Configuracoes.Arquivos.PathCan := QryParametrosNFENFE_CAMINHOCANCELADO.AsString;
   ACBrNFSe.Configuracoes.Arquivos.PathNFSe := QryParametrosNFENFE_CAMINHOXML.AsString;
   ACBrNFSe.Configuracoes.Arquivos.Salvar := True;

   ACBrNFSe.Configuracoes.Geral.PathSchemas := QryParametrosNFENFSE_CAMINHOSCHEMAS.AsString;
   ACBrNFSe.Configuracoes.Geral.Salvar := True;
   ACBrNFSe.Configuracoes.Geral.PathSalvar := QryParametrosNFENFE_CAMINHOXML.AsString;

   ACBrNFSe.Configuracoes.WebServices.CodigoMunicipio := StrToIntDef(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString, 0);

   if Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1) = '1' then
      ACBrNFSe.Configuracoes.WebServices.Ambiente := taProducao
   else
      ACBrNFSe.Configuracoes.WebServices.Ambiente := taHomologacao;

      ACBrNFSe.Configuracoes.WebServices.Visualizar := False;
//      ACBrNFSe.Configuracoes.WebServices.SenhaWeb := AnsiString(FieldByName('WS_SENHA').AsString);
//      ACBrNFSe.Configuracoes.WebServices.UserWeb := FieldByName('WS_USUARIO').AsString;

   ACBrNFSe.Configuracoes.WebServices.SetConfigMunicipio(ACBrNFSe.Configuracoes.Geral.PathSchemas);

//      if ACBrNFSe.DANFSe <> nil then
//      begin
//         ACBrNFSe.DANFSe.Logo       := FieldByName('WS_USUARIO').AsString;
//         ACBrNFSe.DANFSe.PrestLogo  := FieldByName('WS_USUARIO').AsString;
//         ACBrNFSe.DANFSe.Prefeitura := FieldByName('WS_USUARIO').AsString;
//      end;

      ACBrNFSe.Configuracoes.Geral.PathSchemas := ACBrNFSe.Configuracoes.Geral.PathSchemas + '\' + ACBrNFSe.Configuracoes.WebServices.xProvedor;
//   end;


   ACBrNFSe.NotasFiscais.Clear;

   lblStatusValidar.Caption := '';

   LLote := GerarNumeroLote(CdsLookFiliais.FieldByName('FIL_CODIGO').AsString);

   with CdsNotas do
   begin
      First;
      DisableControls;
      try
         (*
            Filtra somente notas do tipo de produto, que estejam marcadas e
            que o status seja diferente de 5 e 6;
         *)
         Filtered := False;
         Filter   :=
            'TIPO_NOTA_FISCAL = 2 AND ' +
            'MARCADO = ' + QuotedStr('S') + ' AND ' +
            'NOT STATUS_NFE IN (5, 6)';
         Filtered := True;

         while not Eof do
         begin
            AlimentaComponenteNFSe(IntToStr(LLote), CdsNotas.FieldByName('NFSE_NUMERO_RPS').AsString);

            Next;
         end;

         if ACBrNFSe.NotasFiscais.Count > 0 then
         begin
            ACBrNFSe.Enviar(LLote);

            ACBrNFSe.ConsultarLoteRps(
               IntToStr(LLote),
               ACBrNFSe.NotasFiscais.Items[0].NFSe.Protocolo
            );
         end;
      finally
         First;
         EnableControls;
      end;
   end;
end;

{
procedure TFNFSEletronica.ProcessaEnvioDeNotas(pSetProg: TProcedureSetProgress;
  pSetMax: TProcedureSetMaxValue; pSetMsg: TProcedureSetMensagem);
var
   i: Integer;
   LNotas: string;
   LLoteRPS,
   LRPS: Integer;
   LValorISS: Currency;
   LIdArquivo: Integer;
   LStream: TStringStream;
   LNotaGerouErro,
   LVarOk,
   LGerouErro: Boolean;
   LProvedor: TnfseProvedor;

   function RetornaDescricaoServico(ANotaServico: string): string;
   begin
      Result := '';

      qrNotaItem.Close;
      qrNotaItem.ParamByName('PNOTA_SERVICO').AsString := ANotaServico;
      qrNotaItem.Open;

      qrNFSeConfig.Close;
      qrNFSeConfig.Open;

      while not qrNotaItem.Eof do
      begin
         Result := Result + IfThen(Result <> '', qrNFSeConfig.FieldByName('QUEBRA_LINHA').AsString, '') +
            DFeUtil.TrataString(qrNotaItem.FieldByName('DESCRICAO').AsString);

         Result := Result + IfThen(qrNFSeConfig.FieldByName('SEPARADOR_VALOR_DESC_ITENS').AsString <> '',
            qrNFSeConfig.FieldByName('SEPARADOR_VALOR_DESC_ITENS').AsString, ' - R$ ') +
            FormatFloat(',#0.00', qrNotaItem.FieldByName('VALOR_UNIT').AsFloat);

         Result := Result + IfThen(qrNFSeConfig.FieldByName('SEPARADOR_VALOR_DESC_ITENS').AsString <> '',
            qrNFSeConfig.FieldByName('SEPARADOR_VALOR_DESC_ITENS').AsString, ' - ') +
            FormatFloat(',#0.00', qrNotaItem.FieldByName('QUANTIDADE').AsFloat);

         Result := Result + IfThen(qrNFSeConfig.FieldByName('SEPARADOR_VALOR_DESC_ITENS').AsString <> '',
            qrNFSeConfig.FieldByName('SEPARADOR_VALOR_DESC_ITENS').AsString, ' - R$ ') +
            FormatFloat(',#0.00', qrNotaItem.FieldByName('VALOR').AsFloat);

         qrNotaItem.Next;
      end;

      qrNotaItem.Close;
      qrNFSeConfig.Close;
   end;
begin
   LProvedor := proNenhum;

   try
      LGerouErro := False;

      pSetMsg('Carregando notas de serviÁo n„o enviadas');
      pSetMax(0);
      pSetProg(0);

      LNotas := '';

      for i := 0 to FNotas.Count - 1 do
         LNotas := LNotas + IfThen(LNotas <> '', ', ') + FNotas.Strings[i];

      with qrEnviaNotas do
      begin
         try
            Close;
            qrEnviaNotas.SQL.Text := StringReplace(qrEnviaNotas.SQL.Text, '/*FILTROS*/',
               'AND NF.NOTA_SERVICO IN (' + LNotas + ') ', []); //AND NF.STATUS = ' + QuotedStr('001')
            Open;
         except
            on E: Exception do
            begin
               ExibeErros('Erro ao pesquisar notas. Erro(s): ' + SKIP + e.Message);
               Exit;
            end;
         end;

         pSetMax(FieldByName('COUNT_NOTAS').AsInteger);
         pSetProg(0);

         i := 0;

         LLoteRPS := 0;

         while not Eof do
         begin
            i := i + 1;
            pSetProg(i);
            LNotaGerouErro := False;

            // Limpa pois envia uma por uma;
            ACBrNFSe.NotasFiscais.Clear;

//            if FieldByName('RN_FILIAL').AsInteger = 1 then
//            begin
               CarregaConfiguracao(qrEnviaNotas);
               LVarOk := True;
               LProvedor := StrToProvedor(LVarOk, CodCidadeToProvedor(FieldByName('COD_MUN_IBGE').AsInteger));
//            end;

            // Enio;
            if FieldByName('STATUS').AsString = '001' then
            begin
               pSetMsg('Enviando nota n˙mero [' + FieldByName('NOTA_SERVICO').AsString + ']');

               with ACBrNFSe do
               begin
                  if (FieldByName('NUMERO_RPS').AsInteger = 0) then
                     LRPS := RetornaRPS(FieldByName('FILIAL').AsString)
                  else
                     LRPS := FieldByName('NUMERO_RPS').AsInteger;

                  if (FieldByName('RPS_LOTE').AsInteger = 0) then
                     LLoteRPS := RetornaLoteRPS(FieldByName('FILIAL').AsString)
                  else
                     LLoteRPS := FieldByName('RPS_LOTE').AsInteger;

                  NotasFiscais.NumeroLote := IntToStr(LLoteRPS);

                  with NotasFiscais.Add.NFSe do
                  begin
                     try
                        IdentificacaoRps.Numero := FormatFloat('#########0', LRPS);

                        // Para o provedor ISS.NET em ambiente de HomologaÁ„o mudar a sÈrie para '8'
                        IdentificacaoRps.Serie := FieldByName('RPS_SERIE').AsString;

                        IdentificacaoRps.Tipo := trRPS;

                        DataEmissao := FieldByName('DATA_EMISSAO').AsDateTime;

                        (*
                           TnfseNaturezaOperacao = ( noTributacaoNoMunicipio,
                              noTributacaoForaMunicipio, noIsencao, noImune,
                              noSuspensaDecisaoJudicial,
                              noSuspensaProcedimentoAdministrativo );
                        *)
                        NaturezaOperacao := noTributacaoNoMunicipio;

                        (*
                           TnfseRegimeEspecialTributacao = ( retNenhum,
                              retMicroempresaMunicipal, retEstimativa,
                              retSociedadeProfissionais, retCooperativa,
                              retMicroempresarioIndividual, retMicroempresarioEmpresaPP );
                        *)
                        RegimeEspecialTributacao := retNenhum;

                        if FieldByName('ENQUAD_LEGAL_SIMPLES').AsString = 'S' then
                           OptanteSimplesNacional := snSim
                        else
                           OptanteSimplesNacional := snNao;

                        IncentivadorCultural := snNao;

                        if FieldByName('AMBIENTE').AsString = '1' then
                           Producao := snSim
                        else
                           Producao := snNao;

                        OutrasInformacoes := FieldByName('NF_OBSERVACAO').AsString;

                        Status := srNormal;

                        Servico.Valores.IssRetido := stNormal;

                        Servico.Valores.ValorDeducoes := 0.00;
                        Servico.Valores.ValorInss := 0.00;

                        qrNotaItemTotal.Close;
                        qrNotaItemTotal.ParamByName('PNOTA_SERVICO').AsString := FieldByName('NOTA_SERVICO').AsString;
                        qrNotaItemTotal.Open;

                        Servico.Valores.ValorPis := 0.00;
                        Servico.Valores.ValorCofins := 0.00;
                        Servico.Valores.ValorCsll := 0.00;
                        Servico.Valores.ValorIr := 0.00;
                        Servico.Valores.DescontoIncondicionado := 0.00;

                        while not qrNotaItemTotal.Eof do
                        begin
                           case qrNotaItemTotal.FieldByName('TIPO_PERCENTUAL').AsInteger of
                              4: Servico.Valores.DescontoIncondicionado := qrNotaItemTotal.FieldByName('VALOR').AsFloat;
                              7: Servico.Valores.ValorIr                := qrNotaItemTotal.FieldByName('VALOR').AsFloat;
                              9: Servico.Valores.ValorCofins            := qrNotaItemTotal.FieldByName('VALOR').AsFloat;
                              10: Servico.Valores.ValorCsll             := qrNotaItemTotal.FieldByName('VALOR').AsFloat;
                              12: Servico.Valores.ValorPis              := qrNotaItemTotal.FieldByName('VALOR').AsFloat;
                           end;

                           qrNotaItemTotal.Next;
                        end;

                        qrNotaItemTotal.Close;

                        Servico.Valores.OutrasRetencoes := 0.00;
                        Servico.Valores.DescontoCondicionado := 0.00;

                        Servico.Valores.BaseCalculo :=
                           FieldByName('VALOR_SERVICO').AsFloat -
                           Servico.Valores.ValorDeducoes -
                           Servico.Valores.ValorCofins -
                           Servico.Valores.ValorPis -
                           Servico.Valores.ValorCsll -
                           Servico.Valores.ValorIr -
                           Servico.Valores.DescontoIncondicionado;

                        Servico.Valores.Aliquota := FieldByName('ISSQN').AsFloat;

                        if Servico.Valores.IssRetido = stNormal then
                        begin
                           LValorISS := Servico.Valores.BaseCalculo * Servico.Valores.Aliquota / 100;

                           Servico.Valores.ValorIss := RoundTo5(LValorISS, -2);
                           Servico.Valores.ValorIssRetido := 0.00;
                        end
                        else
                        begin
                           LValorISS := Servico.Valores.BaseCalculo * Servico.Valores.Aliquota;

                           Servico.Valores.ValorIss       := 0.00;
                           Servico.Valores.ValorIssRetido := RoundTo5(LValorISS, -2);
                        end;

                        Servico.Valores.ValorLiquidoNfse := FieldByName('VALOR_SERVICO').AsFloat -
                                                            Servico.Valores.ValorPis -
                                                            Servico.Valores.ValorCofins -
                                                            Servico.Valores.ValorInss -
                                                            Servico.Valores.ValorIr -
                                                            Servico.Valores.ValorCsll -
                                                            Servico.Valores.OutrasRetencoes -
                                                            Servico.Valores.ValorIssRetido -
                                                            Servico.Valores.DescontoIncondicionado -
                                                            Servico.Valores.DescontoCondicionado;

                        Servico.Valores.ValorServicos := FieldByName('VALOR_SERVICO').AsFloat;
                        Servico.ItemListaServico := FieldByName('SERVICO_RAMO_ATUACAO').AsString;

                        (*
                           Para o provedor ISS.NET em ambiente de HomologaÁ„o
                           o Codigo CNAE tem que ser '6511102'
                        *)
                        Servico.CodigoCnae      := FieldByName('CODIGO_CNAE').AsString; // InformaÁ„o Opcional
                        Servico.Discriminacao   := RetornaDescricaoServico(FieldByName('NOTA_SERVICO').AsString);

               //         if PDataSet.FieldByName('ISSQN').AsFloat = 2 then
                           Servico.CodigoTributacaoMunicipio := FieldByName('CODIGO_TRIBUTACAO_MUNICIPIO').AsString;
               //         else
               //            Servico.CodigoTributacaoMunicipio := '3';

                        (*
                              Para o provedor ISS.NET em ambiente de HomologaÁ„o
                           o Codigo do Municipio tem que ser '999';
                        *)
                        //ProvedorToStr()


                        if (Producao = snNao) and (LProvedor = proISSNET) then
                           Servico.CodigoMunicipio := '999'
                        else
                           Servico.CodigoMunicipio := FieldByName('COD_MUN_IBGE').AsString;

                        (*
                           Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
                        *)
                        Servico.ExigibilidadeISS := exiExigivel;

                        (*
                           Informar para Saatri
                        *)
                        Servico.CodigoPais := 1058; // Brasil
                        Servico.MunicipioIncidencia := StrToIntDef(FieldByName('COD_MUN_IBGE').AsString, 0);

                        with Servico.ItemServico.Add do
                        begin
                           Descricao := 'SERVICO';
                           Quantidade := 1;
                           ValorUnitario := Servico.Valores.ValorServicos;

                        end;

                        PrestadorServico.RazaoSocial := DFeUtil.TrataString(FieldByName('NOME_PRESTADOR').AsString);

                        Prestador.Cnpj := DFeUtil.TrataString(FieldByName('CNPJ').AsString);

                        Prestador.InscricaoMunicipal := DFeUtil.TrataString(FieldByName('INSC_MUN').AsString);

                        if Prestador.InscricaoMunicipal = '' then
                        begin
                           raise Exception.Create('… necess·rio o preenchimento da inscriÁ„o municipal.');
                        end;

                        Tomador.RazaoSocial := DFeUtil.TrataString(FieldByName('CLIENTE_NOME').AsString);

                        if FieldByName('CLIENTE_ENDERECO_PAIS').AsString = '0001' then
                        begin
                           Tomador.Endereco.CodigoPais := 1058; // Brasil;

                           // IdentificaÁ„o;
                           Tomador.IdentificacaoTomador.CpfCnpj            := DFeUtil.TrataString(FieldByName('CLIENTE_CNPJ').AsString);
                           Tomador.IdentificacaoTomador.InscricaoEstadual  := DFeUtil.TrataString(FieldByName('CLIENTE_INSC_EST').AsString);

                           // EndereÁo;
                           Tomador.Endereco.CEP             := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO_CEP').AsString);
                           Tomador.Endereco.Bairro          := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO_BAIRRO').AsString);
                           Tomador.Endereco.CodigoMunicipio := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO_COD_MUN').AsString);
                           Tomador.Endereco.UF              := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO_UF').AsString);
                        end
                        else
                        begin
                           Tomador.Endereco.UF := 'EX';
                           Tomador.Endereco.Bairro :=
                              FieldByName('CLIENTE_ENDERECO_NOME_CIDADE').AsString + ', ' +
                              FieldByName('CLIENTE_ENDERECO_NOME_PAIS').AsString;

                           Tomador.Endereco.CodigoMunicipio := '99999';
                           Tomador.IdentificacaoTomador.CpfCnpj := '99999999999';
                        end;

                        //Tomador.RazaoSocial := DFeUtil.TrataString(FieldByName('CLIENTE_NOME').AsString);

                        // EndereÁo;
                        Tomador.Endereco.TipoLogradouro  := '';
                        Tomador.Endereco.Endereco        := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO').AsString);
                        Tomador.Endereco.Complemento     := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO_COMPL').AsString);
                        Tomador.Endereco.Numero          := DFeUtil.TrataString(FieldByName('CLIENTE_ENDERECO_NUMERO').AsString);

                        // Contato;
                        Tomador.Contato.Telefone   := DFeUtil.TrataString(FieldByName('CLIENTE_CONTATO_TELEFONE').AsString);
                        Tomador.Contato.Email      := DFeUtil.TrataString(FieldByName('CLIENTE_CONTATO_EMAIL').AsString);
                     except
                        on E: Exception do
                        begin
                           LGerouErro := True;
                           LNotaGerouErro := True;

                           AtualizaNotaErro(
                              FieldByName('NOTA_SERVICO').AsString,
                              '0',
                              '0',
                              '0',
                              '0',
                              E.Message
                           );
                        end;
                     end;
                  end;
               end;

               if not LNotaGerouErro then
               begin
                  CoInitialize(nil);

                  try
                     if ACBrNFSe.Enviar(LLoteRPS, False) then
                     begin
                        LIdArquivo := InsereArquivo(
                           ACBrNFSe.NotasFiscais.Items[0].XML_Rps_Ass,
                           FieldByName('NOTA_SERVICO').AsString,
                           ACBrNFSe.NotasFiscais.Items[0].NomeArq
                        );

                        AtualiaNumeroRPS(
                           FieldByName('NOTA_SERVICO').AsString,
                           ACBrNFSe.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
                           ACBrNFSe.NotasFiscais.NumeroLote,
                           IfThen(ACBrNFSe.NotasFiscais.Items[0].NFSe.Protocolo = '', ACBrNFSe.WebServices.ConsLote.Protocolo, ACBrNFSe.NotasFiscais.Items[0].NFSe.Protocolo),
                           LIdArquivo
                        );

                        if ACBrNFSe.Configuracoes.WebServices.ConsultaLoteAposEnvio then
                        begin
                           LIdArquivo := InsereArquivo(
                              ACBrNFSe.NotasFiscais.Items[0].XML_NFSe,
                              FieldByName('NOTA_SERVICO').AsString,
                              ACBrNFSe.NotasFiscais.Items[0].NomeArq
                           );

                           AtualizaNumeroNota(
                              FieldByName('NOTA_SERVICO').AsString,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Numero,
                              LIdArquivo,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.CodigoVerificacao,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.RazaoSocial,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.IdentificacaoTomador.CpfCnpj,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.IdentificacaoTomador.InscricaoMunicipal,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Endereco,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Numero,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Bairro,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.CodigoMunicipio + ' - ' +
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.xMunicipio,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.CEP,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Complemento,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Contato.Telefone,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.UF,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Contato.Email,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.Discriminacao,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.CodigoCnae,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.CodigoTributacaoMunicipio,
                              ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.ItemListaServico,
                              IfThen(Trim(ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.Descricao) = '',
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.xItemListaServico,
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.Descricao),
                              ACBrNFSe.Configuracoes.WebServices.AmbienteCodigo
                           );
                        end;
                     end
                     else
                        raise Exception.Create('N„o enviou corretamente a nota.');
                  except
                     on E: Exception do
                     begin
                        LGerouErro := True;

                        AtualizaNotaErro(
                           FieldByName('NOTA_SERVICO').AsString,
                           ACBrNFSe.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
                           ACBrNFSe.NotasFiscais.NumeroLote,
                           ACBrNFSe.NotasFiscais.Items[0].NFSe.Numero,
                           ACBrNFSe.NotasFiscais.Items[0].NFSe.Protocolo,
                           E.Message
                        );
                     end;
                  end;
               end;
            end
            else
            begin
               // Processamento;
               if FieldByName('STATUS').AsString = '002' then
               begin
                  pSetMsg('Processando nota n˙mero [' + FieldByName('NOTA_SERVICO').AsString + ']');

                  CoInitialize(nil);

                  try
                     ACBrNFSe.NotasFiscais.Clear;

                     ACBrNFSe.ConsultarLoteRps(
                        DFeUtil.TrataString(FieldByName('RPS_LOTE').AsString),
                        DFeUtil.TrataString(FieldByName('PROTOCOLO').AsString),
                        DFeUtil.TrataString(FieldByName('CNPJ').AsString),
                        DFeUtil.TrataString(FieldByName('INSC_MUN').AsString),
                        '',
                        '',
                        0,
                        0,
                        FieldByName('NOME_PRESTADOR').AsString
                     );
                  except
                     on E: Exception do
                     begin
                        LNotaGerouErro := True;
                        LGerouErro := True;

                        AtualizaNotaErro(
                           FieldByName('NOTA_SERVICO').AsString,
                           FieldByName('NUMERO_RPS').AsString,
                           FieldByName('RPS_LOTE').AsString,
                           FieldByName('NUMERO').AsString,
                           FieldByName('PROTOCOLO').AsString,
                           E.Message
                        );
                     end;
                  end;

                  if not LNotaGerouErro then
                  begin
                     ACBrNFSe.NotasFiscais.Clear;

                     cdsNotaArquivo.Close;
                     cdsNotaArquivo.Params.ParamByName('PID_ARQUIVO').AsInteger := FieldByName('ID_ARQUIVO_RPS').AsInteger;
                     cdsNotaArquivo.Open;

                     if cdsNotaArquivo.RecordCount > 0 then
                     begin
                        LStream := TStringStream.Create;
                        try
                           (cdsNotaArquivo.FieldByName('CONTEUDO') as TBlobField).SaveToStream(LStream);
                           ACBrNFSe.NotasFiscais.LoadFromStream(LStream);

                           ACBrNFSe.NotasFiscais.Items[0].NFSe.OutrasInformacoes := 'abc';
                           try
                              if not ACBrNFSe.ConsultarNFSeporRps(
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie,
                                 TipoRPSToStr(ACBrNFSe.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Tipo),
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.Prestador.Cnpj,
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.Prestador.InscricaoMunicipal,
                                 '',
                                 '',
                                 ACBrNFSe.NotasFiscais.Items[0].NFSe.PrestadorServico.RazaoSocial) then
                              begin
                                 raise Exception.Create('N„o consultou corretamente as notas por RPS.');
                              end;

                              LIdArquivo := InsereArquivo(
                                 StringReplace(ACBrNFSe.NotasFiscais.Items[0].XML_NFSe, '<tc:OutrasInformacoes><br></tc:OutrasInformacoes>', '<tc:OutrasInformacoes></tc:OutrasInformacoes>', [rfReplaceAll]),
                                 FieldByName('NOTA_SERVICO').AsString,
                                 ACBrNFSe.NotasFiscais.Items[0].NomeArq
                              );

                              cdsNotaArquivo.Close;
                              cdsNotaArquivo.Params.ParamByName('PID_ARQUIVO').AsInteger := LIdArquivo;
                              cdsNotaArquivo.Open;

//                              LStream := TStringStream.Create;
//                              try
                                 (cdsNotaArquivo.FieldByName('CONTEUDO') as TBlobField).SaveToStream(LStream);

                                 ACBrNFSe.NotasFiscais.Clear;
                                 ACBrNFSe.NotasFiscais.LoadFromStream(LStream);

                                 AtualizaNumeroNota(
                                    FieldByName('NOTA_SERVICO').AsString,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Numero,
                                    LIdArquivo,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.CodigoVerificacao,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.RazaoSocial,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.IdentificacaoTomador.CpfCnpj,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.IdentificacaoTomador.InscricaoMunicipal,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Endereco,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Numero,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Bairro,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.CodigoMunicipio + ' - ' +
                                       ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.xMunicipio,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.CEP,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.Complemento,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Contato.Telefone,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Endereco.UF,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Tomador.Contato.Email,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.Discriminacao,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.CodigoCnae,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.CodigoTributacaoMunicipio,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.ItemListaServico,
                                    IfThen(Trim(ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.Descricao) = '',
                                       ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.xItemListaServico,
                                       ACBrNFSe.NotasFiscais.Items[0].NFSe.Servico.Descricao),
                                    ACBrNFSe.Configuracoes.WebServices.AmbienteCodigo
                                 );

//                              finally
//                                 LStream.Free;
//                              end;
                           except
                              on E: Exception do
                              begin
                                 LGerouErro := True;

                                 AtualizaNotaErro(
                                    FieldByName('NOTA_SERVICO').AsString,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.NumeroLote,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Numero,
                                    ACBrNFSe.NotasFiscais.Items[0].NFSe.Protocolo,
                                    E.Message
                                 );
                              end;
                           end;
                        finally
                           FreeAndNil(LStream);
                        end;
                     end;
                  end;
               end
               else
               begin
                  // Cancelamento;
                  if FieldByName('STATUS').AsString = '005' then
                  begin
                     try
                        cdsNotaArquivo.Close;
                        cdsNotaArquivo.Params.ParamByName('PID_ARQUIVO').AsInteger := FieldByName('ID_ARQUIVO_NFSE').AsInteger;
                        cdsNotaArquivo.Open;

                        LStream := TStringStream.Create;
                        try
                           (cdsNotaArquivo.FieldByName('CONTEUDO') as TBlobField).SaveToStream(LStream);

                           ACBrNFSe.NotasFiscais.Clear;
                           ACBrNFSe.NotasFiscais.LoadFromStream(LStream);

                           ACBrNFSe.NotasFiscais.Items[0].NFSe.PrestadorServico.IdentificacaoPrestador.Cnpj := DFeUtil.TrataString(FieldByName('CNPJ').AsString);
                           ACBrNFSe.NotasFiscais.Items[0].NFSe.PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal := DFeUtil.TrataString(FieldByName('INSC_MUN').AsString);
                        finally
                           LStream.Free;
                        end;
                     except
                        on E: Exception do
                        begin
                           LNotaGerouErro := True;
                           LGerouErro := True;

                           AtualizaNotaErro(
                              FieldByName('NOTA_SERVICO').AsString,
                              FieldByName('NUMERO_RPS').AsString,
                              FieldByName('RPS_LOTE').AsString,
                              FieldByName('NUMERO').AsString,
                              FieldByName('PROTOCOLO').AsString,
                              'Erro ao carregar stream da nota. Erro: ' + E.Message
                           );
                        end;
                     end;

                     if not LNotaGerouErro then
                     begin
                        CoInitialize(nil);

                        try
                           ACBrNFSe.CancelarNFSe('2');

                           LIdArquivo := InsereArquivo(
                              StringReplace(String(ACBrNFSe.NotasFiscais.Items[0].XML_NFSe), '<OutrasInformacoes><br></OutrasInformacoes>', '<OutrasInformacoes></OutrasInformacoes>', [rfReplaceAll]),
                              FieldByName('NOTA_SERVICO').AsString,
                              ACBrNFSe.NotasFiscais.Items[0].NomeArq
                           );

                           AtualizaNotaCancelada(FieldByName('NOTA_SERVICO').AsString, 'NFS-e cancelada com sucesso.', LIdArquivo);
                        except
                           on E: Exception do
                           begin
                              LGerouErro := True;

                              AtualizaNotaErro(
                                 FieldByName('NOTA_SERVICO').AsString,
                                 FieldByName('NUMERO_RPS').AsString,
                                 FieldByName('RPS_LOTE').AsString,
                                 FieldByName('NUMERO').AsString,
                                 FieldByName('PROTOCOLO').AsString,
                                 'Erro ao cencelar NFS-e. Erro: ' + E.Message
                              );
                           end;
                        end;
                     end;
                  end;
               end;
            end;

            Next;
         end;
      end;

      if LGerouErro then
      begin
         raise Exception.Create('AtenÁ„o! Algumas notas n„o foram enviadas corretamente, verifique as notas para ajuste.');
      end;
   except
      on E: Exception do
      begin
         ExibeErros('Erro ao enviar notas. Erro(s): ' + SKIP + e.Message);
      end;
   end;
end;
}

procedure TFNFSEletronica.AlimentaComponenteNFSe(LoteNFSe, NumNFSe: String);
   function RetornaDescricaoServico: string;
   begin
      Result := 'ServiÁos executados';
   end;
var
   ValorISS: Double;
   LNotaFiscal: ACBrNFSeNotasFiscais.NotaFiscal;
begin
   CdsItensServico.Close;
   CdsItensServico.Params.ParamByName('PFIL_CODIGO').AsString := CdsNotas.FieldByName('COD_EMPRESA').AsString;
   CdsItensServico.Params.ParamByName('PNOT_CODIGO').AsString := CdsNotas.FieldByName('NOT_CODIGO').AsString;
   CdsItensServico.Open;

   with ACBrNFSe do
   begin
      NotasFiscais.NumeroLote:= LoteNFSe;
      NotasFiscais.Transacao := True;

      LNotaFiscal := ACBrNFSe.NotasFiscais.Add;

      with LNotaFiscal.NFSe do
      begin
         IdentificacaoRps.Numero := FormatFloat('#########0', StrToInt(NumNFSe));

         // Para o provedor ISS.NET em ambiente de HomologaÁ„o mudar a sÈrie para '8'
         IdentificacaoRps.Serie := 'UNICA';

         // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
         IdentificacaoRps.Tipo := trRPS;

         DataEmissao := cdsNotas.FieldByName('DATA_EMISSAO').AsDateTime;

         // TnfseNaturezaOperacao = ( noTributacaoNoMunicipio, noTributacaoForaMunicipio, noIsencao, noImune, noSuspensaDecisaoJudicial, noSuspensaProcedimentoAdministrativo );
         NaturezaOperacao := noTributacaoNoMunicipio;
//       NaturezaOperacao := noTributacaoNoMunicipio51;

         // TnfseRegimeEspecialTributacao = ( retNenhum, retMicroempresaMunicipal, retEstimativa, retSociedadeProfissionais, retCooperativa, retMicroempresarioIndividual, retMicroempresarioEmpresaPP );
         RegimeEspecialTributacao := retNenhum;
//         RegimeEspecialTributacao := retMicroempresaMunicipal;

         if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '1' then
            OptanteSimplesNacional := snSim
         else
            OptanteSimplesNacional := snNao;
            
         // TnfseSimNao = ( snSim, snNao );
         IncentivadorCultural := snSim;

         // TnfseSimNao = ( snSim, snNao );
         // snSim = Ambiente de ProduÁ„o
         // snNao = Ambiente de HomologaÁ„o
         if ACBrNFSe.Configuracoes.WebServices.Ambiente = taProducao then
            Producao := snSim
         else
            Producao := snNao;

         // TnfseStatusRPS = ( srNormal, srCancelado );
         Status := srNormal;

         // Somente Os provedores Betha, FISSLex e SimplISS permitem incluir no RPS
         // a TAG: OutrasInformacoes os demais essa TAG È gerada e preenchida pelo
         // WebService do provedor.
         OutrasInformacoes := '';

         (* Usando quando o RPS for substituir outro
         RpsSubstituido.Numero := FormatFloat('#########0', i);
         RpsSubstituido.Serie  := 'UNICA';
         // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
         RpsSubstituido.Tipo   := trRPS;
         *)

         Servico.Valores.ValorServicos := CdsNotas.FieldByName('VALOR_NOTA').AsFloat;
         Servico.Valores.ValorDeducoes := 0.00;
         Servico.Valores.ValorPis      := 0.00;
         Servico.Valores.ValorCofins   := 0.00;
         Servico.Valores.ValorInss     := 0.00;
         Servico.Valores.ValorIr       := 0.00;
         Servico.Valores.ValorCsll     := 0.00;

         // TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao );
         // stRetencao = snSim
         // stNormal   = snNao

         // Neste exemplo n„o temos ISS Retido ( stNormal = N„o )
         // Logo o valor do ISS Retido È igual a zero.
         Servico.Valores.IssRetido              := stNormal;
         Servico.Valores.ValorIssRetido         := 0.00;

         Servico.Valores.OutrasRetencoes        := 0.00;
         Servico.Valores.DescontoIncondicionado := 0.00;
         Servico.Valores.DescontoCondicionado   := 0.00;

         Servico.Valores.BaseCalculo :=
            Servico.Valores.ValorServicos -
            Servico.Valores.ValorDeducoes -
            Servico.Valores.DescontoIncondicionado;

         // No caso do provedor Ginfes devemos informar a aliquota j· dividida por 100
         // para outros provedores devemos informar por exemplo 3, mas ao fazer o calculo
         // do valor do ISS devemos dividir por 100

         (*
            Eric Alves.
            Pega o ISS do primeiro registro dos itens;
         *)
         if not CdsItensServico.IsEmpty then
         begin
            Servico.Valores.Aliquota := CdsItensServico.FieldByName('NI_ALIQISSQN').AsFloat;
         end
         else
            Servico.Valores.Aliquota := 0.00;

         if Servico.Valores.IssRetido = stNormal then
         begin
            Servico.Valores.ValorIss := RoundTo5(CdsItensServico.FieldByName('NI_TOTALISSQN').AsFloat, -2);
            Servico.Valores.ValorIssRetido := 0.00;
         end
         else
         begin
            Servico.Valores.ValorIss       := 0.00;
            Servico.Valores.ValorIssRetido := RoundTo5(CdsItensServico.FieldByName('NI_TOTALISSQN').AsFloat, -2);
         end;                                                                               

         // A funÁ„o RoundTo5 È usada para arredondar valores, sendo que o segundo
         // parametro se refere ao numero de casas decimais.
         // exemplos: RoundTo5(50.532, -2) ==> 50.53
         // exemplos: RoundTo5(50.535, -2) ==> 50.54
         // exemplos: RoundTo5(50.536, -2) ==> 50.54

         Servico.Valores.ValorLiquidoNfse :=
            Servico.Valores.ValorServicos -
            Servico.Valores.ValorPis -
            Servico.Valores.ValorCofins -
            Servico.Valores.ValorInss -
            Servico.Valores.ValorIr -
            Servico.Valores.ValorCsll -
            Servico.Valores.OutrasRetencoes -
            Servico.Valores.ValorIssRetido -
            Servico.Valores.DescontoIncondicionado -
            Servico.Valores.DescontoCondicionado;

         Servico.ItemListaServico := CdsLookFiliais.FieldByName('SERVICO_RAMO_ATUACAO').AsString;

         // Para o provedor ISS.NET em ambiente de HomologaÁ„o
         // o Codigo CNAE tem que ser '6511102'
         // Servico.CodigoCnae                := '123'; // InformaÁ„o Opcional
         Servico.CodigoTributacaoMunicipio := CdsLookFiliais.FieldByName('CODIGO_TRIBUTACAO_MUNICIPIO').AsString;
         Servico.Discriminacao             := RetornaDescricaoServico;

         // Para o provedor ISS.NET em ambiente de HomologaÁ„o
         // o Codigo do Municipio tem que ser '999'
         Servico.CodigoMunicipio := CdsLookFiliais.FieldByName('FIL_END_COD_IBGEMUNIC').AsString;

         // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
         Servico.ExigibilidadeISS := exiExigivel;

         // Informar para Saatri
         Servico.CodigoPais := 1058; // Brasil
         Servico.MunicipioIncidencia := StrToIntDef(CdsLookFiliais.FieldByName('FIL_END_COD_IBGEMUNIC').AsString, 0);

         // Somente o provedor SimplISS permite infomar mais de 1 serviÁo
         with Servico.ItemServico.Add do
         begin
            Descricao     := 'SERVICO 1';
            Quantidade    := 1;
            ValorUnitario := Servico.Valores.ValorServicos;
         end;

         Prestador.Cnpj               := CdsLookFiliais.FieldByName('FIL_CNPJ').AsString;
         Prestador.InscricaoMunicipal := CdsLookFiliais.FieldByName('FIL_INSMUN').AsString;

         // Para o provedor ISSDigital deve-se informar tambÈm:
//     Prestador.Senha        := 'senha';
//     Prestador.FraseSecreta := 'frase secreta';
//     Prestador.cUF          := 33;

         PrestadorServico.Endereco.CodigoMunicipio := CdsLookFiliais.FieldByName('FIL_END_COD_IBGEMUNIC').AsString;
         PrestadorServico.RazaoSocial := CdsLookFiliais.FieldByName('FIL_NOME').AsString;

         Tomador.IdentificacaoTomador.CpfCnpj := CdsNotas.FieldByName('CNPJCPF').AsString;
//      Tomador.IdentificacaoTomador.InscricaoMunicipal := '1733160024';

         Tomador.RazaoSocial := CdsNotas.FieldByName('RAZAO_SOCIAL').AsString;

         Tomador.Endereco.Endereco        := CdsNotas.FieldByName('CLI_END_ENDERECO').AsString;
         Tomador.Endereco.Numero          := CdsNotas.FieldByName('CLI_END_NUMERO').AsString;
         Tomador.Endereco.Complemento     := CdsNotas.FieldByName('CLI_END_COMPLEMENTO').AsString;
         Tomador.Endereco.Bairro          := CdsNotas.FieldByName('CLI_END_BAIRRO').AsString;
         Tomador.Endereco.CodigoMunicipio := CdsNotas.FieldByName('CLI_END_COD_IBGEMUNIC').AsString;
         Tomador.Endereco.UF              := CdsNotas.FieldByName('CLI_END_CID_UF').AsString;
         Tomador.Endereco.CEP             := CdsNotas.FieldByName('CLI_END_CEP').AsString;
	 //Provedor Equiplano È obrigatÛrio o pais e IE
         Tomador.Endereco.xPais           := 'BRASIL';
//     Tomador.IdentificacaoTomador.InscricaoEstadual := '123456';

         Tomador.Contato.Telefone := CdsNotas.FieldByName('CLI_FONE').AsString;
         Tomador.Contato.Email    := CdsNotas.FieldByName('EMAIL').AsString;

         (* Usando quando houver um intermediario na prestaÁ„o do serviÁo
         IntermediarioServico.RazaoSocial        := 'razao';
         IntermediarioServico.CpfCnpj            := '00000000000';
         IntermediarioServico.InscricaoMunicipal := '12547478';
         *)

         (* Usando quando o serviÁo for uma obra
         ConstrucaoCivil.CodigoObra := '88888';
         ConstrucaoCivil.Art        := '433';
         *)
      end;
   end;
end;

procedure TFNFSEletronica.btnValidarNFeClick(Sender: TObject);
//Var
//  Ok : Boolean;
//  Status, I, sNotaFiscal, _Sequencia,x,y : Integer;
//  NumeroRecibo, sDataHora, sSerie : String;
//  arquivos_backup:array[0..1] of string;
//  cnpj:string;
//  stats,Modo:string;
//
//  LAlgumSelecionado: Boolean;
begin
   ProcessaNotas;


{
   y:=0;

   if CdsNotas.IsEmpty then
   begin
      MensagemAtencao('N„o existe NF-e No Grid!' + SKIP + 'Realize primeiramente uma pesquisa!');
      Abort;
   end;

   if not ExisteSelecionado then
   begin
      MensagemAtencao('N„o existe NF-e Selecionada No Grid!' + SKIP + 'Clique com o mouse sobre a NF-e, e tente novamente!');
      DBGridConsulta.SetFocus;
   end;

   AcbrNFe.NotasFiscais.Clear;

   lblStatusValidar.Caption := '';

   IMPRIMENFERAVE1.Logo := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
   IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, Copy(QryParametrosNFE.FieldByName('NFE_GERALDANFERETRATO').AsString, 1, 1));
   IMPRIMENFERAVE1.NumCopias := 1;

   // Gera Xml
   PreencheInterfaces;
   AcbrNFe.NotasFiscais.GerarNFe;
   AcbrNFe.NotasFiscais.Valida;
   AcbrNFe.NotasFiscais.Assinar;

   AcbrNFe.Enviar(0);

   NumeroRecibo := AcbrNFe.WebServices.Enviar.Recibo;
   AcbrNFe.WebServices.Retorno.Recibo := NumeroRecibo;
   AcbrNFe.WebServices.Retorno.Executar;

  for I := 0 To (AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Count - 1) do
  begin

    sDataHora   := DateTimeToStr(AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].dhRecbto);
    sNotaFiscal := StrToInt(Copy(AcbrNFe.NotasFiscais.Items[I].NFe.procNFe.chNFe, 26, 9));
    sSerie      := Copy(AcbrNFe.NotasFiscais.Items[I].NFe.procNFe.chNFe, 25, 1);

    // Atualizar a Tabela de HistÛrico
    HistoricoNFe.Close;
    HistoricoNFe.SQL.Clear;
    HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
    HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
    HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + IntToStr(sNotaFiscal));
    HistoricoNFe.SQL.Add('AND   STATUS       = ' + IntToStr(AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat));
    CdsHistoricoNFe.close;
    CdsHistoricoNFe.Open;

    if CdsHistoricoNFe.RecordCount = 0 then begin
        HistoricoNFe.Close;
        HistoricoNFe.SQL.Clear;
        HistoricoNFe.SQL.Add('INSERT INTO HISTORICO_NFE ');
        HistoricoNFe.SQL.Add('      (STATUS,            ');
        HistoricoNFe.SQL.Add('       SEQUENCIA,         ');
        HistoricoNFe.SQL.Add('       COD_EMPRESA,       ');
        HistoricoNFe.SQL.Add('       NOTA_FISCAL,       ');
        HistoricoNFe.SQL.Add('       SERIE,             ');
        HistoricoNFe.SQL.Add('       DATA_EMISSAO,      ');
        HistoricoNFe.SQL.Add('       CHAVE,             ');
        HistoricoNFe.SQL.Add('       AMBIENTE,          ');
        HistoricoNFe.SQL.Add('       MODELO,            ');
        HistoricoNFe.SQL.Add('       PROTOCOLO,         ');
        HistoricoNFe.SQL.Add('       COD_CLIENTE,       ');
        HistoricoNFe.SQL.Add('       CAMINHO,           ');
        HistoricoNFe.SQL.Add('       RECIBO,            ');
        HistoricoNFe.SQL.Add('       FIL_CODIGO,        ');
        HistoricoNFe.SQL.Add('       FIL_CNPJ)          ');

        HistoricoNFe.SQL.Add('VALUES (:STATUS,          ');
        HistoricoNFe.SQL.Add('        :SEQUENCIA,       ');
        HistoricoNFe.SQL.Add('        :COD_EMPRESA,     ');
        HistoricoNFe.SQL.Add('        :NOTA_FISCAL,     ');
        HistoricoNFe.SQL.Add('        :SERIE,           ');
        HistoricoNFe.SQL.Add('        :DATA_EMISSAO,    ');
        HistoricoNFe.SQL.Add('        :CHAVE,           ');
        HistoricoNFe.SQL.Add('        :AMBIENTE,        ');
        HistoricoNFe.SQL.Add('        :MODELO,          ');
        HistoricoNFe.SQL.Add('        :PROTOCOLO,       ');
        HistoricoNFe.SQL.Add('        :COD_CLIENTE,     ');
        HistoricoNFe.SQL.Add('        :CAMINHO,         ');
        HistoricoNFe.SQL.Add('        :RECIBO,          ');
        HistoricoNFe.SQL.Add('        :FIL_CODIGO,     ');
        HistoricoNFe.SQL.Add('        :FIL_CNPJ)       ');

        QryMaximo.Close;
        QryMaximo.SQL.Clear;
        QryMaximo.SQL.Add('SELECT MAX(SEQUENCIA) + 1 AS TOTAL ');
        QryMaximo.SQL.Add('FROM HISTORICO_NFE                 ');

        CdsQryMaximo.close;
        CdsQryMaximo.Open;

        if CdsQryMaximo.RecordCount > 0 then begin
          _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
        end else begin
          _Sequencia := CdsQryMaximoTOTAL.AsInteger;
        end;

        HistoricoNFe.ParamByName('STATUS').Value         := IntToStr(AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat);
        HistoricoNFe.ParamByName('SEQUENCIA').AsInteger  :=_Sequencia;
        HistoricoNFe.ParamByName('COD_EMPRESA').Value    := CdsLookFiliaisEMP_CODIGO.AsInteger;
        HistoricoNFe.ParamByName('NOTA_FISCAL').Value    := sNotaFiscal;
        HistoricoNFe.ParamByName('SERIE').Value          := sSerie;
        HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate  := Date;
        HistoricoNFe.ParamByName('CHAVE').Value          := AcbrNFe.WebServices.Retorno.ChaveNFe;
        HistoricoNFe.ParamByName('AMBIENTE').Value       := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);
        HistoricoNFe.ParamByName('MODELO').Value         := '55';
        HistoricoNFe.ParamByName('PROTOCOLO').Value      := AcbrNFe.WebServices.Retorno.Protocolo;

        HistoricoNFe.ParamByName('COD_CLIENTE').Value    := QryCadNotaCLI_CODIGO.AsInteger;
        HistoricoNFe.ParamByName('CAMINHO').Value        := QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
        HistoricoNFe.ParamByName('FIL_CODIGO').Value     := CdsLookFiliaisFIL_CODIGO.AsInteger;
        HistoricoNFe.ParamByName('RECIBO').Value         := AcbrNFe.WebServices.Retorno.Recibo;
        HistoricoNFe.ParamByName('FIL_CNPJ').Value       := CdsLookFiliaisFIL_CNPJ.AsString;
        HistoricoNFe.ExecSQL;
    end;

    // Envio
    Status := AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat;

    if Status <> 9999 then begin

      Case Status Of
      103 :  begin
                btnReemitirDanfe.Enabled := False;
                btnValidarNFe.Enabled    := True;
                btnConsultar.Enabled     := True;
             end;

      9000 : begin
                btnReemitirDanfe.Enabled := False;
                btnValidarNFe.Enabled    := True;
                btnConsultar.Enabled     := True;
             end;
      end;

      // Atualiza N˙mero Recibo e Status NF-e
      if fContingencia = '1' then begin

        // Normal
        Case Status Of
        100  : AtualizaStatusNotaFiscal(sNotaFiscal, '5');

        103  : AtualizaStatusNotaFiscal(sNotaFiscal, '1');

        9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
        end;
      end
      else if fContingencia = '2' then begin

        // Contigencia
        Case Status Of
        103  : AtualizaStatusNotaFiscal(sNotaFiscal, '3');

        9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
        end;
      end
      else begin

        // Contigencia
        Case Status Of
        103  : AtualizaStatusNotaFiscal(sNotaFiscal, '4');

        9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
        end;
      end;
    end else begin
      AtualizaStatusNotaFiscal(sNotaFiscal, '3');
      btnReemitirDanfe.Enabled := True;
    end;
  end;

  AcbrNFe.NotasFiscais.Clear;
  // ENVIO DE XML PARA SITE!
  TRY
  Mensagens(Status);
  arquivos_backup[0] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
  arquivos_backup[1] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
  cnpj := CdsLookFiliaisFIL_CNPJ.AsString;
  stats :=  IntToStr(Status);
  Modo := QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString;
  EnviaBackupFtp(cnpj,stats,arquivos_backup,Modo);
  except
  END;

    cbStatusNota.ItemIndex := 9;
    btnConsultar.Click;


        try
            EnviaEmailCliente;
        except
        end;


     }
end;


function CharIsNum(const C: AnsiChar): Boolean;
begin
  Result := ( C in ['0'..'9'] ) ;
end ;

function OnlyNumber(const AValue: AnsiString): String;
Var
  I : Integer ;
  LenValue : Integer;
begin
  Result   := '' ;
  LenValue := Length( AValue ) ;
  For I := 1 to LenValue  do
  begin
     if CharIsNum( AValue[I] ) then
        Result := Result + AValue[I] ;
  end;
end ;

procedure TFNFSEletronica.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;


procedure TFNFSEletronica.buttonCCeClick(Sender: TObject);
begin
  frmCartaCorrecao := TfrmCartaCorrecao.Create(Application);
  Try
   // Modulo.codigofilial :='0';
  //  Modulo.codigofilial := CdsLookFiliaisFIL_CODIGO.AsString;
   // Modulo.serie  :=  CdsLookFiliais

    frmCartaCorrecao.ShowModal
  Finally
     frmCartaCorrecao.Release;
     frmCartaCorrecao := Nil;
  end;
end;

function TFNFSEletronica.Arredondar(AValor : Double; ADecimais : Integer) : Double;
var
  Valor1,
  Numero0,
  Numero1,
  Numero2,
  Numero3 : Double;
begin
  Valor1  := Exp(Ln(10)*(ADecimais+1));
  Numero0 := AValor*Valor1;
  Numero1 := Int(Numero0);
  Numero2 := (Numero1/10);
  Numero3 := Round(Numero2);
  //***
  Result := (Numero3/(Exp(Ln(10)*ADecimais)));
end;

procedure TFNFSEletronica.NFeAdicionaDadosTransportadora(ANFe: TNFe);
begin
                                                                     // ***** Transportadora *****
            With ANFe.Transp Do
            begin
               With Transporta Do
               begin

                  if QryCadNotaNOT_TRANSRAZAO.AsString <> '' then begin
                    xNome   := QryCadNotaNOT_TRANSRAZAO.AsString;
                    CNPJCPF := QryCadNotaNOT_TRANSCNPJCPF.AsString;
                    xender  := QryCadNotaNOT_TRANSENDERECO.AsString;
                    xMun    := QryCadNotaNOT_TRANSMUNICIPIO.AsString;
                    UF      := QryCadNotaNOT_TRANSUF.AsString;
                    IE      := QryCadNotaNOT_TRANSINSCRICAO.AsString;

                    // SE HOUVER CARRO CADASTRADO
                    veicTransp.placa := '';// QryCadNotaNOT_TRANSPLACA.AsString;
                    veicTransp.UF := '';
                    veicTransp.RNTC := '';


      // TAG de grupo de RetenÁ„o do ICMS do transporte - <retTransp> - OcorrÍncia 0-1
      {NFe.Transp.retTransp.vServ := 0; // X12 - Valor do ServiÁo
      NFe.Transp.retTransp.vBCRet := 0; // X13 - BC da RetenÁ„o do ICMS
      NFe.Transp.retTransp.pICMSRet := 0; // X14 - AlÌquota da RetenÁ„o
      NFe.Transp.retTransp.vICMSRet := 0; // X15 - Valor do ICMS Retido
      NFe.Transp.retTransp.CFOP := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
      NFe.Transp.retTransp.cMunFG := 0; // X17 - CÛdigo do municÌpio de ocorrÍncia do fato gerador do ICMS do transporte (Tabela do IBGE)
      // TAG de grupo VeÌculo - <veicTransp> - OcorrÍncia 0-1
      NFe.Transp.veicTransp.placa := ''; // X19 - Placa do VeÌculo
      NFe.Transp.veicTransp.UF := ''; // X20 - Sigla da UF
      NFe.Transp.veicTransp.RNTC := ''; // X21 - Registro Nacional de Transportador de Carga (ANTT)}



                    With Vol.Add Do
                    begin // TAG de grupo Volumes - <vol> - OcorrÍncia 0-N

                    qVol  :=  QryCadNotaNOT_TRANSQTD.AsInteger;          // X27 - Quantidade de volumes transportados
                    esp   :=  QryCadNotaNOT_TRANSESPECIE.AsString;       //''; // X28 - EspÈcie dos volumes transportados
                    marca :=  QryCadNotaNOT_TRANSMARCA.AsString;         //''; // X29 - Marca dos volumes transportados
                    nVol  :=  QryCadNotaNOT_TRANSNUMERO.AsString;        //''; // X30 - NumeraÁ„o dos volumes transportados

                    if QryCadNotaNOT_TRANSPESOBRUTO.AsString <> '' then
                    pesoB :=  StrToCurr(QryCadNotaNOT_TRANSPESOBRUTO.AsString)    //0; // X31 - Peso LÌquido (em kg)
                    else
                    pesoB := 0;

                    if QryCadNotaNOT_TRANSPESOLIQUIDO.AsString <> '' then
                    pesoL :=  StrToCurr(QryCadNotaNOT_TRANSPESOLIQUIDO.AsString)  //0; // X32 - Peso Bruto (em kg)
                    else
                    pesoL := 0;

                      {if QryCadNotaNOT_TRANSQTD.AsString = '' then begin
                        qVol := 0;
                      end else begin
                        qVol := StrToInt(QryCadNotaNOT_TRANSQTD.AsString);
                      end;

                      if QryCadNotaNOT_VOLUMES.AsString = '' then begin
                        nVol := '';
                      end else begin
                        nVol := QryCadNotaNOT_VOLUMES.AsString;
                      end;

                      marca := QryCadNotaNOT_TRANSMARCA.AsString;
                      esp   := QryCadNotaNOT_TRANSESPECIE.AsString;

                      if QryCadNotaNOT_TRANSPESOLIQUIDO.AsString = '' then begin
                        pesoL := 0;
                      end else begin
                        pesoL := StrToFloat(QryCadNotaNOT_TRANSPESOLIQUIDO.AsString);
                      end;

                      if QryCadNotaNOT_TRANSPESOBRUTO.AsString = '' then begin
                        pesoB := 0;
                      end else begin
                        pesoB := StrToFloat(QryCadNotaNOT_TRANSPESOBRUTO.AsString);
                      end;  }
                    end;
                  end;
               end;

               if QryCadNotaFRETE.AsInteger = 0 then
               begin
                  modFrete := mfContaEmitente;
               end else
               if QryCadNotaFRETE.AsInteger = 1 then
               begin
                  modFrete := mfContaDestinatario;
               end;
            end;
end;

procedure TFNFSEletronica.NFeAdicionaTotais(ANFe: TNFe; ACodNota, ACodFilial: string);
begin
   QryTotaisNfe.Close;
   QryTotaisNfe.Params.ParamByName('FIL_CODIGO').AsString :=  ACodFilial;
   QryTotaisNfe.Params.ParamByName('NOT_CODIGO').AsString :=  ACodNota;
   QryTotaisNfe.Open;
             // **** Preenche Rodape ****  FIM
             // Dados Da Nota Fiscal
           (* ----------------------------------------------------------------------------------------------------------------- *)
           (* TAG de grupo de Valores Totais da NF-e - <total> - Ocorr√™ncia 1-1 *)
           (* ----------------------------------------------------------------------------------------------------------------- *)
           // TAG de grupo de Valores Totais referentes ao ICMS - <ICMSTot> - Ocorr√™ncia 1-1

   with ANFe do
   begin
                                                                                                                      //QryCadNotaNOT_VALICM.AsCurrency; // W04 - Valor Total do ICMS


            if QryCadNotaNFE_OPTANTESIMPLESNASCIONAL.AsString = '1' then
            begin                                                                                   // // W05 - Base de C√°lculo do ICMS ST
            Total.ICMSTot.vBCST       := 0; //QryTotaisNfeNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;;
            Total.ICMSTot.vST         := 0; //QryTotaisNfeNI_ICMSSUBS_VALOR.AsCurrency; //QryCadNotaNOT_VALSUBS.AsCurrency; // W06 - Valor Total do ICMS ST
            total.ICMSTot.vBC         := 0;
            end else begin

            Total.ICMSTot.vBC         :=  QryTotaisNfeNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
            Total.ICMSTot.vICMS       :=  QryTotaisNfeNI_ICMS_VALOR.AsCurrency;
            Total.ICMSTot.vBCST       :=  QryTotaisNfeNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;;
            Total.ICMSTot.vST         := QryTotaisNfeNI_ICMSSUBS_VALOR.AsCurrency; //QryCadNotaNOT_VALSUBS.AsCurrency; // W06 - Valor Total do ICMS ST

            end;

// if (qryLookTributacoesSTICMSB_CODIGO.AsString = '60')  or  (qryLookTributacoesSTICMSB_CODIGO.AsString = '30') then
// begin
            Total.ICMSTot.vBC         := QryTotaisNfeNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
            Total.ICMSTot.vICMS      := QryTotaisNfeNI_ICMS_VALOR.AsCurrency;
            Total.ICMSTot.vBCST       := QryTotaisNfeNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;;
            Total.ICMSTot.vST         := QryTotaisNfeNI_ICMSSUBS_VALOR.AsCurrency;
      //  end;
      //arrumar total do produto sem o desconto
            Total.ICMSTot.vProd        := Arredondar(QryCadNotaNOT_TOTITENS.AsCurrency,2) ; // W07 - Valor Total dos produtos e servi√ßos
            Total.ICMSTot.vFrete       := Arredondar(QryCadNotaNOT_VALFRETE.AsCurrency,2); // W08 - Valor Total do Frete
            Total.ICMSTot.vSeg         := QryCadNotaNOT_VALSEGURO.AsCurrency; // W09 - Valor Total do Seguro
            Total.ICMSTot.vDesc        := Arredondar(QryCadNotaNOT_DESCONTO.AsCurrency,2); // W10 - Valor Total do Desconto
         // Total.ICMSTot.vII          := W11 - Valor Total do II
            Total.ICMSTot.vIPI         := QryTotaisNfeNI_IPI_VALOR.AsCurrency; //QryCadNotaNOT_VALIPI.AsCurrency; // W12 - Valor Total do IPI
            Total.ICMSTot.vPIS         := QryTotaisNfeNI_PIS_VALOR.AsCurrency; //QryCadNotaNOT_VALPIS.AsCurrency; // W13 - Valor do PIS
            Total.ICMSTot.vCOFINS      := QryTotaisNfeNI_COFINS_VALOR.AsCurrency; //QryCadNotaNOT_VALCOFINS.AsCurrency; // W14 - Valor do COFINS
            Total.ICMSTot.vOutro       := Arredondar(QryCadNotaNOT_ACRECIMO.AsCurrency,2); // W15 - Outras Despesas acess√≥rias
            Total.ICMSTot.vNF          := Arredondar(QryCadNotaNOT_TOTNOTA.AsCurrency  - QryCadNotaNT_VALORTOTALSERVICO.AsCurrency,2 ); // W16 - Valor Total da NF-e
            Total.ICMSTot.vTotTrib     := Arredondar(QryCadNotaTOTALIMPOSTOTRANSPARENCIA.AsCurrency,2) ;//Arredondar(QryTotaisNfeTOTALIMPOSTOTRANSPARENCIANORMAL.AsCurrency,2 ); // W16 - Valor Total da NF-e
   end;
end;

procedure TFNFSEletronica.NFeAdicionaItens(ANFe: TNFe; ACodNota, ACodFilial, ACodEmpresa: string);
var
   i: Integer;
   valorimposto,
   valorimposto1: string;
begin
            // Preenche Itens
//            NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

   QryItens.Close;
   QryItens.SQL.Clear;
   QryItens.SQL.Add('SELECT * FROM NOTA_ITENS ');
   QryItens.SQL.Add('WHERE FIL_CODIGO = ' + ACodFilial);
   QryItens.SQL.Add('AND NOT_CODIGO = ' + ACodNota);
   QryItens.CLOSE;
   QryItens.Open;

   Qrytotalitem.Close;
   Qrytotalitem.SQL.Clear;
   Qrytotalitem.SQL.Add('SELECT COUNT(N.ni_codigo) AS QTD  FROM NOTA_ITENS N');
   Qrytotalitem.SQL.Add('WHERE N.FIL_CODIGO = ' + ACodFilial);
   Qrytotalitem.SQL.Add('AND N.NOT_CODIGO = ' + ACodNota);
   Qrytotalitem.CLOSE;
   Qrytotalitem.Open;

   QryTotalDesconto.Close;
   QryTotalDesconto.ParamByName( 'FIL_CODIGO' ).AsString := ACodFilial;
   QryTotalDesconto.ParamByName( 'NOT_CODIGO' ).AsString := ACodNota;
   QryTotalDesconto.open;

   i := 1;

   if QryItens.RecordCount > 0 then
   begin
      QryItens.First;

      while not QryItens.Eof do
      begin
         Application.ProcessMessages;

         qryLookTributacoes.Close;
         qryLookTributacoes.SQL.Clear;
         qryLookTributacoes.SQL.Add('SELECT * FROM TRIBUTACOES ');
         qryLookTributacoes.SQL.Add('WHERE EMP_CODIGO       =  ' + ACodEmpresa);
         qryLookTributacoes.SQL.Add('AND TRIBUTACOES_CODIGO =  ' + QryItensTRIBUTACOES_CODIGO.AsString);
         qryLookTributacoes.Open;

         with ANFe.Det.Add do
         begin
            //Produtos e serviÁos
            Prod.nItem := I;

            Prod.cProd := QryItensPRO_CODIGO.AsString;

            if QryParametrosNFEIMPRIMENFECODIGOFABRICA.AsString = '' then
               Prod.cProd := QryItensPRO_CODIGO.AsString;

            if QryParametrosNFEIMPRIMENFECODIGOFABRICA.AsString = 'CODIGO DO SISTEMA' then
               Prod.cProd := QryItensPRO_CODIGO.AsString;

            if QryParametrosNFEIMPRIMENFECODIGOFABRICA.AsString = 'CODIGO DE FABRICA' then
            begin
               if QryItensPRO_CODFABRICANTE.AsString = ''  then
                  Prod.cProd := QryItensPRO_CODIGO.AsString
               else
                  Prod.cProd := QryItensPRO_CODFABRICANTE.AsString;
            end;

//            if not (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString  = '') then
//               CodPis         := StrToInt(qryLookTributacoesTRIBUTACOES_PIS_ST.AsString);
//
//            if not (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString  = '') then
//               CodCofins      := StrToInt(qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString);

            Prod.xProd     := QryItensPRO_NOME.AsString; //+ QryItensPRO_CODFABRICANTE.AsString;
            Prod.cEAN      := '';//QryItensNI_EAN.AsString;
            Prod.CFOP      := QryItensNI_CFOP.AsString;
            Prod.vUnCom    := QryItensNI_VALORUN.AsFloat;
            Prod.qCom      := QryItensNI_QTD.AsFloat;
            Prod.uCom      := QryItensNI_UNID.AsString;
            Prod.vProd     := Arredondar((QryItensNI_VALORUN.AsFloat * QryItensNI_QTD.AsFloat),2);
            Prod.uTrib     := QryItensNI_UNID.AsString;
            Prod.qTrib     := QryItensNI_QTD.AsFloat;
            Prod.vUnTrib   := Arredondar(QryItensNI_VALORUN.AsFloat,2);

            try
               valorimposto1 := '' ;
               valorimposto1 := 'Val.Aprox.Impostos R$' +
               FormatFloat( '#0.00', QryItensTOTALIMPOSTOTRANSPARENCIA.AsFloat) + ' ('+
               Format('%f%%',[((QryItensTOTALIMPOSTOTRANSPARENCIA.AsFloat / QryItensNI_QTD.AsFloat)*100)])  +  ' )'+
               ' Fonte:IBPT'  ;
            except
               valorimposto1 := '' ;
            end;

            infAdProd := valorimposto1;

            // arrumei para dividir o valor do frete para todas as mercadorias mudar depois...
            Prod.vFrete    := Arredondar((QryCadNotaNOT_VALFRETE.AsFloat / QrytotalitemQTD.AsInteger),2);
            Prod.vSeg      := Arredondar(QryItensNI_VALORSEGURO.AsFloat,2);

            if QryCadNotaNOT_DESCONTO.AsCurrency > 0 then
               Prod.vDesc := QryItensNI_VALORREALDESCONTO.AsCurrency;

            // acrescimo
            if QryCadNotaNOT_ACRECIMO.AsCurrency > 0 then
            begin
               //vDescontoDividido :=(QryCadNotaNOT_DESCONTO.AsCurrency / QrytotalitemQTD.AsInteger );
               //Prod.vDesc     := vDescontoDividido;
               Prod.vOutro      := (QryCadNotaNOT_ACRECIMO.AsCurrency / QrytotalitemQTD.AsInteger ) ;
            end
            else
            begin
               Prod.vOutro      :=  0;
            end;

            // isso aqui e importante...

            // NCM / GENERO
            if QryItensPRO_CODIGO_NCM.AsString <> '' then
            begin
                Prod.NCM := RemoveChar(QryItensPRO_CODIGO_NCM.AsString);
            end
            else
            begin
                Prod.NCM := '00';
            end;

            //DeclaraÁ„o de ImportaÁ„o. Pode ser adicionada v·rias atravÈs do comando Prod.DI.Add
            {         with Prod.DI.Add do
                      begin
                        nDi         := '';
                        dDi         := now;
                        xLocDesemb  := '';
                        UFDesemb    := '';
                        dDesemb     := now;
                        cExportador := '';

                        with adi.Add do
                         begin
                           nAdicao     := 1;
                           nSeqAdi     := 1;
                           cFabricante := '';
                           vDescDI     := 0;
                         end;
                      end;
            }
            // Campos para venda de veÌculos novos;
            with Prod.veicProd do
            begin
               //TAG de grupo do detalhamento de VeÌculos novos - <veicProd> - OcorrÍncia 0-1
               // Este grupo ser· criado no XML somente se o campo <chassi> for informado.
               tpOP := toVendaDireta;  // J02 - Tipo da operaÁ„o
                                                                //         (1)=toVendaConcessionaria
                                                                //         (2)=toFaturamentoDireto
                                                                //         (3)=toVendaDireta
                                                                //         (0)=toOutros
               chassi := '';          // J03 - Chassi do veÌculo
               cCor := '';           // J04 - Cor
               xCor := '';            // J05 - DescriÁ„o da Cor
               pot := '';             // J06 - PotÍncia Motor
               Cilin:='';
              // CM3 := '';             // J07 - CM3 (PotÍncia)
               pesoL := '';           // J08 - Peso LÌquido
               pesoB := '';           // J09 - Peso Bruto
               nSerie := '';          // J10 - Serial (sÈrie)
               tpComb := '';          // J11 - Tipo de combustÌvel
               nMotor := '';          // J12 - N˙mero de Motor
            //   CMKG := '';            // J13 - CMKG
               dist := '';            // J14 - Dist‚ncia entre eixos
              // RENAVAM := '';         // J15 - RENAVAM            (N„o informar a TAG na exportaÁ„o)
               anoMod := 0;           // J16 - Ano Modelo de FabricaÁ„o
               anoFab := 0;           // J17 - Ano de FabricaÁ„o
               tpPint := '';          // J18 - Tipo de Pintura
               tpVeic := 0;           // J19 - Tipo de VeÌculo    (Utilizar Tabela RENAVAM)
               espVeic := 0;          // J20 - EspÈcie de VeÌculo (Utilizar Tabela RENAVAM)
               VIN := '';             // J21 - CondiÁ„o do VIN
               condVeic := cvAcabado; // J22 - CondiÁ„o do VeÌculo (1-Acabado; 2-Inacabado; 3-Semi-acabado)
               cMod := '';             // J23 - CÛdigo Marca Modelo (Utilizar Tabela RENAVAM)
               cCorDENATRAN := '';    // Segundo as regras de prÈcadastro do DENATRAN
               lota := 0;             // quantidade maxima permitida de passageiros sentados inclusive motorista
               tpRest := 0;           // RestriÁ„o
            end;

            //Campos especÌficos para venda de medicamentos
            {         with Prod.med.Add do
                      begin
                        nLote := '';
                        qLote := 0 ;
                        dFab  := now ;
                        dVal  := now ;
                        vPMC  := 0 ;
                      end;  }
            //Campos especÌficos para venda de armamento
            {         with Prod.arma.Add do
                      begin
                        nSerie := 0;
                        tpArma := taUsoPermitido ;
                        nCano  := 0 ;
                        descr  := '' ;
                      end;      }
            //Campos especÌficos para venda de combustÌvel(distribuidoras)
            if  QryItenspro_anp.asinteger > 0 then
            begin
               with Prod.comb do
               begin
                  cProdANP := QryItenspro_anp.asinteger;
                  UFcons   := Trim(QryCadNotaCLI_END_CID_UF.AsString);
                  CODIF    := '';
                  qTemp    := 0;

                  CIDE.qBCprod   := 0 ;
                  CIDE.vAliqProd := 0 ;
                  CIDE.vCIDE     := 0 ;

                  ICMS.vBCICMS   := 0 ;
                  ICMS.vICMS     := 0 ;
                  ICMS.vBCICMSST := 0 ;
                  ICMS.vICMSST   := 0 ;

                  ICMSInter.vBCICMSSTDest := 0 ;
                  ICMSInter.vICMSSTDest   := 0 ;

                  ICMSCons.vBCICMSSTCons := 0 ;
                  ICMSCons.vICMSSTCons   := 0 ;
                  ICMSCons.UFcons        := Trim(QryCadNotaCLI_END_CID_UF.AsString);
               end;
            end;    

            // Imposto
            with Imposto do
            begin
               with ICMS do
               begin
                        if qryLookTributacoesSTICMSA_CODIGO.AsString = '0' then
                        orig := oeNacional; // N11 - Origem da mercadoria
                        if qryLookTributacoesSTICMSA_CODIGO.AsString = '1' then
                        orig := oeEstrangeiraImportacaoDireta; // N11 - Origem da mercadoria
                        if qryLookTributacoesSTICMSA_CODIGO.AsString = '2' then
                        orig := oeEstrangeiraAdquiridaBrasil; // N11 - Origem da mercadoria
                       // (0)=oeNacional
                       // (1)=oeEstrangeiraImportacaoDireta
                       // TAG de grupo do ICMS da Opera√ß√£o pr√≥pria e ST - <ICMS> - Ocorr√™ncia 1-1
                       CSOSN := csosnVazio;
                       if qryLookTributacoesCSOSN.AsString = '101' then
                       CSOSN := csosn101;
                       if qryLookTributacoesCSOSN.AsString = '102' then
                       CSOSN := csosn102;
                       if qryLookTributacoesCSOSN.AsString = '103' then
                       CSOSN := csosn103;
                       if qryLookTributacoesCSOSN.AsString = '201' then
                       CSOSN := csosn201;
                       if qryLookTributacoesCSOSN.AsString = '202' then
                       CSOSN := csosn202;
                       if qryLookTributacoesCSOSN.AsString = '203' then
                       CSOSN := csosn203;
                       if qryLookTributacoesCSOSN.AsString = '300' then
                       CSOSN := csosn300;
                       if qryLookTributacoesCSOSN.AsString = '400' then
                       CSOSN := csosn400;
                       if qryLookTributacoesCSOSN.AsString = '500' then
                       CSOSN := csosn500;
                       if qryLookTributacoesCSOSN.AsString = '900' then
                       CSOSN := csosn900;

                              CST := cstVazio;
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '00' then
                              CST := cst00; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '10' then
                              CST := cst10; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '20' then
                              CST := cst20; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '30' then
                              CST := cst30; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '40' then
                              CST := cst40; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '41' then
                              CST := cst41; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '50' then
                              CST := cst50; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '51' then
                              CST := cst51; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '60' then
                              CST := cst60; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '70' then
                              CST := cst70; // N12 - Tributa√ß√£o do ICMS
                              if qryLookTributacoesSTICMSB_CODIGO.AsString = '90' then
                              CST := cst90;


                         // N12 - Tributa√ß√£o do ICMS
                        // (00)=cst00
                        // (10)=cst10
                        // (20)=cst20
                        // (30)=cst30
                        // (40)=cst40
                        // (41)=cst41
                        // (50)=cst50
                        // (51)=cst51
                        // (60)=cst60
                        // (70)=cst70
                        // (90)=cst90

                        modBC       := dbiValorOperacao; // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        vBC         := 0;//Arredondar(QryItensNI_ICMS_VALOR_BASE_CALCULO.AsFloat,2); // N15 - Valor da BC do ICMS
                        pICMS       := 0;//QryItensNI_ICMS_ALIQUOTA.AsFloat; // N16 - Al√≠quota do imposto
                        vICMS       := 0;//Arredondar(QryItensNI_ICMS_VALOR.Asfloat,2); // N17 - Valor do ICMS

                        if CST = cst00 then begin
                        modBC       := dbiValorOperacao; // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        vBC         := Arredondar(QryItensNI_ICMS_VALOR_BASE_CALCULO.AsFloat,2); // N15 - Valor da BC do ICMS
                        pICMS       := QryItensNI_ICMS_ALIQUOTA.AsFloat; // N16 - Al√≠quota do imposto
                        vICMS       := Arredondar(QryItensNI_ICMS_VALOR.Asfloat,2); // N17 - Valor do ICMS
                        end;

                        if CST = cst10 then
                        begin
                        modBC       := dbiValorOperacao; // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        vBC         := Arredondar(QryItensNI_ICMS_VALOR_BASE_CALCULO.Asfloat,2); // N15 - Valor da BC do ICMS
                        pICMS       := QryItensNI_ICMS_ALIQUOTA.Asfloat; // N16 - Al√≠quota do imposto
                        vICMS       := Arredondar(QryItensNI_ICMS_VALOR.Asfloat,2); // N17 - Valor do ICMS
                        modBCST     := dbisPrecoTabelado; // N18 - Modalidade de determina√ß√£o da BC do ICMS ST
                        pMVAST      := qryLookTributacoesTRIBUTACOES_ICMS_MVA.Asfloat; // N19 - Percentual da margem de valor Adicionado do ICMS ST
                        pRedBCST    := qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // N20 - Percentual da Redu√ß√£o de BC do ICMS ST
                        vBCST       := Arredondar(QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.Asfloat,2);  // N21 - Valor da BC do ICMS ST
                        pICMSST     := QryItensNI_ICMSSUBS_ALIQUOTA.Asfloat;  // N22 - Al√≠quota do imposto do ICMS ST
                        vICMSST     := Arredondar(QryItensNI_ICMSSUBS_VALOR.Asfloat,2); // N23 - Valor do ICMS ST
                        end;

                        if CST = cst20 then
                        begin
                        ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        ICMS.pRedBC      := qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // N14 - Percentual da Redu√ß√£o de BC do ICMS
                        ICMS.vBC         := QryItensNI_ICMS_VALOR_BASE_CALCULO.Asfloat; // N15 - Valor da BC do ICMS
                        ICMS.pICMS       := QryItensNI_ICMS_ALIQUOTA.Asfloat; // N16 - Al√≠quota do imposto
                        ICMS.vICMS       := QryItensNI_ICMS_VALOR.Asfloat; // N17 - Valor do ICMS
                        end;

                        if CST = cst30 then
                        begin
                        ICMS.modBCST:= dbisPrecoTabelado;
                        vICMSST     := QryItensNI_ICMSSUBS_VALOR.Asfloat; // N17 - Valor do ICMS st
                        pMVAST      := qryLookTributacoesTRIBUTACOES_ICMS_MVA.Asfloat;// N19 - Percentual da margem de valor Adicionado do ICMS ST
                        pRedBCST    := qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // N20 - Percentual da Redu√ß√£o de BC do ICMS ST
                        vBCST       := QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.Asfloat; // N21 - Valor da BC do ICMS ST
                        pICMSST     := QryItensNI_ICMSSUBS_ALIQUOTA.Asfloat; // N22 - Al√≠quota do imposto do ICMS ST
                        vICMSST     := QryItensNI_ICMSSUBS_VALOR.Asfloat; // N23 - Valor do ICMS ST
                        end;

                        if  (CST = cst40) or
                            (CST = cst41) or
                            (CST = cst50) then
                        begin

                        end;

                        if CST = cst51 then
                        begin
                        modBC       := dbiValorOperacao; // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        pRedBC      := qryLookTributacoesTRIBUTACOES_ICMS_MVA.Asfloat;; // N14 - Percentual da Redu√ß√£o de BC do ICMS
                        vBC         := QryItensNI_ICMS_VALOR_BASE_CALCULO.Asfloat; // N15 - Valor da BC do ICMS
                        pICMS       := QryItensNI_IPI_ALIQUOTA.Asfloat; // N16 - Al√≠quota do imposto
                        vICMS       := QryItensNI_ICMS_VALOR.Asfloat; // N17 - Valor do ICMS

                        end;
                        if CST = cst60 then
                        begin
                        vBCSTRet      := 0;//(QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.Asfloat);
                        vICMSSTRet    := 0;//(QryItensNI_ICMSSUBS_VALOR.Asfloat);
                        vBCST         := 0;//(QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.Asfloat);// N21 - Valor da BC do ICMS ST
                        vICMSST       := 0;//(QryItensNI_ICMSSUBS_VALOR.Asfloat);// N23 - Valor do ICMS ST
                        end;

                        if CST = cst70 then  //arrumar para envio de nfe
                        begin
                      //  modBC   :=  dbisPrecoTabelado;  // Modalidade de determinaÁ„o da BC do ICMS

                        pRedBC  :=  qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // Percentual da ReduÁ„o de BC
                        vBC     :=  QryItensNI_ICMS_VALOR_BASE_CALCULO.Asfloat        ; // Valor da BC do ICMS
                        pICMS   :=  QryItensNI_ICMS_ALIQUOTA.Asfloat ; // AlÌquota do imposto
                        vICMS   :=  QryItensNI_ICMS_VALOR.Asfloat ; // Valor do ICMS
                        modBCST :=  dbisPrecoTabelado; // Modalidade de determinaÁ„o da BC do ICMS ST


                        pMVAST  :=   qryLookTributacoesTRIBUTACOES_ICMS_MVA.Asfloat; //  Percentual da margem de valor Adicionado do ICMS ST
                      //  pRedBCST :=  ; //  Percentual da ReduÁ„o de BC do ICMS ST
                        vBCST   :=   QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.Asfloat; //  Valor da BC do ICMS ST
                        pICMSST :=   QryItensNI_ICMSSUBS_ALIQUOTA.Asfloat; //  AlÌquota do imposto do ICMS ST
                        vICMSST :=   QryItensNI_ICMSSUBS_VALOR.Asfloat; //  Valor do ICMS ST

                        pMVAST      := qryLookTributacoesTRIBUTACOES_ICMS_MVA.Asfloat; // N19 - Percentual da margem de valor Adicionado do ICMS ST
                        pRedBCST    := qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // N20 - Percentual da Redu√ß√£o de BC do ICMS ST
                        end;

                        if CST = cst90 then
                        begin
                        modBC       := dbiValorOperacao; // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        pRedBC      := qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // N14 - Percentual da Redu√ß√£o de BC do ICMS
                        vBC         := QryItensNI_ICMS_VALOR_BASE_CALCULO.Asfloat; // N15 - Valor da BC do ICMS
                        pICMS       := QryItensNI_ICMS_ALIQUOTA.Asfloat; // N16 - Al√≠quota do imposto
                        vICMS       := QryItensNI_ICMS_VALOR.Asfloat; // N17 - Valor do ICMS
                        modBCST     := dbisPrecoTabelado; // N18 - Modalidade de determina√ß√£o da BC do ICMS ST
                        pMVAST      := qryLookTributacoesTRIBUTACOES_ICMS_MVA.Asfloat; // N19 - Percentual da margem de valor Adicionado do ICMS ST
                        pRedBCST    := qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO.Asfloat; // N20 - Percentual da Redu√ß√£o de BC do ICMS ST
                        vBCST       := QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.Asfloat; // N21 - Valor da BC do ICMS ST
                        pICMSST     := QryItensNI_ICMSSUBS_ALIQUOTA.Asfloat; // N22 - Al√≠quota do imposto do ICMS ST
                        vICMSST     := QryItensNI_ICMSSUBS_VALOR.Asfloat; // N23 - Valor do ICMS ST
                        end;
                        // N13 - Modalidade de determina√ß√£o da BC do ICMS
                        // (0)=dbiMargemValorAgregado
                        // (1)=dbiPauta
                        // (2)=dbiPrecoTabelado
                        // (3)=dbiValorOperacao


                        // N18 - Modalidade de determina√ß√£o da BC do ICMS ST
                        // (0)=dbisPrecoTabelado ¬ñ Pre√ßo tabelado ou m√°ximo sugerido;
                        // (1)=dbisListaNegativa - Lista Negativa (valor);
                        // (2)=dbisListaPositiva - Lista Positiva (valor);
                        // (3)=dbisListaNeutra - Lista Neutra (valor);
                        // (4)=dbisMargemValorAgregado - Margem Valor Agregado (%);
                        // (5)=dbisPauta - Pauta (valor);)
                        //***************************************************************************************************

                        if CSOSN = csosn500  then
                        begin
                        vBCSTRet :=  QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency ;
                        vICMSSTRet :=QryItensNI_ICMSSUBS_VALOR.AsCurrency ;
                        end;


                        if CSOSN = (csosn202)  then
                        begin
                        pMVAST    := QryItensNI_PMVAST.AsCurrency; //Percentual da margem de valor Adicionado do ICMS ST
                        pRedBCST  := QryItensNI_PREDBCST.AsCurrency; // Percentual da ReduÁ„o de BC do ICMS ST
                        vBCST     := QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;  //Valor da BC do ICMS ST
                        pICMSST   := QryItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // AlÌquota do imposto do ICMS ST
                        vICMSST   := QryItensNI_ICMSSUBS_VALOR.AsCurrency; //Valor do ICMS ST
                        end;

                        if CSOSN = (csosn203)  then
                        begin
                        pMVAST    := QryItensNI_PMVAST.AsCurrency; //Percentual da margem de valor Adicionado do ICMS ST
                        pRedBCST  := QryItensNI_PREDBCST.AsCurrency; // Percentual da ReduÁ„o de BC do ICMS ST
                        vBCST     := QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;  //Valor da BC do ICMS ST
                        pICMSST   := QryItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // AlÌquota do imposto do ICMS ST
                        vICMSST   := QryItensNI_ICMSSUBS_VALOR.AsCurrency; //Valor do ICMS ST
                        end;


                        if CSOSN = (csosn900) then
                        begin

                        vBC       := QryItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency // Valor da BC do ICMS
                        //pRedBC    := QryItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency // Percentual da ReduÁ„o de BC
                        //pICMS     := QryItensNI_ICMS_ALIQUOTA.AsCurrency; // AlÌquota do imposto
                        //vICMS     := QryItensNI_ICMS_VALOR.AsCurrency; // Valor do ICMS
                        //pMVAST    :=   Percentual da margem de valor Adicionado do ICMS ST //tem que por
                        //pRedBCST  :=   //Percentual da ReduÁ„o de BC  do ICMS ST

                        //vBCST     := QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;  //Valor da BC do ICMS ST
                        //pICMSST   := QryItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // AlÌquota do imposto do ICMS ST
                        //vICMSST   := QryItensNI_ICMSSUBS_VALOR.AsCurrency; //Valor do ICMS ST

                        //pCredSN   := //AlÌquota aplic·vel de c·lculo do crÈdito (SIMPLES NACIONAL).
                        //vCredICMSSN := // Valor crÈdito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (SIMPLES NACIONAL)

                        end;




                     end;

                       With IPI Do begin
                          if QryItensNI_IPI_VALOR.AsFloat > 0 then begin
                            cEnq     := '999';
                            vIPI     := QryItensNI_IPI_VALOR.AsFloat;
                            vBC      := QryItensNI_IPI_VALOR_BASE_CALCULO.AsFloat;
                            pIPI     := QryItensNI_IPI_ALIQUOTA.AsFloat;
                            qUnid    := 0;
                            vUnid    := 0;
                            CNPJProd := '';
                          end;
                       end;

                       With PIS Do begin
                          // PIS
                          // TAG de grupo do PIS - <PIS> - Ocorr√™ncia 1-1
                          // Q06 - C√≥digo de Situa√ß√£o Tribut√°ria do PIS
                          // (01)=pis01 ¬ñ Opera√ß√£o Tribut√°vel (base de c√°lculo = valor da opera√ß√£o al√≠quota normal (cumulativo/n√£o cumulativo));
                          // (02)=pis02 - Opera√ß√£o Tribut√°vel (base de c√°lculo = valor da opera√ß√£o (al√≠quota diferenciada));
                          // (03)=pis03 - Opera√ß√£o Tribut√°vel (base de c√°lculo = quantidade vendida x al√≠quota por unidade de produto )
                          // (04)=pis04 - Opera√ß√£o Tribut√°vel (tributa√ß√£o monof√°sica (al√≠quota zero));
                          // (06)=pis06 - Opera√ß√£o Tribut√°vel (al√≠quota zero);
                          // (07)=pis07 - Opera√ß√£o Isenta da Contribui√ß√£o;
                          // (08)=pis08 - Opera√ß√£o Sem Incid√™ncia da Contribui√ß√£o;
                          // (09)=pis09 - Opera√ß√£o com Suspens√£o da Contribui√ß√£o;
                          // (99)=pis99 - Outras Opera√ß√µes;

                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '01') then
                          CST := pis01;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '02') then
                          CST := pis02;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '03') then
                          CST := pis03;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '04') then
                          CST := pis04;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '06') then
                          CST := pis06;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '07') then
                          CST := pis07;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '08') then
                          CST := pis08;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '09') then
                          CST := pis09;
                          if (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString = '99') then
                          CST := pis99;

                          if qryLookTributacoesTRIBUTACOES_PIS_ST.AsString <> '' then
                          begin
                           if (CST = pis01) or
                           (CST = pis02) then
                           begin
                            vBC          := QryItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // Q07 - Valor da Base de C√°lculo do PIS
                            pPIS         := QryItensNI_PIS_ALIQUOTA.AsCurrency; // Q08 - Al√≠quota do PIS (em percentual)
                            qBCProd      := QryItensNI_QTD.Asfloat; // Q10 - Quantidade Vendida
                            vAliqProd    := 0; // Q11 - Al√≠quota do PIS (em reais)
                            vPIS         := QryItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
                           end;
                           if (CST = pis03) then
                           begin
                           qBCProd    := QryItensNI_QTD.Asfloat;            // Q10 - Quantidade Vendida
                           vAliqProd  := QryItensNI_PIS_ALIQUOTA.AsCurrency;;  // Q11 - Al√≠quota do PIS (em reais)
                           vPIS       := QryItensNI_PIS_VALOR.AsCurrency;      // Q09 - Valor do PIS
                           end;
                           {if (CST = pis03) and (QryItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0)then
                           begin
                           vBC        := QryItensNI_PIS_VALOR_BASE_CALCULO.Asfloat; // Q07 - Valor da Base de C√°lculo do PIS
                           pPIS       := QryItensNI_PIS_ALIQUOTA.Asfloat; // Q08 - Al√≠quota do PIS (em percentual)
                           vPIS       := QryItensNI_PIS_VALOR.Asfloat; // Q09 - Valor do PIS
                           end;
                           if (CST = pis03) and (not (QryItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0))then
                           begin
                           qBCProd    := QryItensNI_QTD.Asfloat; // Q10 - Quantidade Vendida
                           vAliqProd  := QryItensNI_PIS_ALIQUOTA.Asfloat; // Q11 - Al√≠quota do PIS (em reais)
                           vPIS       := QryItensNI_PIS_VALOR.Asfloat; // Q09 - Valor do PIS
                           end; }

                           if (CST = pis99) then
                           begin
                               CST        := pis99;
                               vBC        := 0;
                               pPIS       := 0;
                               vPIS       := 0;
                           end;

                           end else begin
                               CST        := pis99;
                               vBC        := 0;
                               pPIS       := 0;
                               vPIS       := 0;
                             end;
                          end;
                     

                       With COFINS Do begin
                          // COFINS
                            //COFINS - grupo de COFINS tributado pela alÌquota

                            // TAG de grupo do COFINS - <COFINS> - Ocorr√™ncia 1-1
                            // S06 - C√≥digo de Situa√ß√£o Tribut√°ria do COFINS
                            // (01) ¬ñ Opera√ß√£o Tribut√°vel (base de c√°lculo = valor da opera√ß√£o al√≠quota normal (cumulativo/n√£o cumulativo));
                            // (02) - Opera√ß√£o Tribut√°vel (base de c√°lculo = valor da opera√ß√£o
                            // (03) - Opera√ß√£o Tribut√°vel (base de c√°lculo = quantidade vendida x al√≠quota por unidade de produto);
                            // (04) - Opera√ß√£o Tribut√°vel (tributa√ß√£o monof√°sica (al√≠quota zero));
                            // (06) - Opera√ß√£o Tribut√°vel (al√≠quota zero);
                            // (07) - Opera√ß√£o Isenta da Contribui√ß√£o;
                            // (08) - Opera√ß√£o Sem Incid√™ncia da Contribui√ß√£o;
                            // (09) - Opera√ß√£o com Suspens√£o da Contribui√ß√£o;
                            // (99) - Outras Opera√ß√µes;

                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '01') then
                            CST := cof01;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '02') then
                            CST := cof02;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '03') then
                            CST := cof03;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '04') then
                            CST := cof04;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '06') then
                            CST := cof06;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '07') then
                            CST := cof07;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '08') then
                            CST := cof08;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '09') then
                            CST := cof09;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '99') then
                            CST := cof99;
                            if (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString <> '') then
                            begin

                              if (CST = cof01) or (CST = cof02) then
                              begin
                              vBC             := QryItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // S07 - Valor da Base de C√°lculo da COFINS
                              pCOFINS         := QryItensNI_COFINS_ALIQUOTA.AsCurrency; // S08 - Al√≠quota da COFINS (em percentual)
                              vCOFINS         := QryItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
                              end;
                              if CST = cof03 then
                              begin
                              vBCProd         := QryItensNI_COFINS_VALOR.AsCurrency; // S09 - Valor do COFINS
                              vAliqProd       := QryItensNI_COFINS_ALIQUOTA.AsCurrency; // S10 - Al√≠quota do COFINS (em reais)
                              vCOFINS         := QryItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
                              end;
                              if CST = cof99 then
                              BEGIN
                              CST         := cof99;
                              vBC         := 0; // S07 - Valor da Base de C√°lculo da COFINS
                              pCOFINS     := 0; // S08 - Al√≠quota da COFINS (em percentual)
                              vCOFINS     := 0; // S11 - Valor do COFINS

                              END
                              end ELSE
                              BEGIN
                              CST             := cof99;
                              vBC             := 0;
                              pCOFINS         := 0;
                              vCOFINS         := 0;
                              end;
                          end;

                      // With II Do begin
                          // II - Informar apenas quando o item for sujeito ao II
                      //    vBc      := 0;
                      //    vDespAdu := 0;
                      //    vII      := 0;
                      //    vIOF     := 0
                      // end;

                      { With ISSQN Do begin
                          // ISS
                          vBc       := 0;
                          vAliq     := 0;
                          vISSQN    := 0;
                          cMunFG    := 0;
                          cListServ := 0
                       end;}
                     end;
                  // Fim Imposto
                  end;

                  Inc(I);
                  QryItens.Next;
               end;
               // S := FormatFloat( '#0.00', cdsTitTIT_VALOR.AsFloat ) + '   DATA VENC.: ' + cdsTitTIT_VENCIMENTO.AsString + #13#10;
               //Val.Aprox.Impostos R$339,16(40,01%) Fonte:IBPT
               try
                  valorimposto := 'Val.Aprox.Impostos R$' +
                  FormatFloat( '#0.00', QryCadNotaTOTALIMPOSTOTRANSPARENCIA.AsFloat) + ' ('+
                  Format('%f%%',[((QryCadNotaTOTALIMPOSTOTRANSPARENCIA.AsFloat / QryCadNotaNOT_TOTNOTA.AsFloat)*100)])  +  ' )'+
                  ' Fonte:IBPT' + #13#10 + QryCadNotaNOT_OBSERVACAO.AsString ;
               except
                  valorimposto := QryCadNotaNOT_OBSERVACAO.AsString ;
               end;

               ANFe.InfAdic.infAdFisco := QryCadNotaNOT_OBSFISCO.AsString   ;
               ANFe.InfAdic.infCpl     := valorimposto ;
            end;


end;

procedure TFNFSEletronica.PreencheInterfaces;
Var
  Ok : Boolean;
  valorimposto,
  valorimposto1 : String;
  I,
  CodPis,
  CodOperacaoPis,
  CodIPI,
  CodCofins,
  CodOperacaoCofins : Integer;  
  totaldesconto : Variant;
  CFOP : string;

  LNotaFiscal: ACBrNFeNotasFiscais.NotaFiscal;
begin
   AcbrNFe.NotasFiscais.Clear;

   I := 1;

   CdsNotas.First;

   while not CdsNotas.Eof do
   begin
      if (CdsNotasMARCADO.AsString = 'S') and ((CdsNotasSTATUS_NFE.AsInteger <> 5) or (CdsNotasSTATUS_NFE.AsInteger <> 6)) then
      begin
         LNotaFiscal := AcbrNFe.NotasFiscais.Add;

         with LNotaFiscal.NFe do
         begin
            Application.ProcessMessages;

            infNFe.ID := CdsNotasNOTA_FISCAL.AsString;

            (* Preenche Nota Fiscal *)
            NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

            Ide.natOp     := CdsNotas.FieldByName('CFOP_DESCRICAO').AsString; // Dangelo Mudar para DescriÁ„o
            infNFe.ID     := IntToStr(CdsNotas.FieldByName('NOTA_FISCAL').AsInteger);
            Ide.nNF       := CdsNotas.FieldByName('NOTA_FISCAL').AsInteger;
            Ide.cNF       := CdsNotas.FieldByName('NOTA_FISCAL').AsInteger;
            Ide.modelo    := 55;

            if CdsNotas.FieldByName('SERIE').AsString = '' then
            begin
               MensagemAtencao('Nota Fiscal N„o Possui SÈrie');
               btnConsultar.SetFocus;
               Abort;
            end
            else
               Ide.serie := StrToInt(CdsNotas.FieldByName('SERIE').AsString); 

            Ide.dEmi      := Date;//QryCadNotaNOT_DATAEMISSAO.AsDateTime;
            Ide.dSaiEnt   := Date;//QryCadNotaNOT_DATASAIDA.AsDateTime;
            Ide.tpAmb     := StrToTpAmb(Ok, Ambiente);

            Case FormaContigencia Of
               1 : Ide.tpEmis := teNormal;
               2 : Ide.tpEmis := teContingencia;
               3 : Ide.tpEmis := teSCAN;
               4 : Ide.tpEmis := teDPEC;
               5 : Ide.tpEmis := teFSDA;
            end;

            Ide.verProc := '1.0.0.0';
            CFOP := RemoveChar(CdsNotas.FieldByName('CFOP_COF').AsString);
            CFOP := Copy(CFOP, 1, 4);

            // Tipo (0-Entrada / 1-SaÌda)
            if (StrToInt(CFOP) > 4999) then
               Ide.tpNF := tnSaida
            else
               Ide.tpNF := tnEntrada;

            // CondiÁ„o de Pagamento
            if CdsNotas.FieldByName('NOT_FORMAPGMTNFE').AsString = 'Pagamento ‡ Prazo.' then
               Ide.indPag := ipPrazo
            else
            begin
               if CdsNotas.FieldByName('NOT_FORMAPGMTNFE').AsString = 'Pagamento ‡ vista.' then
                  Ide.indPag := ipVista
               else
                 Ide.indPag := ipOutras;
            end;

            Ide.cUF    := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEUF.AsString));
            Ide.cMunFG := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString));

            // **** Preenche Empresa ****
            Emit.xNome   := CdsLookFiliaisFIL_NOME.AsString;
            Emit.CNPJCPF := CdsLookFiliaisFIL_CNPJ.AsString;
            Emit.xFant   := CdsLookFiliaisFIL_NOMEFANTASIA.AsString;
            Emit.CNAE    := CdsLookFiliaisFIL_CNAE.AsString;


            // Pesquisa o endereÁo da Empresa
            Emit.enderEmit.xLgr    := CdsLookFiliaisFIL_END_ENDERECO.AsString;
            Emit.IE                := CdsLookFiliaisFIL_INSCEST.AsString;
            Emit.enderEmit.fone    := CdsLookFiliaisFIL_FONE.AsString;
            Emit.enderEmit.CEP     := StrToInt(RemoveChar(CdsLookFiliaisFIL_END_CEP.AsString));

            if CdsLookFiliaisFIL_END_NUMERO.AsString <> '' then
               Emit.enderEmit.nro     := CdsLookFiliaisFIL_END_NUMERO.AsString
            else
               Emit.enderEmit.nro     := '0';  

            Emit.enderEmit.xCpl    := CdsLookFiliaisFIL_END_COMPLEMENTO.AsString;
            Emit.enderEmit.xBairro := CdsLookFiliaisFIL_END_BAIRRO.AsString;
            Emit.enderEmit.cMun    := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString));
            Emit.enderEmit.xMun    := Trim(CdsLookFiliaisFIL_END_CID_NOME.AsString);
            Emit.enderEmit.UF      := Trim(CdsLookFiliaisFIL_END_CID_UF.AsString);

            //Emit.enderEmit.cPais   := 1058;      // ARRUMAR VENDER PARA OUTRO PAIS
            //Emit.enderEmit.xPais   := 'BRASIL';

            if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '' then
            begin
               MensagemAtencao('TABELA A - CÛdigo de Regime Tribut·rio - CRT N„o pode estar vazio!' + SKIP + 'Escolha um codigo Na ConfiguraÁ„o da NF-e, Parte Contabel.');
               Abort;
            end;

            if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '1' then
               Emit.CRT := crtSimplesNacional;

            if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString = '2' then
               Emit.CRT := crtSimplesExcessoReceita;

            if CdsNotas.FieldByName('NFE_OPTANTESIMPLESNASCIONAL').AsString= '3' then
               Emit.CRT := crtRegimeNormal;
               
            // Preenche Cliente;
            ValidaCliente;

            NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

            // Cadastrais do Cliente
            Dest.xNome             := CdsNotas.FieldByName('RAZAO_SOCIAL').AsString;
            Dest.CNPJCPF           := RemoveChar(CdsNotas.FieldByName('CNPJCPF').AsString);

            // endereÁo do Cliente
            Dest.enderDest.CEP     := StrToInt(RemoveChar(CdsNotas.FieldByName('CLI_END_CEP').AsString));
            Dest.enderDest.xLgr    := CdsNotas.FieldByName('CLI_END_ENDERECO').AsString;
            Dest.enderDest.nro     := CdsNotas.FieldByName('CLI_END_NUMERO').AsString;
            Dest.enderDest.xCpl    := CdsNotas.FieldByName('CLI_END_COMPLEMENTO').AsString;
            Dest.enderDest.xBairro := CdsNotas.FieldByName('CLI_END_BAIRRO').AsString;

            if CdsNotas.FieldByName('CLI_END_COD_IBGEMUNIC').AsString = '' then
            begin
               MensagemAtencao('Cliente N„o Possui CÛdigo IBGE.');
               btnConsultar.SetFocus;
               Abort;
            end;

            Dest.enderDest.cMun    := StrToInt(Trim(CdsNotas.FieldByName('CLI_END_COD_IBGEMUNIC').AsString));
            Dest.enderDest.xMun    := CdsNotas.FieldByName('CLI_END_CID_NOME').AsString;
            Dest.enderDest.UF      := CdsNotas.FieldByName('CLI_END_CID_UF').AsString;
            Dest.enderDest.Fone    := CdsNotas.FieldByName('CLI_FONE').AsString;

            if Copy(CdsNotas.FieldByName('CLI_TIPO').AsString, 1, 1) = 'F' then
            begin
               if CdsNotas.FieldByName('CLI_RGINSC').AsString = '' then
                  Dest.IE := 'ISENTO'
               else
                  Dest.IE := CdsNotas.FieldByName('CLI_RGINSC').AsString;
            end
            else
            begin
               if Copy(CdsNotas.FieldByName('CLI_TIPO').AsString, 1, 1) = 'J' then
                  Dest.IE := CdsNotas.FieldByName('CLI_RGINSC').AsString
               else
               begin
                  MensagemAtencao('Cliente n„o Possui InscriÁ„o Estadual.');
                  btnConsultar.SetFocus;
                  Abort;
               end;
            end;

            if(CdsNotas.FieldByName('CLI_PAIS').Text <> '') then
            begin
               Dest.enderDest.xPais := splitstr(CdsNotas.FieldByName('CLI_PAIS').Text,'-',0); //MUDAR PARA ACEITAR EXPORTA«√O
               Dest.enderDest.cPais := StrToInt(Trim(splitstr(CdsNotas.FieldByName('CLI_PAIS').Text,'-',1)));
            end; 

            // Preenche Itens
            NotaFiscalSaida(CdsNotasNOTA_FISCAL.AsInteger, CdsNotasCOD_CLIENTE.AsInteger);

            NFeAdicionaItens(
               LNotaFiscal.NFe,
               QryCadNotaNOT_CODIGO.AsString,
               CdsLookFiliaisFIL_CODIGO.AsString,
               CdsLookFiliaisEMP_CODIGO.AsString
            );

            NFeAdicionaDadosTransportadora(LNotaFiscal.NFe);

            // Financeiro
            TRY
            if (QryCadNotaPED_CODIGO.AsString <> '') or  (QryCadNotaOS_CODIGO.AsString <> '') then BEGIN
            QryFinanceiro.Close ;
            QryFinanceiro.SQL.Clear   ;
            QryFinanceiro.SQL.Add('SELECT * FROM TITULOS ') ;
            QryFinanceiro.SQL.Add('WHERE FIL_CODIGO   = ' + CdsLookFiliaisFIL_CODIGO.AsString);
            QryFinanceiro.SQL.Add('AND TIT_NFNUMERO = ' + '''' + QryCadNotaNOT_NUMERONFE.AsString + '''') ;

            END ELSE  BEGIN
             QryFinanceiro.SQL.Add('SELECT * FROM TITULOS WHERE 0=1') ;
            END;
            //QryFinanceiro.SQL.Add('AND PED_CODIGO = ' + '''' + QryCadNotaPED_CODIGO.AsString + '''') ;
            //if QryCadNotaOS_CODIGO.AsString <> '' then
            //QryFinanceiro.SQL.Add('AND OS_CODIGO = ' + '''' + QryCadNotaOS_CODIGO.AsString + '''') ;

            CsdQryFinanceiro.Close;
            CsdQryFinanceiro.Open;
            EXCEPT
            END;

            {if CsdQryFinanceiro.RecordCount > 0    then
            begin
            CsdQryFinanceiro.First;
            if not (CsdQryFinanceiro.RecordCount > 4) then
            begin
              While CsdQryFinanceiro.Eof = False Do begin

                Application.ProcessMessages;

               With Cobr.Dup.Add Do begin
               nDup      := CsdQryFinanceiroTIT_NFNUMERO.AsString + '-' + CsdQryFinanceiroTIT_ORDEM.AsString;
               dVenc     := CsdQryFinanceiroTIT_VENCIMENTO.AsDateTime ;
               vDup      := CsdQryFinanceiroTIT_VALOR.AsFloat         ;
               end;

              CsdQryFinanceiro.Next;
              end;
            end;
            end; }

            NFeAdicionaTotais(
               LNotaFiscal.NFe,
               QryCadNotaNOT_CODIGO.AsString,
               CdsLookFiliaisFIL_CODIGO.AsString
            );
         end;
      end;

      CdsNotas.Next;
   end;
end;

procedure TFNFSEletronica.QryConsultaNotaCalcFields(DataSet: TDataSet);
Var
  Status, Chave : String;
begin
  Chave  := '';
  Status := '';


      if GerarChave_(Chave,
                StrToInt(CodEstado),
                StrToInt(QryConsultaNotaNOT_NUMERONFE.AsString),
                55,
                StrToInt(QryConsultaNotaNOT_SERIE.AsString),
                StrToInt(QryConsultaNotaNOT_NUMERONFE.AsString),
                (FormaContigencia),
                (QryConsultaNotaNOT_DATAEMISSAO.AsDateTime),
                RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) then
                begin
                end;





  QryConsultaNotaCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
  QryConsultaNotaCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';

end;

procedure TFNFSEletronica.QryParametrosNFEBeforeOpen(DataSet: TDataSet);
begin
 // with TSQLQuery(Dataset) do
 // begin
 // Params.ParamByName('EMP_GRUPO').Value   := 1;
 // Params.ParamByName('EMP_CODIGO').Value  := 1;
 // Params.ParamByName('FIL_CODIGO').Value  := 1;
 // end;
end;

procedure TFNFSEletronica.btnReemitirDanfeClick(Sender: TObject);
var
   Ok: Boolean;
begin
   (*
      3. ValidaÁ„o ContingÍncia Sem Retorno;
      5. NF-e Validada;
   *)
   if (CdsNotas.FieldByName('STATUS_NFE').AsInteger in [3, 5]) then
   begin
      AcbrNFe.NotasFiscais.Clear;
      AcbrNFe.NotasFiscais.LoadFromFile(CamimhoNFe);

      if AcbrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
      begin
         AcbrNFe.WebServices.ConsultaDPEC.NFeChave := AcbrNFe.NotasFiscais.Items[0].NFe.infNFe.ID;
         AcbrNFe.WebServices.ConsultaDPEC.Executar;
         AcbrNFe.DANFE.ProtocoloNFe := AcbrNFe.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(AcbrNFe.WebServices.ConsultaDPEC.dhRegDPEC);
      end;

      AcbrNFe.DANFE.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
      AcbrNFe.DANFE.TipoDANFE := StrToTpImp(OK, Copy(QryParametrosNFE.FieldByName('NFE_GERALDANFERETRATO').AsString, 1, 1));
      AcbrNFe.DANFE.NumCopias := 1;
      AcbrNFe.NotasFiscais.Imprimir;
      AcbrNFe.NotasFiscais.ImprimirPDF;
   end;

   btnConsultar.Click;
end;

procedure TFNFSEletronica.btnCancelamentoClick(Sender: TObject);
begin
   Cancelamentodiretodenfe1.Click;

 { FNFSCancelamento := TFNFSCancelamento.Create(Self);

  Try
    Modulo.codigofilial :='0';
    Modulo.codigofilial := CdsLookFiliaisFIL_CODIGO.AsString;
    FNFSCancelamento.ShowModal;
  Finally
    FreeAndNil(FNFSCancelamento);
  end; }
end;

procedure TFNFSEletronica.btnImprimirClick(Sender: TObject);
var
   qtd,
   TOTAL: string;
begin
  qtd := IntToStr( CdsNotas.RecordCount );
  TOTAL:= lbValorTotal.Caption;

  begin
    RVPRJ_NFE.SelectReport( 'relatorionfe', False );
    RVPRJ_NFE.SetParam( 'qtd', qtd );
    RVPRJ_NFE.SetParam( 'TOTAL', TOTAL );
    RVPRJ_NFE.Execute;
    RVPRJ_NFE.Close;
  end;
end;

procedure TFNFSEletronica.btnInutilizaClick(Sender: TObject);
begin
  FormInutilizaNew := TFormInutilizaNew.Create(Application);

  Try
   // Modulo.codigofilial :='0';
  //  Modulo.codigofilial := CdsLookFiliaisFIL_CODIGO.AsString;
   // Modulo.serie  :=  CdsLookFiliais

    FormInutilizaNew.ShowModal
  Finally
     FormInutilizaNew.Release;
     FormInutilizaNew := Nil;
  end;
end;

procedure TFNFSEletronica.ConsultaStatusNFe1Click(Sender: TObject);
Var
  Status, Chave, _NotaFiscal, _Serie : String;
  _Data : TDateTime;
  _CodCliente, _Sequencia : Integer;
begin

  Try

    Chave      := '';
    Status     := '';
    CamimhoNFe := '';
    _NotaFiscal := CdsNotasNOTA_FISCAL.AsString;
    _Serie      := CdsNotasSERIE.AsString;
    _Data       := CdsNotasDATA_EMISSAO.AsDateTime;
    _CodCliente := CdsNotasCOD_CLIENTE.AsInteger;
    CamimhoNFe  := CdsNotasCAMINHO_XML.AsString;

    if GerarChave_(Chave,
                  StrToInt(CodEstado),
                  StrToInt(CdsNotasNOTA_FISCAL.AsString),
                  55,
                  StrToInt(CdsNotasSERIE.AsString),
                  StrToInt(CdsNotasNOTA_FISCAL.AsString),
                  (FormaContigencia),
                  (CdsNotasDATA_EMISSAO.AsDateTime),
                  RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) then begin
    end;
    PreencheInterfaces;
    AcbrNFe.NotasFiscais.GerarNFe;
    AcbrNFe.NotasFiscais.Assinar;

    AcbrNFe.NotasFiscais.Clear;
    AcbrNFe.NotasFiscais.LoadFromFile(QryParametrosNFENFE_CAMINHOXML.AsString + '\' + Chave + '-nfe.xml');
    AcbrNFe.Consultar;

    Status := IntToStr(AcbrNFe.WebServices.Consulta.cStat);
    if (AcbrNFe.WebServices.Consulta.cStat = 100) Or (AcbrNFe.WebServices.Consulta.cStat = 101) then
    begin
      if AcbrNFe.WebServices.Consulta.cStat = 101 then begin
         AtualizaStatusNotaFiscal(StrToInt(_NotaFiscal), '6');
      end else begin
         AtualizaStatusNotaFiscal(StrToInt(_NotaFiscal), '5');
      end;
    end;

  HistoricoNFe.Close;
  HistoricoNFe.SQL.Clear;
  HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
  HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
  HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + _NotaFiscal);
  HistoricoNFe.SQL.Add('AND   STATUS       = ' + IntToStr(AcbrNFe.WebServices.Consulta.cStat));
  CdsHistoricoNFe.close;
  CdsHistoricoNFe.Open;

  if CdsHistoricoNFe.RecordCount > 0 then begin

      HistoricoNFe.Close;
      HistoricoNFe.SQL.Clear;
      HistoricoNFe.SQL.Add('UPDATE HISTORICO_NFE                     ');
      HistoricoNFe.SQL.Add('SET    STATUS         = :STATUS,         ');
      HistoricoNFe.SQL.Add('       COD_EMPRESA    = :COD_EMPRESA,    ');
      HistoricoNFe.SQL.Add('       NOTA_FISCAL    = :NOTA_FISCAL,    ');
      HistoricoNFe.SQL.Add('       SERIE          = :SERIE,          ');
      HistoricoNFe.SQL.Add('       DATA_EMISSAO   = :DATA_EMISSAO,   ');
      HistoricoNFe.SQL.Add('       CHAVE          = :CHAVE,          ');
      HistoricoNFe.SQL.Add('       AMBIENTE       = :AMBIENTE,       ');
      HistoricoNFe.SQL.Add('       MODELO         = :MODELO,         ');
      HistoricoNFe.SQL.Add('       PROTOCOLO      = :PROTOCOLO,      ');
      HistoricoNFe.SQL.Add('       COD_CLIENTE    = :COD_CLIENTE,    ');
      HistoricoNFe.SQL.Add('       CAMINHO        = :CAMINHO,        ');
      HistoricoNFe.SQL.Add('       FIL_CODIGO     = :FIL_CODIGO,     ');
      HistoricoNFe.SQL.Add('       FIL_CNPJ       = :FIL_CNPJ        ');



      HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
      HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + _NotaFiscal);

      if AcbrNFe.WebServices.Consulta.cStat = 101 then begin
         HistoricoNFe.SQL.Add('AND   STATUS       = ' + '6');
      end else begin
         HistoricoNFe.SQL.Add('AND   STATUS       = ' + '5');
      end;

      HistoricoNFe.ParamByName('STATUS').Value          := IntToStr(AcbrNFe.WebServices.Consulta.cStat);
      HistoricoNFe.ParamByName('FIL_CODIGO').Value      := CdsLookFiliaisFIL_CODIGO.AsInteger ;
      HistoricoNFe.ParamByName('COD_EMPRESA').AsInteger := CdsLookFiliaisEMP_CODIGO.AsInteger ;
      HistoricoNFe.ParamByName('NOTA_FISCAL').AsInteger := StrToInt(_NotaFiscal);
      HistoricoNFe.ParamByName('SERIE').AsString        := _Serie;
      HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate   := _Data;
      HistoricoNFe.ParamByName('CHAVE').AsString        := AcbrNFe.WebServices.Consulta.NFeChave;
      HistoricoNFe.ParamByName('AMBIENTE').Value        := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);
      HistoricoNFe.ParamByName('MODELO').Value          := '55';
      HistoricoNFe.ParamByName('PROTOCOLO').Value       := AcbrNFe.WebServices.Consulta.Protocolo;
      HistoricoNFe.ParamByName('COD_CLIENTE').Value     := _CodCliente;
      HistoricoNFe.ParamByName('CAMINHO').Value         := QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
      HistoricoNFe.ParamByName('FIL_CNPJ').AsString     := CdsLookFiliaisFIL_CNPJ.AsString ;

      HistoricoNFe.ExecSQL;

  end else begin
      HistoricoNFe.Close;
      HistoricoNFe.SQL.Clear;
      HistoricoNFe.SQL.Add('INSERT INTO HISTORICO_NFE ');
      HistoricoNFe.SQL.Add('      (STATUS,            ');
      HistoricoNFe.SQL.Add('       SEQUENCIA,         ');
      HistoricoNFe.SQL.Add('       COD_EMPRESA,       ');
      HistoricoNFe.SQL.Add('       NOTA_FISCAL,       ');
      HistoricoNFe.SQL.Add('       SERIE,             ');
      HistoricoNFe.SQL.Add('       DATA_EMISSAO,      ');
      HistoricoNFe.SQL.Add('       CHAVE,             ');
      HistoricoNFe.SQL.Add('       AMBIENTE,          ');
      HistoricoNFe.SQL.Add('       MODELO,            ');
      HistoricoNFe.SQL.Add('       PROTOCOLO,         ');
      HistoricoNFe.SQL.Add('       COD_CLIENTE,       ');
      HistoricoNFe.SQL.Add('       CAMINHO,           ');
      HistoricoNFe.SQL.Add('       FIL_CODIGO)        ');

      HistoricoNFe.SQL.Add('VALUES (:STATUS,          ');
      HistoricoNFe.SQL.Add('        :SEQUENCIA,       ');
      HistoricoNFe.SQL.Add('        :COD_EMPRESA,     ');
      HistoricoNFe.SQL.Add('        :NOTA_FISCAL,     ');
      HistoricoNFe.SQL.Add('        :SERIE,           ');
      HistoricoNFe.SQL.Add('        :DATA_EMISSAO,    ');
      HistoricoNFe.SQL.Add('        :CHAVE,           ');
      HistoricoNFe.SQL.Add('        :AMBIENTE,        ');
      HistoricoNFe.SQL.Add('        :MODELO,          ');
      HistoricoNFe.SQL.Add('        :PROTOCOLO,       ');
      HistoricoNFe.SQL.Add('        :COD_CLIENTE,     ');
      HistoricoNFe.SQL.Add('        :CAMINHO,         ');
      HistoricoNFe.SQL.Add('        :FIL_CODIGO)      ');

      HistoricoNFe.ParamByName('STATUS').Value          := IntToStr(AcbrNFe.WebServices.Consulta.cStat);
      HistoricoNFe.ParamByName('FIL_CODIGO').Value      := CdsLookFiliaisFIL_CODIGO.AsInteger;
      HistoricoNFe.ParamByName('COD_EMPRESA').AsInteger := CdsLookFiliaisEMP_CODIGO.AsInteger;

      QryMaximo.Close;
      QryMaximo.SQL.Clear;
      QryMaximo.SQL.Add('SELECT MAX(SEQUENCIA) + 1 AS TOTAL ');
      QryMaximo.SQL.Add('FROM HISTORICO_NFE                 ');

      CdsQryMaximo.close;
      CdsQryMaximo.Open;

      if CdsQryMaximo.RecordCount > 0 then begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
      end else begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger;
      end;

      HistoricoNFe.ParamByName('SEQUENCIA').AsInteger   :=_Sequencia;
      HistoricoNFe.ParamByName('NOTA_FISCAL').AsInteger := StrToInt(_NotaFiscal);
      HistoricoNFe.ParamByName('SERIE').AsString        := _Serie;
      HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate   := _Data;
      HistoricoNFe.ParamByName('CHAVE').AsString        := AcbrNFe.WebServices.Consulta.NFeChave;
      HistoricoNFe.ParamByName('AMBIENTE').Value        := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);
      HistoricoNFe.ParamByName('MODELO').Value          := '55';
      HistoricoNFe.ParamByName('PROTOCOLO').Value       := AcbrNFe.WebServices.Consulta.Protocolo;
      HistoricoNFe.ParamByName('COD_CLIENTE').Value     := _CodCliente;
      HistoricoNFe.ParamByName('CAMINHO').Value         := QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
      HistoricoNFe.ExecSQL;
  end;

  if AcbrNFe.WebServices.Consulta.cStat = 100 then begin
    btnReemitirDanfe.Enabled := True;
    btnReemitirDanfe.Click;
  end else begin
    btnReemitirDanfe.Enabled := False;
  end;

  Finally

  end;

  if Status <> '' then begin
     Mensagens(StrToInt(Status));
  end;

  btnConsultar.Click;
end;

procedure TFNFSEletronica.FazerbackupXMLdalista1Click(Sender: TObject);
begin
BackupXML();
end;

procedure TFNFSEletronica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
  
end;

procedure TFNFSEletronica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if Application.MessageBox( 'Tem certeza que deseja sair do sistema ?', 'Sair...', MB_ICONQUESTION + MB_YESNO ) = ID_YES then
    begin
    try
    WinExec('TaskKill -f -im Sistemas.exe', SW_HIDE);
    Application.Terminate;
    FINALLY
    WinExec('TaskKill -f -im Sistemas.exe', SW_HIDE);
    Application.Terminate;
    END;

  end;
  Abort;
  end;

procedure TFNFSEletronica.ConfiguraImagensBotoes;
var
  RValue,            // Ir· receber o valor R da cor
  GValue,            // Ir· receber o valor G da cor
  BValue,            // Ir· receber o valor B da cor
  NValue  : Byte;    // Ir· receber a composiÁ„o da imagem sem cor
  cColor  : TColor;  // Ir· receber a cor original da imagem
  nCount,            // Contador loop
  nIndex,            // Index loop
  nObject : Integer; // Indice do Objeto em uso
  imgOrig : TBitmap; // Imagem de origem
  imgDest : TBitmap; // Imagem de destino com a segunda imagem
begin
   for nObject := 0 to ComponentCount - 1 do
   begin
      if (Components[nObject] is TBitBtn) and (TBitBtn(Components[nObject]).NumGlyphs = 1) then
      begin
         imgOrig := TBitmap.Create;
         imgDest := TBitmap.Create;

         imgOrig.Assign(TBitBtn(Components[nObject]).Glyph);

         imgDest.Height := imgOrig.Height;
         imgDest.Width  := imgOrig.Width * 2;

         for nCount := 0 to Pred(imgOrig.Width) do
         begin
            for nIndex := 0 to Pred(imgOrig.Height) do
            Begin
               cColor := ColorToRGB(imgOrig.Canvas.Pixels[nCount, nIndex]);

               RValue := GetRValue(cColor);
               GValue := GetGValue(cColor);
               BValue := GetBValue(cColor);

               NValue := ((RValue + GValue + BValue) div 3) - 50;

               imgDest.Canvas.Pixels[nCount, nIndex] := imgOrig.Canvas.Pixels[nCount, nIndex];
               imgDest.Canvas.Pixels[nCount+imgOrig.Width, nIndex] := RGB(NValue, NValue, NValue);
            End;
         end;

         TBitBtn(Components[nObject]).Glyph.Assign(imgDest);
         TBitBtn(Components[nObject]).NumGlyphs := 2;

         FreeAndNil(imgOrig);
         FreeAndNil(imgDest);
      end;
   end;
end;

procedure TFNFSEletronica.FormCreate(Sender: TObject);
Var
  Ok : Boolean;

begin
ConfiguraImagensBotoes;


 // NFeDanfe := TACBrNFeDANFERave.Create(NFeDanfe);
  CdsLookFiliais.Close;
  CdsLookFiliais.Open;
  if cdsLookFiliais.RecordCount > 1 then
  begin
  cdsLookFiliais.First;
  Label4.Visible := True;
  DBLookupComboBox1.Visible := True;
  end else begin
  Label4.Visible := false;
  DBLookupComboBox1.Visible := false;
  end ;

  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF          ');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
  QryParametrosNFE.Open;

//  NFeW := TNFeW.Create(NFe);

  Try                                                                                   
    {$IFDEF ACBrNFeOpenSSL}
    {$ELSE}
    {$ENDIF}

    if IMPRIMENFERAVE1 <> Nil then begin
      IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, Copy(QryParametrosNFE.FieldByName('NFE_GERALDANFERETRATO').AsString, 1, 1));
      IMPRIMENFERAVE1.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
      IMPRIMENFERAVE1.NumCopias := 1;
    end;
  Finally
  end;

  AjustaCamposData(False);
end;

procedure TFNFSEletronica.AbreDados;
var
   Ok:Boolean;
begin
//   NFeW.Free;

   QryParametrosNFE.Close;
   QryParametrosNFE.SQL.Clear;
   QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF');
   QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
   QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
   QryParametrosNFE.Open;

//   NFeW := TNFeW.Create(NFe);

  Try
    {$IFDEF ACBrNFeOpenSSL}
    {$ELSE}
    {$ENDIF}

    if IMPRIMENFERAVE1 <> Nil then begin
      IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, Copy(QryParametrosNFE.FieldByName('NFE_GERALDANFERETRATO').AsString, 1, 1));
      IMPRIMENFERAVE1.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
      IMPRIMENFERAVE1.NumCopias := 1;
    end;

  Finally
  end;


 // CdsLookFiliais.Close;
 // CdsLookFiliais.SQL.Clear;
 // CdsLookFiliais.SQL.Add('SELECT * FROM FILIAIS');
 // CdsLookFiliais.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
 // CdsLookFiliais.ParamByName('FIL_CODIGO').AsInteger :=cdslookfiliaisfil_codigo.AsInteger ;//StrToInt(FPrincipal.Edit1.Text);
 // CdsLookFiliais.Open;

  CbTipoOperacao.ItemIndex := 7;

  fContingencia                                  := Copy(QryParametrosNFENFE_GERALFORMADEEMISSAO.AsString, 1, 1);

  AcbrNFe.Configuracoes.Certificados.NumeroSerie := QryParametrosNFENFE_CERTIFICADONUMEROSERIE.AsString;

  FormaContigencia := StrToInt(Copy(QryParametrosNFENFE_GERALFORMADEEMISSAO.AsString, 1, 1));

  AcbrNFe.Configuracoes.Geral.Salvar             := True;
  AcbrNFe.Configuracoes.Geral.PathSalvar         := QryParametrosNFENFE_CAMINHOXML.AsString;
  AcbrNFe.Configuracoes.Geral.FormaEmissao       := StrToTpEmis(OK, IntToStr(FormaContigencia));

//  Case FormaContigencia Of
//  1 : rgFormaEmissao.ItemIndex := 0;
//  2 : rgFormaEmissao.ItemIndex := 1;
//  3 : rgFormaEmissao.ItemIndex := 2;
//  4 : rgFormaEmissao.ItemIndex := 3;
//  5 : rgFormaEmissao.ItemIndex := 4;
//  end;

//  if Copy(QryParametrosNFENFE_GERALDANFERETRATO.AsString, 1, 1) = '1' then begin
//     rgImpressao.ItemIndex := 0;
//  end else begin
//     rgImpressao.ItemIndex := 1;
//  end;

  AcbrNFe.Configuracoes.Arquivos.PathNFe         := QryParametrosNFENFE_CAMINHOXML.AsString;
  AcbrNFe.Configuracoes.Arquivos.PathCan         := QryParametrosNFENFE_CAMINHOCANCELADO.AsString;
  AcbrNFe.Configuracoes.Arquivos.PathInu         := QryParametrosNFENFE_CAMINHOXML.AsString;
  AcbrNFe.Configuracoes.Arquivos.PathDPEC        := QryParametrosNFENFE_CAMINHOXML.AsString;
  AcbrNFe.Configuracoes.Arquivos.PastaMensal     := False;
  AcbrNFe.Configuracoes.Arquivos.Salvar          := True;

  CodEstado := Trim(CdsLookFiliaisFIL_END_COD_IBGEUF.AsString);

  Ambiente  := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);

  AcbrNFe.Configuracoes.WebServices.UF           := CdsLookFiliaisFIL_END_CID_UF.AsString;
  AcbrNFe.Configuracoes.WebServices.Ambiente     := StrToTpAmb(Ok, Ambiente);
  AcbrNFe.Configuracoes.WebServices.Visualizar   := False;//ckVisualizar.Checked;

  IMPRIMENFERAVE1.Site      := CdsLookFiliaisFIL_HOMEPAGE.AsString;

  IMPRIMENFERAVE1.Email     := CdsLookFiliais.FieldByName('FIL_EMAIL').AsString;
  IMPRIMENFERAVE1.Fax       := CdsLookFiliais.FieldByName('FIL_FAX').AsString;
  IMPRIMENFERAVE1.PathPDF   := QryParametrosNFE.FieldByName('NEF_CAMINHOPDF').AsString;
  IMPRIMENFERAVE1.Logo      := QryParametrosNFE.FieldByName('NFE_GERALCAMINHOLOGOMARCA').AsString;
  IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, Copy(QryParametrosNFE.FieldByName('NFE_GERALDANFERETRATO').AsString, 1, 1));
  IMPRIMENFERAVE1.NumCopias := 1;
  IMPRIMENFERAVE1.Usuario   := '';

  IMPRIMENFERAVE1.RavFile := QryParametrosNFENFE_CAMINHORAVE.AsString;

  if Ambiente = '1' then begin
     StBar.Panels[1].Text := 'Ambiente: ProduÁ„o';
  end else if Ambiente = '2' then begin
     StBar.Panels[1].Text := 'Ambiente: HomologaÁ„o';
  end ELse begin
    Application.MessageBox('Tipo de Ambiente Inv·lido.', 'A T E N « √ O', MB_OK + MB_ICONERROR);
  end;

//  StBar.Panels[2].Text    := 'Validade Certificado CNPJ-e: ' + QryParametrosNFENFE_WEBSERVICEAMBIENTEDATA_VALIDADE.AsString;

  CNPJ_EMPRESA :=  CdsLookFiliaisFIL_CNPJ.AsString;

  //CbTipoConsultaChange(Sender);

  EDataInicial.Date := Date;// - 30;
  cbStatusNota.ItemIndex := 7;
  btnConsultar.Click;
end;

procedure TFNFSEletronica.AcbrNFeStatusChange(Sender: TObject);
begin
  Case AcbrNFe.Status Of
    stIdle :

    begin
      if ( FStatus <> nil ) then
        FStatus.Hide;
    end;

    stNFeStatusServico :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Verificando Status do ServiÁo...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNFeRecepcao :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Dados da NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNfeRetRecepcao :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Recebendo Dados da NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNfeConsulta :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNfeCancelamento :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Cancelamento de NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNfeInutilizacao :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Pedido de InutilizaÁ„o...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNFeRecibo :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNFeCadastro :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando Cadastro...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNFeEnvDPEC :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando DPEC...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNFeConsultaDPEC :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando DPEC...';
      FStatus.Show;
      FStatus.BringToFront;
    end;

    stNFeEmail :
    begin
      if ( FStatus = nil ) then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Email...';
      FStatus.Show;
      FStatus.BringToFront;
    end;
  end;

  Application.ProcessMessages;
end;

procedure TFNFSEletronica.Cancelamentodiretodenfe1Click(Sender: TObject);
var
 Chave, Protocolo, Justificativa,Status1 : string;
 Status,_Sequencia,Z:Integer;
  Ok : Boolean;
   I, sNotaFiscal, x,y,NumeroLote, CodigoStatus : Integer;
  NumeroRecibo, sDataHora, sSerie,DataHoraEvento,NumeroProtocolo ,XMLCancelamento,MotivoStatus : String;
  arquivos_backup:array[0..1] of string;
  
  cnpj:string;
  stats,Modo:string;
begin
    y:=0;
    if CdsNotas.IsEmpty then begin
    Application.MessageBox('N„o existe NF-e No Grid!' + #13#10 +
      'Realize primeiramente uma pesquisa!', 'ATEN«√O!', MB_OK + MB_ICONSTOP);
    Abort;
    end;
   { CdsNotas.First;
    for x := 0 to Pred( CdsNotas.RecordCount ) do
    begin
    if CdsNotasMARCADO.AsBoolean = True then
    y  :=  y+1;
    CdsNotas.Next;
    end;
    if y < 1 then
    begin
    Application.MessageBox('N„o existe NF-e Selecionada No Grid!' + #13#10 +
      'Clique com o mouse sobre a NF-e, e tente novamente!', 'ATEN«√O!', MB_OK
      + MB_ICONSTOP);
    DBGridConsulta.SetFocus;
    Abort;
    end;  }

    if CdsNotasSTATUS_NFE.AsString = '6' then
    BEGIN
    MessageBoxW(Handle, 'Essa NF-e j· foi cancelada!' + #13#10 +
      'Vamos consulta-la novamente!', 'NOTAS EXPLICATIVAS:', MB_OK +
      MB_ICONINFORMATION);
    //ConsultaStatusNFe1.Click;
    Abort;
    END;

    if CdsNotasMARCADO.AsBoolean = False then begin
    MessageBoxW(Handle, 'Escolha uma NF-e' + #13#10 +
    '', 'NOTAS EXPLICATIVAS:', MB_OK +
    MB_ICONINFORMATION);
    Abort;

    end;


    HistoricoNFe.Close;
    HistoricoNFe.SQL.Clear;
    HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE');
    HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
    HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + IntToStr(CdsNotasNOTA_FISCAL.AsInteger));
    HistoricoNFe.SQL.Add('AND   STATUS       = ' + '100' );
    CdsHistoricoNFe.close;
    CdsHistoricoNFe.Open;
    if not CdsHistoricoNFe.IsEmpty then
    begin

      {$WARNINGS OFF}
      Z := Application.MessageBox(PChar('Deseja realmente cancelar a NF-e?       '                    + #13#10 +
                                    '                                        '                        + #13#10 +
                                    'Chave.........: ' + (Trim((CdsHistoricoNFeCHAVE.AsString)))        + #13#10 +
                                    'N∫. Protocolo.: ' + (Trim(CdsHistoricoNFePROTOCOLO.AsString))    + #13#10 +
                                    'Nota Fiscal...: ' + (Trim(CdsNotasNOTA_FISCAL.AsString))  + #13#10 +
                                    'Data Emiss„o..: ' + (Trim(CdsHistoricoNFeDATA_EMISSAO.AsString)) + #13#10 +
                                    '....................................................................................' + #13#10 +
                                    'Raz„o Social..: ' + (Trim(CdsNotasRAZAO_SOCIAL.AsString))                                   + #13#10 +
                                    'C.N.P.J/C.P.F.: ' + (Trim(CdsNotasCNPJCPF.AsString))), 'A T E N « √ O', MB_YESNO + MB_ICONQUESTION);

  if not (Z = MrYes) then begin
  Abort;
  end;
    if not(InputQuery('WebServices Cancelamento', 'Justificativa', Justificativa)) then
    exit;
    {
      ACBrNFe.WebServices.Cancelamento.NFeChave      := Trim(CdsHistoricoNFeCHAVE.AsString);
      ACBrNFe.WebServices.Cancelamento.Protocolo     := CdsHistoricoNFePROTOCOLO.AsString;
      ACBrNFe.WebServices.Cancelamento.Protocolo     := CdsHistoricoNFePROTOCOLO.AsString;
      ACBrNFe.WebServices.Cancelamento.Justificativa := Justificativa;
      ACBrNFe.WebServices.Cancelamento.Executar;
      Status := AcbrNFe.WebServices.Cancelamento.cStat;
      //Status1 := ACBrNFe.WebServices.RetornoWS;
      }

       // numero do lote de envio (somente um exemplo, pode-se utilizar seu proprio controle)
  //NumeroLote := CdsHistoricoNFePROTOCOLO.AsString ;//  StrToInt(FormatDateTime('yymmddhhmm', NOW));
 
  // carregar o xml da nota fiscal eletronica, pode ser omitido
  ACBrNFe.NotasFiscais.Clear;
 // if not ACBrNFe.NotasFiscais.LoadFromString(XML) then
  //  raise Exception.Create('N„o foi possÌvel carregar o XML da Nota Fiscal EletrÙnica correspondente!');

  // Criar o cancelamento
  ACBrNFe.EventoNFe.Evento.Clear;
  ACBrNFe.EventoNFe.idLote := NumeroLote;

  with ACBrNFe.EventoNFe.Evento.Add do
  begin
    infEvento.chNFe      := Trim(CdsHistoricoNFeCHAVE.AsString);
    infEvento.CNPJ       := Trim(RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString));
    infEvento.dhEvento   := Now;
    infEvento.tpEvento   := teCancelamento;
    infEvento.detEvento.nProt := CdsHistoricoNFePROTOCOLO.AsString;
    infEvento.detEvento.xJust := Justificativa;
  end;
 
// Enviar o evento de cancelamento
  if ACBrNFe.EnviarEventoNFe(NumeroLote) then
  begin
    with ACBrNFe.WebServices.EnvEvento do
    begin
      if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
      begin
        raise Exception.CreateFmt(
          'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrÙnica:'  + sLineBreak +
          'CÛdigo:%d' + sLineBreak +
          'Motivo: %s', [
            EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
            EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
        ]);
      end;
 
  // retornos 
      DataHoraEvento  := DateToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento);
      NumeroProtocolo := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      XMLCancelamento := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
      CodigoStatus    := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
      MotivoStatus    := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
    end;
  end
  else
  begin
    with ACBrNFe.WebServices.EnvEvento do
    begin
      raise Exception.Create(
        'Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
        'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
        'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
        'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
        sLineBreak +
        'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
        'Motivo: '   + EventoRetorno.xMotivo
      );
    end;
  end;
  
      if CodigoStatus = 135  then
      begin

       //if CdsHistoricoNFe.RecordCount = 0 then begin
        HistoricoNFe.Close;
        HistoricoNFe.SQL.Clear;
        HistoricoNFe.SQL.Add('INSERT INTO HISTORICO_NFE ');
        HistoricoNFe.SQL.Add('      (STATUS,            ');
        HistoricoNFe.SQL.Add('       SEQUENCIA,         ');
        HistoricoNFe.SQL.Add('       COD_EMPRESA,       ');
        HistoricoNFe.SQL.Add('       NOTA_FISCAL,       ');
        HistoricoNFe.SQL.Add('       SERIE,             ');
        HistoricoNFe.SQL.Add('       DATA_EMISSAO,      ');
        HistoricoNFe.SQL.Add('       CHAVE,             ');
        HistoricoNFe.SQL.Add('       AMBIENTE,          ');
        HistoricoNFe.SQL.Add('       MODELO,            ');
        HistoricoNFe.SQL.Add('       PROTOCOLO,         ');
        HistoricoNFe.SQL.Add('       COD_CLIENTE,       ');
        HistoricoNFe.SQL.Add('       CAMINHO,           ');
        HistoricoNFe.SQL.Add('       RECIBO,            ');
        HistoricoNFe.SQL.Add('       FIL_CODIGO,        ');
        HistoricoNFe.SQL.Add('       FIL_CNPJ)          ');

        HistoricoNFe.SQL.Add('VALUES (:STATUS,          ');
        HistoricoNFe.SQL.Add('        :SEQUENCIA,       ');
        HistoricoNFe.SQL.Add('        :COD_EMPRESA,     ');
        HistoricoNFe.SQL.Add('        :NOTA_FISCAL,     ');
        HistoricoNFe.SQL.Add('        :SERIE,           ');
        HistoricoNFe.SQL.Add('        :DATA_EMISSAO,    ');
        HistoricoNFe.SQL.Add('        :CHAVE,           ');
        HistoricoNFe.SQL.Add('        :AMBIENTE,        ');
        HistoricoNFe.SQL.Add('        :MODELO,          ');
        HistoricoNFe.SQL.Add('        :PROTOCOLO,       ');
        HistoricoNFe.SQL.Add('        :COD_CLIENTE,     ');
        HistoricoNFe.SQL.Add('        :CAMINHO,         ');
        HistoricoNFe.SQL.Add('        :RECIBO,          ');
        HistoricoNFe.SQL.Add('        :FIL_CODIGO,     ');
        HistoricoNFe.SQL.Add('        :FIL_CNPJ)       ');

        QryMaximo.Close;
        QryMaximo.SQL.Clear;
        QryMaximo.SQL.Add('SELECT MAX(SEQUENCIA) + 1 AS TOTAL ');
        QryMaximo.SQL.Add('FROM HISTORICO_NFE                 ');

        CdsQryMaximo.close;
        CdsQryMaximo.Open;

        if CdsQryMaximo.RecordCount > 0 then begin
          _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
        end else begin
          _Sequencia := CdsQryMaximoTOTAL.AsInteger;
        end;

        HistoricoNFe.ParamByName('STATUS').Value         := Status;
        HistoricoNFe.ParamByName('SEQUENCIA').AsInteger  :=_Sequencia;
        HistoricoNFe.ParamByName('COD_EMPRESA').Value    := CdsLookFiliaisEMP_CODIGO.AsInteger;
        HistoricoNFe.ParamByName('NOTA_FISCAL').Value    := CdsNotasNOTA_FISCAL.AsInteger;
        HistoricoNFe.ParamByName('SERIE').Value          := CdsNotasSERIE.AsInteger;
        HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate  := Date;
        HistoricoNFe.ParamByName('CHAVE').Value          := AcbrNFe.WebServices.Retorno.ChaveNFe;
        HistoricoNFe.ParamByName('AMBIENTE').Value       := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);
        HistoricoNFe.ParamByName('MODELO').Value         := '55';
        HistoricoNFe.ParamByName('PROTOCOLO').Value      := NumeroProtocolo;
        HistoricoNFe.ParamByName('COD_CLIENTE').Value    := 0;
        HistoricoNFe.ParamByName('CAMINHO').Value        := CdsNotasCAMINHO_XML.AsString;//QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
        HistoricoNFe.ParamByName('FIL_CODIGO').Value     := CdsLookFiliaisFIL_CODIGO.AsInteger;
        HistoricoNFe.ParamByName('RECIBO').Value         := AcbrNFe.WebServices.Retorno.Recibo;
        HistoricoNFe.ParamByName('FIL_CNPJ').Value       := CdsLookFiliaisFIL_CNPJ.AsString;
        HistoricoNFe.ExecSQL;
        Application.MessageBox(PChar('Cancelamento homologado: ' + #13#10 +
                                           '                               ' + #13#10 +
                                           'Status.: ' + IntToStr(Status) + #13#10 +
                                           'Motivo.: ' + FNFSEletronica.AcbrNFe.WebServices.Cancelamento.xMotivo), 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        AtualizaStatusNotaFiscal(CdsNotasNOTA_FISCAL.AsInteger, '6');


          try
          arquivos_backup[0] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
          arquivos_backup[1] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
          stats :=  IntToStr(Status);
          cnpj := CdsLookFiliaisFIL_CNPJ.AsString;
          Modo := QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString;
          EnviaBackupFtp(cnpj,stats,arquivos_backup,Modo);
          except
          end;

       end else begin

        Application.MessageBox(PChar('N„o È Permitido Cancelar NF-e: ' + #13#10 +
                                           '                               ' + #13#10 +
                                           'Status.: ' + IntToStr(Status) + #13#10 +
                                           'Motivo.: ' + AcbrNFe.WebServices.Retorno.xMotivo), 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
       Mensagens(Status);
       end;
        Mensagens(Status);
end else begin



end;

end;

procedure TFNFSEletronica.CbTipoConsultaChange(Sender: TObject);
begin
   AjustaCamposData(True);
end;

procedure TFNFSEletronica.AjustaCamposData(AFocu: Boolean);
begin
   case CbTipoConsulta.ItemIndex Of
      0: begin
            lblTipo.Font.Color   := clBlack;
            lblTipo.Caption      := 'Data Emiss„o';

            lblDtFinal.Visible   := True;

            EDataInicial.Visible := True;
            EDataFinal.Visible   := True;
            EDataInicial.Date    := Date;
            EDataFinal.Date      := Date;
            
            if AFocu then
               EDataInicial.SetFocus;
         end;
   end;      
end;

procedure TFNFSEletronica.CdsLookFiliaisAfterScroll(DataSet: TDataSet);
begin
//ABREDADOS;
end;
                                                                                 
procedure TFNFSEletronica.CdsNotasAfterScroll(DataSet: TDataSet);
begin
   if DataSet.RecordCount > 0 then
   begin
      CamimhoNFe := CdsNotasCAMINHO_XML.AsString;
      
      (*
         2. Erro na ValidaÁ„o do Arquivo;
         9. N„o Validada;
         6. NF-e Cancelada;

         Deve ter o n˙mero da nota e o status deve ser diferente de 2, 9 e 6;
      *)
      btnReemitirDanfe.Enabled :=
         (DataSet.FieldByName('NOTA_FISCAL').AsInteger <> 0) and
         (not (DataSet.FieldByName('STATUS_NFE').AsInteger in [2, 9, 6]));
   end;

   lblStatusValidar.Caption := '';
end;

procedure TFNFSEletronica.CdsNotasCalcFields(DataSet: TDataSet);
Var
   Status,
   Chave : String;
begin
   Chave  := '';
   Status := '';

   GerarChave_(
      Chave,
      StrToInt(CodEstado),
      StrToInt(DataSet.FieldByName('NOTA_FISCAL').AsString),
      55,
      StrToInt(DataSet.FieldByName('SERIE').AsString),
      StrToInt(DataSet.FieldByName('NOTA_FISCAL').AsString),
      (FormaContigencia),
      (DataSet.FieldByName('DATA_EMISSAO').AsDateTime),
      RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)
   );

   DataSet.FieldByName('CAMINHO_XML').AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
   DataSet.FieldByName('CAMINHO_PDF').AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';
end;

procedure TFNFSEletronica.RxNotaFiscal1CalcFields(DataSet: TDataSet);
Var
Status, Chave : String;
begin
  Chave  := '';
  Status := '';

    if GerarChave_(Chave,
                  StrToInt(CodEstado),
                  StrToInt(CdsNotasNOTA_FISCAL.AsString),
                  55,
                  StrToInt(CdsNotasSERIE.AsString),
                  StrToInt(CdsNotasNOTA_FISCAL.AsString),
                  (FormaContigencia),
                  (CdsNotasDATA_EMISSAO.AsDateTime),
                  RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) then begin
    end;

   // CdsNotasCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
   // CdsNotasCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';

  QryConsultaNotaCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
  QryConsultaNotaCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';

end;

procedure TFNFSEletronica.DBGridConsultaDblClick(Sender: TObject);
begin
   SelecionaNotaFiscal;
end;

procedure TFNFSEletronica.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   R: TRect;
   Check: Integer;
begin
  (*DBGrid zebrado*)
  if not odd( CdsNotas.RecNo ) then // se for Ìmpar
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
        DBGridConsulta.Canvas.Brush.Color := $00FFEFDF; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o


      end;

       if CdsNotasSTATUS_NFE.AsString = '6' then
 begin
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
      DBGridConsulta.Font.Color := clWindow;
        DBGridConsulta.Canvas.Brush.Color := clRed; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
      end;
 end;

 if CdsNotasSTATUS_NFE.AsString = '5' then
 begin
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
      DBGridConsulta.Font.Color := clWindow;
        DBGridConsulta.Canvas.Brush.Color := clBlue; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
      end;
 end;

  if CdsNotasSTATUS_NFE.AsString = '9' then
 begin
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
      DBGridConsulta.Font.Color := clWindow;
        DBGridConsulta.Canvas.Brush.Color := clGreen; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
      end;
 end;



  (*destaca campo NOME*)
 { if Column.Field = CdsNotasCLI_RAZAO then
    begin
      DBGridConsulta.Canvas.Font.Style :=
        DBGridConsulta.Canvas.Font.Style + [ fsBold ];
      DBGridConsulta.Canvas.Font.Color := clRed;
      DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
    end;   }
  (*pinta checkbox*)

  if Column.Field.FieldName = 'MARCADO' then
    begin
      DBGridConsulta.Canvas.FillRect( Rect );
      ImageList2.Draw( DBGridConsulta.Canvas, Rect.Left + 10, Rect.Top + 1, 0 );

      if CdsNotasMARCADO.AsString = 'S' then
        ImageList2.Draw( DBGridConsulta.Canvas, Rect.Left + 10, Rect.Top + 1, 2 )
      else
        ImageList2.Draw( DBGridConsulta.Canvas, Rect.Left + 10, Rect.Top + 1, 1 );


    end;



   (*
      Valor do Combo de Status com o item index:
      1. ValidaÁ„o Normal Sem Retorno
      2. Erro na ValidaÁ„o do Arquivo
      3. ValidaÁ„o ContingÍncia Sem Retorno
      4. ValidaÁ„o SCAN Sem Retorno
      5 NF-e Validada
      6 NF-e Cancelada
      7 NF-e Inutilizada
      8 N„o Validada
      9 NF-e DevoluÁ„o
   *)
//   if not (gdSelected in State) then // se a cÈlula n„o est· selecionada
//   BEGIN
//      DBGridConsulta.Font.Color := clWindow;
//
//      case CdsNotas.FieldByName('STATUS_NFE').AsInteger of
//         5: DBGridConsulta.Canvas.Brush.Color := shpValidada.Brush.Color;
//         6: DBGridConsulta.Canvas.Brush.Color := shpCancelada.Brush.Color;
//         9: DBGridConsulta.Canvas.Brush.Color := shpDevolucao.Brush.Color;
//      end;
//
//      DBGridConsulta.Canvas.FillRect(Rect);
//      DBGridConsulta.DefaultDrawDataCell(Rect, Column.Field, State);
//   end;





end;

procedure TFNFSEletronica.DBLookupComboBox1Click(Sender: TObject);
begin
ABREDADOS;
end;

procedure TFNFSEletronica.EnviaEmailCliente;
var
   Host,
   Porta,
   para : String;
   CC: Tstrings;
   SLMensagem: TStringList;
begin
  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF          ');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
  QryParametrosNFE.Open;

  QryCliEmail.Close;
  QryCliEmail.SQL.Clear;
  QryCliEmail.SQL.Add('SELECT * FROM CLIENTES');
  QryCliEmail.SQL.Add('WHERE CLI_CODIGO =' + CdsNotasCOD_CLIENTE.AsString);
  //QryCliEmail.SQL.Add('AND FIL_CODIGO = :FIL_CODIGO ');
  //QryCliEmail.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
  QryCliEmail.Open;
  EEMail.Text := '';
  if QryCliEmailCLI_EMAIL.AsString <> '' then  begin
  EEMail.Text := LowerCase(QryCliEmailCLI_EMAIL.AsString);
  end else begin

    if not(InputQuery('Enviar Email', 'Digite o Email valido do cliente', para)) then
    exit;
    EEMail.Text := LowerCase(para);

    QryVazia.Close;
    QryVazia.SQL.Clear;
    QryVazia.SQL.Add('UPDATE CLIENTES SET CLIENTES.CLI_EMAIL = :STATUS       ');
    QryVazia.SQL.Add('WHERE CLI_CODIGO = '+ CdsNotasCOD_CLIENTE.AsString);
    QryVazia.ParamByName('STATUS').Value :=para;
    QryVazia.ExecSQL;

    EMailUSUARIO  := para;     

  end;


  EMailSMTP     := LowerCase(QryParametrosNFENFE_EMAILSMTP.AsString);
  EMailUSUARIO  := LowerCase(QryParametrosNFENFE_EMAILUSUARIO.AsString);
  EMailSENHA    := LowerCase(QryParametrosNFENFE_EMAILSENHA.AsString);
  EMailASSUNTO  := QryParametrosNFENFE_EMAILASSUNTO.AsString;
  EMailMENSAGEM := QryParametrosNFENFE_EMAILMENSAGEM.AsString;

  {if QryParametrosNFENFE_EMAILPORTA.AsString = '' then begin
     Application.MessageBox('Porta do EMail Invalida.', 'A T E N « √ O', MB_OK + MB_ICONERROR);
     btnConsultar.SetFocus;
     Abort;
  end else begin
     EMailPorta := StrToInt(QryParametrosNFENFE_EMAILPORTA.AsString);
  end;    }

    if QryParametrosNFENFE_EMAILUSUARIO.AsString = '' then
    begin
    if not(InputQuery('Email invalido', 'Digite o Email da Sua empresa que sera usado para NFe', para)) then
    exit;
    
    QryVazia.Close;
    QryVazia.SQL.Clear;
    QryVazia.SQL.Add('update NFECONF SET NFECONF.NFE_EMAILUSUARIO = :STATUS       ');
    QryVazia.SQL.Add('WHERE FIL_CODIGO = '+ cdslookfiliaisfil_codigo.AsString ) ;
    QryVazia.ParamByName('STATUS').Value :=para;

    QryVazia.ExecSQL;

    EMailUSUARIO  := para;  
    end;


  EMailSeguro   := StrToInt(QryParametrosNFENFE_EMAILSMTPSEGURO.AsString);

  if QryParametrosNFENFE_EMAILSMTPSEGURO.AsInteger = 0 then begin
    cbEmailSSL.Checked := False;
  end;
  IF QryParametrosNFENFE_EMAILSMTPSEGURO.AsInteger = 1 then begin
    cbEmailSSL.Checked := True; 
  end;

  if (CdsNotas.FieldByName('STATUS_NFE').AsInteger = 5) then
  begin

    if EEMail.Text <> '' then begin
      // ver essa quest„o porque n„o eta emitindo sem o caminho toda vez que imprime
      if Not FileExists(CamimhoNFe) then begin
        Application.MessageBox('Arquivo Inexistente.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        btnConsultar.SetFocus;
        Abort;
      end;

      SLMensagem := TStringList.Create;

      try
         if CamimhoNFe <> '' then
         begin
           SLMensagem.Add('');


           SLMensagem.Add(EMailMENSAGEM + 'NFe Emitida por: '+ CdsLookFiliaisFIL_NOME.AsString + '<br><br>'  ) ;

           SLMensagem.Add(EMailMENSAGEM + 'Segue anexo o Danfe referente a Nota Fiscal EletrÙnica N. '+ CdsNotasNOTA_FISCAL.AsString +' e o arquivo XML correspondente.' + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'DATA       : '+ DateToStr(Date) + ' Hora: ' + TimeToStr(Time) + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'CHAVE      : '+ CdsNotasCHAVE.AsString + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'NOME/RAZ√O : '+ CdsNotasRAZAO_SOCIAL.AsString + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'CNPJ/CPF   : '+  CdsNotasCNPJCPF.AsString + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'S…RIE      : '+ CdsNotasSERIE.AsString + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'VALOR TOTAL NFe : '+ CdsNotasVALOR_NOTA.AsString + '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'EMAIL      : '+ EEMail.Text + '<br><br><br><br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'SISTEMA EMISSOR DE NFe, DotCompany Ti, www.dotcompany.com.br (62)3588-6040'+ '<br>'  ) ;
           SLMensagem.Add(EMailMENSAGEM + 'DotCompany - Sua empresa em suas m„os!'+ '<br>'  ) ;

           AcbrNFe.NotasFiscais.Clear;
           AcbrNFe.NotasFiscais.LoadFromFile(CamimhoNFe);

           CC := TstringList.Create;
           CC.Add(EEMail.Text);
           CC.Add('nfe@dotcompany.com.br');


           Host  := 'dragaoserv.doterp.com.br';
           Porta := IntToStr(EMailPorta);

                                        { //sSmtpPort,
                                         //sSmtpUser,
                                         //sSmtpPasswd,
                                         //sFrom,
                                         //sTo,
                                         //sAssunto: String;
                                         //sMensagem : TStrings;
                                         //SSL : Boolean;
                                         //EnviaPDF: Boolean = true;  ok
                                         //sCC: TStrings=nil;
                                         //Anexos:TStrings=nil;
                                         //PedeConfirma: Boolean = False;
                                         //AguardarEnvio: Boolean = False;
                                         //NomeRemetente: String = '';
                                         //TLS : Boolean = True;
                                         //UsarThread: Boolean = True;
                                         //HTML:Boolean = False);  }


   AcbrNFe.NotasFiscais.Items[0].EnviarEmail(Host
                                                   , '465'
                                                   , 'nfe@dotcompanyti.com.br'
                                                   , 'reboot1980'
                                                   , EMailUSUARIO
                                                   , EEMail.Text
                                                   , '(Sistema emissor de NFe DotCompany) Segue anexo PDF/XML Ped. Numero: ' + CdsNotasNOTA_FISCAL.AsString
                                                   , SLMensagem
                                                   , True
                                                   , True
                                                   , CC
                                                   , nil
                                                   , False
                                                   , False
                                                   , 'DotCompany'
                                                   , True
                                                   , True
                                                   , True   
                                                   );
           CC.Free;

         end
         else begin
            Application.MessageBox('Arquivo n„o Localizado.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
            Abort;
         end;
      finally
         SLMensagem.Free;
      end;
    end
    else begin
      Application.MessageBox('Cliente n„o Possui E-Mail.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    end;
  end
  else
  begin
    Application.MessageBox('Para Enviar E-Mail do Arquivo a Nota Fiscal EletrÙnica Deve Ser Validada.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
    DBGridConsulta.SetFocus;
    Abort;
  end;

    Application.MessageBox('E-mail enviado!', 'A T E N « √ O !', MB_OK +
    MB_ICONINFORMATION);
end;

procedure TFNFSEletronica.DBGridConsultaCellClick(Column: TColumn);
begin
//   if Column.FieldName = 'MARCADO' then
//      SelecionaNotaFiscal;
end;

procedure TFNFSEletronica.SelecionaNotaFiscal;
begin
   if not CdsNotas.IsEmpty then
   begin
      CdsNotas.Edit;

      if CdsNotas.FieldByName('MARCADO').AsString = 'N' then
         CdsNotas.FieldByName('MARCADO').AsString := 'S'
      else
         CdsNotas.FieldByName('MARCADO').AsString := 'N';

      CdsNotas.Post;
   end;
end;

procedure TFNFSEletronica.FDSAFASFASDCalcFields(DataSet: TDataSet);
Var
  Status, Chave : String;
begin
  Chave  := '';
  Status := '';

    if GerarChave_(Chave,
                  StrToInt(CodEstado),
                  StrToInt(CdsNotasNOTA_FISCAL.AsString),
                  55,
                  StrToInt(CdsNotasSERIE.AsString),
                  StrToInt(CdsNotasNOTA_FISCAL.AsString),
                  (FormaContigencia),
                  (CdsNotasDATA_EMISSAO.AsDateTime),
                  RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) then begin
    end;


  //CdsNotasCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
  //CdsNotasCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';




      { if CdsNotasNOT_STATUS_NFE.AsInteger = 1 then begin
         CdsNotasSTATUS.AsString := 'ValidaÁ„o Normal Sem Retorno';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 2 then begin
         CdsNotasSTATUS.AsString := 'Erro na ValidaÁ„o do Arquivo';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 3 then begin
         CdsNotasSTATUS.AsString := 'ValidaÁ„o ContingÍncia Sem Retorno';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 4 then begin
         CdsNotasSTATUS.AsString := 'ValidaÁ„o SCAN Sem Retorno';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 5 then begin
         CdsNotasSTATUS.AsString := 'NF-e Validada';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 6 then begin
         CdsNotasSTATUS.AsString := 'NF-e Cancelada';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 7 then begin
         CdsNotasSTATUS.AsString := 'NF-e Inutilizada';
       end else if CdsNotasNOT_STATUS_NFE.AsInteger = 9 then begin
         CdsNotasSTATUS.AsString := 'N„o Validada';
       end;  }
end;

procedure TFNFSEletronica.btnUtilitariosClick(Sender: TObject);
var
   F,
   T: TPoint;
begin
   F.X := btnutilitarios.Left;
   F.Y := btnutilitarios.Top + btnutilitarios.Height + (Width - ClientWidth) + 0;
   T := ClientToScreen( F );
   PopupMenuUtilitarios.Popup( T.X, T.Y );
end;


end.
