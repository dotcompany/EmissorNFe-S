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
  RpConDS, JvBaseDlg, JvProgressDialog, JvExControls, JvSpecialProgress, OleCtrls, SHDocVw, ACBrUtil;
type
  TFNFSEletronica = class(TForm)
    CbTipoOperacao: TComboBox;
    StBar: TStatusBar;
    PopupMenu1: TPopupMenu;
    ConsultaStatusNFe1: TMenuItem;
    ESerie: TDBEdit;
    ENota: TDBEdit;
    ECodCliente: TDBEdit;
    EStatus: TDBEdit;
    EEMail: TDBEdit;
    EChave: TDBEdit;
    ckVisualizar: TCheckBox;
    rgFormaEmissao: TRadioGroup;
    rgImpressao: TRadioGroup;
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
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    lblTipo: TLabel;
    lblDtFinal: TLabel;
    lblStatusValidar: TLabel;
    btnConsultar: TBitBtn;
    CbTipoConsulta: TComboBox;
    ComboBox2: TComboBox;
    EDataFinal: TJvDatePickerEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    mmEmailMsg: TJvMemo;
    EValorICMS: TJvCalcEdit;
    EPis: TJvCalcEdit;
    ECofins: TJvCalcEdit;
    ETotalNota: TJvCalcEdit;
    EBaseICMS: TJvCalcEdit;
    EReceb: TJvCalcEdit;
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
    Panel2: TPanel;
    btnStatusServico: TSpeedButton;
    btnValidarNFe: TSpeedButton;
    btnCancelamento: TSpeedButton;
    btnInutiliza: TSpeedButton;
    btnReemitirDanfe: TSpeedButton;
    btnEnviarEMail: TSpeedButton;
    btnFechar: TSpeedButton;
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
    Label3: TLabel;
    QryLookFiliais: TSQLQuery;
    DslookFiliais: TDataSource;
    Label4: TLabel;
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
    Label8: TLabel;
    Label9: TLabel;
    btnImprimir: TSpeedButton;
    RVDS_NFE: TRvDataSetConnection;
    RVPRJ_NFE: TRvProject;
    PopupMenu2: TPopupMenu;
    EnviarviaModem1: TMenuItem;
    MenuItem2: TMenuItem;
    EnviarPelaInternet1: TMenuItem;
    impressocompleta1: TMenuItem;
    N1: TMenuItem;
    btnutilitarios: TSpeedButton;
    PopupMenu3: TPopupMenu;
    FazerbackupXMLdalista1: TMenuItem;
    N2: TMenuItem;
    FazerbackuptodosXML1: TMenuItem;
    JvSpecialProgress1: TJvSpecialProgress;
    N3: TMenuItem;
    VerificarAtulizaes1: TMenuItem;
    DBLookupComboBox1: TDBLookupComboBox;
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
    EDataInicial: TJvDatePickerEdit;
    CdsLookFiliaisFIL_CORRETO: TIntegerField;
    buttonCCe: TSpeedButton;
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
    Memo1: TMemo;
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
    DBEdit1: TDBEdit;
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
    procedure TbFecharClick(Sender: TObject);
    procedure btnStatusServicoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnValidarNFeClick(Sender: TObject);

    Procedure AtualizaStatusNotaFiscal(NotaFiscal : Integer; vStatus : String);


    Procedure ABREDADOS;
    Procedure ValidaEmpresa;
    Procedure ValidaCliente;
    procedure PreencheInterfaces;
    Procedure Mensagens(vStatus : Integer);
    procedure NotaFiscalSaida(NotaFiscal, CodCliente : Integer);

    procedure btnReemitirDanfeClick(Sender: TObject);
    procedure btnCancelamentoClick(Sender: TObject);
    procedure btnInutilizaClick(Sender: TObject);
    procedure ConsultaStatusNFe1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcbrNFeStatusChange(Sender: TObject);
    procedure QryParametrosNFEBeforeOpen(DataSet: TDataSet);
    procedure CbTipoConsultaChange(Sender: TObject);
   // procedure DBGridConsultaColumnClick(Sender: TObject; Column: TdxDBTreeListColumn);

    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure QryTotaisNfeBeforeOpen(DataSet: TDataSet);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridConsultaCellClick(Column: TColumn);
    procedure DBGridConsultaColEnter(Sender: TObject);
    procedure CdsLookFiliaisAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure EnviarviaModem1Click(Sender: TObject);
    procedure btnEnviarEMailClick(Sender: TObject);
    procedure btnutilitariosClick(Sender: TObject);
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
  private

    fContingencia, CNPJ_EMPRESA, CodEstado : String;
    function Arredondar(AValor : Double; ADecimais : Integer) : Double;

    function IsDigit(Texto: string): boolean;
    function SoNumero(Texto: String): String;

    { Private declarations }
  public

    NFe: TNFe;

    NFeW : TNFeW;

  //  NFeDanfe : TACBrNFeDANFERave;

    Ambiente, CamimhoNFe, EMailSMTP, EMailUSUARIO, EMailSENHA, EMailASSUNTO, EMailMENSAGEM: String;

    FormaContigencia, EMailPorta, EMailSeguro : Integer;

    vFreteDividido,vDescontoDividido:Double;
    
      { Public declarations }
  end;

  Const
    // Resultado do Processamento da SolicitaÁ„o
    C100  = '100 - Autorizado o uso da NF-e.';
    C101  = '101 - Cancelamento de NF-e homologado.';
    C102  = '102 - InutilizaÁ„o de n˙mero homologado.';
    C103  = '103 - Lote recebido com sucesso.';
    C104  = '104 - Lote processado.';
    C105  = '105 - Lote em processamento.';
    C106  = '106 - Lote n„o localizado.';
    C107  = '107 - ServiÁo em OperaÁ„o.';
    C108  = '108 - ServiÁo Paralisado Momentaneamente (curto prazo).';
    C109  = '109 - ServiÁo Paralisado sem Previs„o.';
    C110  = '110 - Uso Denegado.';
    C111  = '111 - Consulta cadastro com uma ocorrÍncia.';
    C112  = '112 - Consulta cadastro com mais de uma ocorrÍncia.';

    // Motivos de N„o Atendimento da SolicitaÁ„o
    C201  = '201 - O n˙mero m·ximo de NF-e a inutilizar ultrapassou o limite.';
    C202  = '202 - Falha no reconhecimento da autoria ou integridade do arquivo digital.';
    C203  = '203 - Emissor n„o habilitado para emiss„o da NF-e.';
    C204  = '204 - Duplicidade de NF-e.';
    C205  = '205 - NF-e Est· Denegada na Base de Dados da SEFAZ.';
    C206  = '206 - NF-e J· est· Inutilizada na Base de Dados da SEFAZ.';
    C207  = '207 - CNPJ do Emitente Inv·lido.';
    C208  = '208 - CNPJ do Destinat·rio Inv·lido.';
    C209  = '209 - IE do emitente inv·lida.';
    C210  = '210 - IE do destinat·rio inv·lida.';
    C211  = '211 - IE do substituto inv·lida.';
    C212  = '212 - Data de Emiss„o NF-e posterior a data de recebimento.';
    C213  = '213 - CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital.';
    C214  = '214 - Tamanho da mensagem excedeu o limite estabelecido.';
    C215  = '215 - Falha no schema XML.';
    C216  = '216 - Chave de Acesso difere da cadastrada.';
    C217  = '217 - NF-e n„o Consta na Base de Dados da SEFAZ.';
    C218  = '218 - NF-e j· esta cancelada na base de dados da SEFAZ.';
    C219  = '219 - CirculaÁ„o da NF-e veriricada.';
    C220  = '220 - Prazo m·ximo p/ cancelamento de NF-e Reduzido p/ (24 horas). NF-e n„o pode mais ser cancelada!';
    C221  = '221 - Confirmado o recebimento da NF-e pelo destinat·rio.';
    C222  = '222 - Protocolo de AutorizaÁ„o de Uso difere do cadastrado.';
    C223  = '223 - CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta.';
    C224  = '224 - A faixa inicial È maior que a faixa final.';
    C225  = '225 - Falha no Schema XML da NFe.';
    C226  = '226 - CÛdigo da UF do Emitente diverge da UF autorizadora.';
    C227  = '227 - Erro na Chave de Acesso - Campo ID.';
    C228  = '228 - Data de Emiss„o muito atrasada.';
    C229  = '229 - IE do emitente n„o informada.';
    C230  = '230 - IE do emitente n„o cadastrada.';
    C231  = '231 - IE do emitente n„o vinculada ao CNPJ.';
    C232  = '232 - IE do destinat·rio n„o informada.';
    C233  = '233 - IE do destinat·rio n„o cadastrada.';
    C234  = '234 - IE do Destinat·rio n„o Vinculada ao CNPJ.';
    C235  = '235 - InscriÁ„o SUFRAMA inv·lida.';
    C236  = '236 - Chave de Acesso com dÌgito verificador inv·lido.';
    C237  = '237 - CPF do destinat·rio inv·lido.';
    C238  = '238 - CabeÁalho - Vers„o do arquivo XML superior a Vers„o vigente.';
    C239  = '239 - CabeÁalho - Vers„o do arquivo XML n„o suportada.';
    C240  = '240 - Cancelamento/InutilizaÁ„o - Irregularidade Fiscal do Emitente.';
    C241  = '241 - Um n˙mero da faixa j· foi utilizado.';
    C242  = '242 - CabeÁalho - Falha no Schema XML.';
    C243  = '243 - XML Mal Formado.';
    C244  = '244 - CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente.';
    C245  = '245 - CNPJ Emitente n„o cadastrado.';
    C246  = '246 - CNPJ Destinat·rio n„o cadastrado.';
    C247  = '247 - Sigla da UF do Emitente diverge da UF autorizadora.';
    C248  = '248 - UF do Recibo diverge da UF autorizadora.';
    C249  = '249 - UF da Chave de Acesso diverge da UF autorizadora.';
    C250  = '250 - UF diverge da UF autorizadora.';
    C251  = '251 - UF/MunicÌpio destinat·rio n·o pertence a SUFRAMA.';
    C252  = '252 - Ambiente informado diverge do Ambiente de recebimento.';
    C253  = '253 - Digito Verificador da chave de acesso composta inv·lida.';
    C254  = '254 - NF-e referenciada n„o informada para NF-e complementar.';
    C255  = '255 - Informada mais de uma NF-e referenciada para NF-e complementar.';
    C256  = '256 - Uma NF-e da faixa j· est· inutilizada na Base de dados da SEFAZ.';
    C257  = '257 - Solicitante n„o habilitado para emiss„o da NF-e.';
    C258  = '258 - CNPJ da consulta inv·lido.';
    C259  = '259 - CNPJ da consulta n·o cadastrado como contribuinte na UF.';
    C260  = '260 - IE da consulta inv·lida.';
    C261  = '261 - IE da consulta n„o cadastrada como contribuinte na UF.';
    C262  = '262 - UF n„o fornece consulta por CPF.';
    C263  = '263 - CPF da consulta inv·lido.';
    C264  = '264 - CPF da consulta n„o cadastrado como contribuinte na UF.';
    C265  = '265 - Sigla da UF da consulta difere da UF do Web Service.';
    C266  = '266 - SÈrie utilizada n„o permitida no Web Service.';
    C267  = '267 - NF Complementar referencia uma NF-e inexistente.';
    C268  = '268 - NF Complementar referencia uma outra NF-e Complementar.';
    C269  = '269 - CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada.';
    C270  = '270 - CÛdigo MunicÌpio do Fato Gerador: dÌgito inv·lido.';
    C271  = '271 - CÛdigo MunicÌpio do Fato Gerador: difere da UF do Emitente.';
    C272  = '272 - CÛdigo MunicÌpio do Emitente: dÌgito inv·lido.';
    C273  = '273 - CÛdigo MunicÌpio do Emitente difere da UF do emitente.';
    C274  = '274 - CÛdigo MunicÌpio do Destinat·rio: dÌgito inv·lido.';
    C275  = '275 - CÛdigo MunicÌpio do Destinat·rio: difere da UF do Destinat·rio.';
    C276  = '276 - CÛdigo MunicÌpio do Local de Retirada: dÌgito inv·lido.';
    C277  = '277 - CÛdigo MunicÌpio do Local de Retirada: difere da UF do Local de Retirada.';
    C278  = '278 - CÛdigo Municipio do Local de Entrega: dÌgito inv·lido.';
    C279  = '279 - CÛdigo MunicÌpio do Local de Entraga: difere da UF do Local de Entrega.';
    C280  = '280 - Certificado Transmissor inv·lido.';
    C281  = '281 - Certificado Transmissor Data Validade.';
    C282  = '282 - Certificado Transmissor sem CNPJ.';
    C283  = '283 - Certificado Transmissor - erro Cadeia de CertificaÁ„o.';
    C284  = '284 - Certificado Transmissor revogado.';
    C285  = '285 - Certificado Transmissor difere ICP-Brasil.';
    C286  = '286 - Certificado Transmissor erro no acesso a LCR.';
    C287  = '287 - CÛdigo MunicÌpio do FG - ISSQN: dÌgito inv·lido.';
    C288  = '288 - CÛdigo MunicÌpio do FG - Transporte: dÌgito inv·lido.';
    C289  = '289 - CÛdigo da UF informada diverge da UF solicitada.';
    C290  = '290 - Certificado Assinatura inv·lido.';
    C291  = '291 - Certificado Assinatura Data Validade.';
    C292  = '292 - Certificado Assinatura sem CNPJ.';
    C293  = '218 - Certificado Assinatura - erro Cadeia de CertificaÁ„o.';
    C294  = '294 - Certificado Assinatura revogado.';
    C295  = '295 - Certificado Assinatura difere ICP-Brasil.';
    C296  = '296 - Certificado Assinatura erro no acesso a LCR.';
    C297  = '297 - Assinatura difere do calculado.';
    C298  = '298 - Assinatura difere do padr„o do Projeto.';
    C299  = '299 - XML da ·rea de cabeÁalho com codificaÁ„o diferente de UTF-8.';

    // Motivos de DenegaÁ„o de Uso
    C301  = '301 - Irregularidade Fiscal do Emitente.';
    C302  = '302 - Irregularidade Fiscal do Destinat·rio.';

    C401  = '401 - CPF do Remetente Inv·lido.';
    C402  = '402 - XML da ·rea de dados com CodificaÁ„o Diferente de UTF-8.';
    C403  = '403 - O Grupo de InformaÁıes da NF-e avulsa È de uso exclusivo do Fisco.';
    C404  = '404 - Uso de Prefixo de Namespace n„o Permitido.';
    C405  = '405 - CÛdigo do PaÌs do Emitente: DÌdigo Inv·lido.';
    C406  = '406 - CÛdigo do PaÌs do Destinat·rio: DÌdigo Inv·lido.';
    C407  = '407 - O CPF sÛ pode ser Informado no campo emitente para a NF-e avulsa.';

    C409  = '409 - Campo cUF inexistente no elemento nfecabecMsg do SOAP Header.';
    C410  = '410 - UF Informada no campo cUF n„o È atendida pelo Web Service.';
    C411  = '411 - Campo VersaoDados inexistente no elemento nfeCabecMsg do SOAP Header.';
    C412  = '412 - Campo versaoDados inexistente n elemento nfeCabecMsg do SOAP Header.';

    C453  = '453 - Ano de inutilizaÁ„o n„o pode ser superior ao Ano atual.';
    C454  = '454 - Ano de inutilizaÁ„o n„o pode ser inferior a 2006.';
    C478  = '478 - Local de entrega n„o informado para faturamento direto de veÌculo novos.';
    C479  = '479 - Emissor em situaÁ„o irregular perante o fisco.';
    C480  = '480 - CNPJ da Chave de acesso da NF-e informada diverge do CNPJ do emitente.';
    C481  = '481 - UF da Chave de acesso diverge do cÛdigo da UF informada.';
    C482  = '482 - AA da Chave de acesso inv·lida.';
    C483  = '483 - MM da Chave de acesso inv·lido.';
    C484  = '484 - DV da Chave de acesso inv·lida.';
    C485  = '485 - Chave de acesso j· existe no cadastro de DPEC.';
    C486  = '486 - DPEC n„o localizada para o n˙mero de registro de DPEC informado.';
    C487  = '487 - Nenhuma DPEC localizada para a chave de acesso informada.';
    C488  = '488 - Requisitante de Consulta n„o tem o mesmo CNPJ base do emissor da DPEC.';

    C502  = '502 - Erro na Chave de Acesso - Campo ID n„o corresponde · concatenaÁ„o dos campos correspondentes.';
    C503  = '503 - SÈrie utilizada fora de faixa permitida no Web Service (0-889).';
    C504  = '504 - Data de Entrada/SaÌda posterior ao permitido.';
    C505  = '505 - Data de Entrada/SaÌda anterior ao permitido.';
    C506  = '506 - Data de SaÌda menor que a Data de Emiss„o.';
    C507  = '507 - O CNPJ do destinat·rio/remetente n„o deve ser informado em operaÁ„o com o  exterior.';
    C508  = '508 - O CNPJ com conte˙do nulo sÛ e v·lido em operaÁ„o com exterior.';
    C509  = '509 - Informado cÛdigo de municÌpio diferente de "999999999" para operaÁ„o com o exterior.';
    C510  = '510 - OperaÁ„o com Exterior e CÛdigo PaÌs destinat·rio È 1058 (Brasil) ou n„o informado.';
    C511  = '511 - N„o È de OperaÁ„o com Exterior e CÛdigo PaÌs destinat·rio difere do 1058 (Brasil).';
    C512  = '512 - CNPJ do Local de Retirada inv·lido.';
    C513  = '513 - CÛdigo MunicÌpio do Local de Retirada deve ser 9999999 para UF retirada = "EX".';
    C514  = '514 - CNPJ do Local de Entrega inv·lido.';
    C515  = '515 - CÛdigo MunicÌpio do Local de Entrega deve ser 9999999 para UF entrega = "EX".';
    C516  = '516 - OBrigatÛria a informaÁ„o do NCM e/ou "genero".';
    C517  = '517 - InformaÁ„o do NCM difere da informaÁ„o de "genero".';
    C518  = '518 - CFOP de entrada para NF.';
    C519  = '519 - CFOP de saÌda para NF-e de entrada.';
    C520  = '520 - CFOP de OperaÁ„o com Exterior e UF destinat·rio difere de "EX".';
    C521  = '521 - CFOP n„o È de OperaÁ„o com Exterior e UF destinat·rio È "EX".';
    C522  = '522 - CFOP de OperaÁ„o Estadual e UF emitente difere UF destinat·rio.';
    C523  = '523 - CFOP n„o È de OperaÁ„o Estadual e UF emitente iqual a UF destinat·rio.';
    C524  = '524 - CFOP de OperaÁ„o com Exterior e n„o informadado NCM.';
    C525  = '525 - CFOP de ImportaÁ„o e n„o informado dados da DI.';
    C526  = '526 - CFOP de ExportaÁ„o e n„o informado Local de Embarque.';
    C527  = '527 - OperaÁ„o de ExportaÁ„o com informaÁ„o de ICMS.';
    C528  = '528 - Valor do ICMS difere do produto BC e Aliquota.';
    C529  = '529 - NCM de informaÁ„o obrigatÛrio para produto tributado pelo IPI.';
    C530  = '530 - OperaÁ„o com tributaÁ„o de ISSQN sem informar a InscriÁ„o MunicÌpal.';
    C531  = '531 - Total da BC ICMS difere do somatÛrio dos itens.';
    C532  = '532 - Total do ICMS difere do somatÛrio dos itens.';
    C533  = '533 - Total da BC ICMS-ST difere do somatÛrio dos itens.';
    C534  = '534 - Total do ICMS-ST difere do somatÛrio dos itens.';
    C535  = '535 - Total do Frete difere do somatÛrio dos itens.';
    C536  = '536 - Total do Seguro difere do somatÛrio dos itens.';
    C537  = '537 - Total do Desconto difere do somatÛrio dos itens.';
    C538  = '538 - Total do IPI difere do somatÛrio dos itens.';
    C539  = '539 - Duplicidade de NF-e, com diferenÁa na Chave de Acesso.';
    C540  = '540 - CPF do Local de Retirada inv·lido.';
    C541  = '541 - CPF do Local de Entrega inv·lido.';
    C542  = '542 - CNPJ do Transportador inv·lido.';
    C543  = '543 - CPF do Transportador inv·lido.';
    C544  = '544 - IE do Transportador inv·lido.';
    C545  = '545 - NF-e j· autorizada em contigÍncia.';
    C546  = '546 - Erro na Chave de Acesso - Campo ID - falta a literal NFe.';
    C547  = '547 - DÌgito Verificador da Chave de Acesso da NF-e Referenciada inv·lida.';
    C548  = '548 - CNPJ da NF referenciada inv·lido.';
    C549  = '549 - CNPJ da NF referenciada de produtor inv·lido.';
    C550  = '550 - CPF da NF referenciada de produtor inv·lido.';
    C551  = '551 - IE da NF referenciada de produtor inv·lido.';
    C552  = '552 - DÌgito Verificador da Chave de Acesso do CT-e Referenciado inv·lido.';
    C553  = '553 - Tipo autorizador do recibo diverge do Org„o Autorizador.';
    C554  = '554 - SÈrie difere da faixa 0-899.';
    C555  = '555 - Tipo autorizador do protocolo diverge do Org„o Autorizador.';
    C556  = '556 - Justificativa de entrada em contigÍncia n„o deve ser informada para tipo de emiss„o normal.';
    C557  = '557 - A Justificativa de entrada em contigÍncia deve ser informada.';
    C558  = '558 - Data de entrada em contigÍncia posterior a data de emiss„o.';
    C559  = '559 - UF do Transportador n„o informado.';
    C560  = '560 - CNPJ base do emitente difere do CNPJ base de primeira NF-e do lote recebido.';
    C561  = '561 - MÍs de Emiss„o ifnromado na Chave de Acesso difere do MÍs de Emiss„o da NF-e.';
    C562  = '562 - CÛdigo NumÈrico informado na Chave de Acesso difere do CÛdigo NumÈrico da NF-e.';

    C999  = '999 - Erro n„o Catalogado (Informar a mensagem de Erro Capturado no Tratamento da ExceÁ„o.';

    C9000 = '9000 - Erro na ValidaÁ„o do Arquivo XML.';
    C9999 = '9999 - Seq¸encia de Classe Inv·lida.';

var
  FNFSEletronica: TFNFSEletronica;

implementation

uses UModulo, UFPrincipal, UFuncoes, UFNFSCancelamento, UGeradorChaveNFe,
  UFormInutilizaNew, UFtpBackup, UXMLBackup, uVerificaUpdate, UFCartaCorrecao;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TFNFSEletronica.NotaFiscalSaida(NotaFiscal, CodCliente : Integer);
Begin
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
  QryCadNota.SQL.Add('AND   NOTA.NOT_NUMERONFE  =' + RxNotaFiscalNOTA_FISCAL.AsString); //ToStr(NotaFiscal));
  // QryCadNota.SQL.Add('AND   CLIENTES.CLI_CODIGO =' +  RxNotaFiscalCOD_CLIENTE.asstring);//tToStr(CodCliente));
  //QryCadNota.SQL.SaveToFile('sql1.txt');
  QryCadNota.Open;
End;

Procedure TFNFSEletronica.Mensagens(vStatus : Integer);
Var
 Msg : String;
Begin
   Case vStatus Of
      100  : Msg := C100;
      101  : Msg := C101;
      102  : Msg := C102;
      103  : Msg := C103;
      104  : Msg := C104;
      105  : Msg := C105;
      106  : Msg := C106;
      107  : Msg := C107;
      108  : Msg := C108;
      109  : Msg := C109;
      110  : Msg := C110;
      111  : Msg := C111;
      112  : Msg := C112;
      201  : Msg := C201;
      202  : Msg := C202;
      203  : Msg := C203;
      204  : Msg := C204;
      205  : Msg := C205;
      206  : Msg := C206;
      207  : Msg := C207;
      208  : Msg := C208;
      209  : Msg := C209;
      210  : Msg := C210;
      211  : Msg := C211;
      212  : Msg := C212;
      213  : Msg := C213;
      214  : Msg := C214;
      215  : Msg := C215;
      216  : Msg := C216;
      217  : Msg := C217; 
      218  : Msg := C218;
      219  : Msg := C219;
      220  : Msg := C220;
      221  : Msg := C221;
      222  : Msg := C222;
      223  : Msg := C223;
      224  : Msg := C224;
      225  : Msg := C225;
      226  : Msg := C226;
      227  : Msg := C227;
      228  : Msg := C228;
      229  : Msg := C229;
      230  : Msg := C230;
      231  : Msg := C231;
      232  : Msg := C232;
      233  : Msg := C233;
      234  : Msg := C234;
      235  : Msg := C235;
      236  : Msg := C236;
      237  : Msg := C237;
      238  : Msg := C238;
      239  : Msg := C239;
      240  : Msg := C240;
      241  : Msg := C241;
      242  : Msg := C242;
      243  : Msg := C243;
      244  : Msg := C244;
      245  : Msg := C245;
      246  : Msg := C246;
      247  : Msg := C247;
      248  : Msg := C248;
      249  : Msg := C249;
      250  : Msg := C250;
      251  : Msg := C251;
      252  : Msg := C252;
      253  : Msg := C253;
      254  : Msg := C254;
      255  : Msg := C255;
      256  : Msg := C256;
      257  : Msg := C257;
      258  : Msg := C258;
      259  : Msg := C259;
      260  : Msg := C260;
      261  : Msg := C261;
      262  : Msg := C262;
      263  : Msg := C263;
      264  : Msg := C264;
      265  : Msg := C265;
      266  : Msg := C266;
      267  : Msg := C267;
      268  : Msg := C268;
      269  : Msg := C269;
      270  : Msg := C270;
      271  : Msg := C271;
      272  : Msg := C272;
      273  : Msg := C273;
      274  : Msg := C274;
      275  : Msg := C275;
      276  : Msg := C276;
      277  : Msg := C277;
      278  : Msg := C278;
      279  : Msg := C279;
      280  : Msg := C280;
      281  : Msg := C281;
      282  : Msg := C282;
      283  : Msg := C283;
      284  : Msg := C284;
      285  : Msg := C285;
      286  : Msg := C286;
      287  : Msg := C287;
      288  : Msg := C288;
      289  : Msg := C289;
      290  : Msg := C290;
      291  : Msg := C291;
      292  : Msg := C292;
      293  : Msg := C293;
      294  : Msg := C294;
      295  : Msg := C295;
      296  : Msg := C296;
      297  : Msg := C297;
      298  : Msg := C298;
      299  : Msg := C299;
      301  : Msg := C301;
      302  : Msg := C302;
      401  : Msg := C401;
      402  : Msg := C402;
      403  : Msg := C403;
      404  : Msg := C404;
      405  : Msg := C405;
      406  : Msg := C406;
      407  : Msg := C407;
      409  : Msg := C409;
      410  : Msg := C410;
      411  : Msg := C411;
      412  : Msg := C412;

      453  : Msg := C453;
      454  : Msg := C454;

      478  : Msg := C478;
      479  : Msg := C479;
      480  : Msg := C480;
      481  : Msg := C481;
      482  : Msg := C482;
      483  : Msg := C483;
      484  : Msg := C484;
      485  : Msg := C485;
      486  : Msg := C486;
      487  : Msg := C487;
      488  : Msg := C488;

      502  : Msg := C502;
      503  : Msg := C503;
      504  : Msg := C504;
      505  : Msg := C505;
      506  : Msg := C506;
      507  : Msg := C507;
      508  : Msg := C508;
      509  : Msg := C509;
      510  : Msg := C510;
      511  : Msg := C511;
      512  : Msg := C512;
      513  : Msg := C513;
      514  : Msg := C514;
      515  : Msg := C515;
      516  : Msg := C516;
      517  : Msg := C517;
      518  : Msg := C518;
      519  : Msg := C519;
      520  : Msg := C520;
      521  : Msg := C521;
      522  : Msg := C522;
      523  : Msg := C523;
      524  : Msg := C524;
      525  : Msg := C525;
      526  : Msg := C526;
      527  : Msg := C527;
      528  : Msg := C528;
      529  : Msg := C529;
      530  : Msg := C530;
      531  : Msg := C531;
      532  : Msg := C532;
      533  : Msg := C533;
      534  : Msg := C534;
      535  : Msg := C535;
      536  : Msg := C536;
      537  : Msg := C537;
      538  : Msg := C538;
      539  : Msg := C539;
      540  : Msg := C540;
      541  : Msg := C541;
      542  : Msg := C542;
      543  : Msg := C543;
      544  : Msg := C544;
      545  : Msg := C545;
      546  : Msg := C546;
      547  : Msg := C547;
      548  : Msg := C548;
      549  : Msg := C549;
      550  : Msg := C550;
      551  : Msg := C551;
      552  : Msg := C552;
      553  : Msg := C553;
      554  : Msg := C554;
      555  : Msg := C555;
      556  : Msg := C556;
      557  : Msg := C557;
      558  : Msg := C558;
      559  : Msg := C559;
      560  : Msg := C560;
      561  : Msg := C561;
      562  : Msg := C562;

      999  : Msg := C999;
      9000 : Msg := C9000;
      9999 : Msg := C9999;
   End;

   lblStatusValidar.Caption := (Msg);
   lblStatusValidar.Repaint;
End;

Function IIf(pCond: Boolean; pTrue, pFalse: Variant): Variant;
Begin
   If pCond Then

      Result := pTrue
   Else
      Result := pFalse;
End;

Procedure TFNFSEletronica.AtualizaStatusNotaFiscal(NotaFiscal : Integer; vStatus : String);
Begin
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
End;

Procedure TFNFSEletronica.ValidaEmpresa;
Begin
  // Pesquisa os Dados Cadastrais da Empresa


  If not (CdsLookFiliaisFIL_CNPJ.AsString='') Then Begin

     If (CdsLookFiliaisFIL_NOME.AsString = '') Or (CdsLookFiliaisFIL_CNPJ.AsString = '') Then
     Begin
        Application.MessageBox('Empresa n„o possui os dados necess·rios, ' + #13#10 +
                               'para validaÁ„o da NF-e.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;

     If (CdsLookFiliaisFIL_END_ENDERECO.AsString = '') Then Begin
        Application.MessageBox('Empresa n„o possui endereÁo.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;

     If (CdsLookFiliaisFIL_INSCEST.AsString = '') Then Begin
        Application.MessageBox('Empresa n„o possui inscriÁ„o estadual.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;

     If (CdsLookFiliaisFIL_END_CEP.AsString = '') Then Begin
        Application.MessageBox('Empresa n„o possui cep.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;

     If (CdsLookFiliaisFIL_END_BAIRRO.AsString = '') Then Begin
        Application.MessageBox('Empresa n„o possui bairro.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;

     If (CdsLookFiliaisFIL_END_CID_NOME.AsString = '') Then Begin
        Application.MessageBox('Empresa n„o possui municÌpio.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;

     If (CdsLookFiliaisFIL_END_CID_UF.AsString = '') Then Begin
        Application.MessageBox('Empresa n„o possui estado.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        Abort;
     End;
  End
  Else Begin
     Application.MessageBox('Empresa inexistente.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
     Abort;
  End;
End;

procedure TFNFSEletronica.VerificarAtulizaes1Click(Sender: TObject);
begin
  WinExec('UpdaterNFE.exe',SW_SHOWNORMAL);
end;

Procedure TFNFSEletronica.ValidaCliente;
Begin
  NotaFiscalSaida(RxNotaFiscalNOTA_FISCAL.AsInteger, RxNotaFiscalCOD_CLIENTE.AsInteger);

  If (QryCadNotaCLI_RAZAO.AsString = '')   Or
    (QryCadNotaCLI_CPFCNPJ.AsString = '') Then Begin

    Application.MessageBox('Cliente n„o possui os dados necess·rios ' + #13#10 +
                           'para validaÁ„o da NF-e.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
    Abort;
  End;

  If (QryCadNotaCLI_CODIGO.AsInteger > 0) Then Begin

    If (QryCadNotaCLI_END_ENDERECO.AsString = '') Then Begin
      Application.MessageBox('Cliente n„o possui endereÁo.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    End;

    If (QryCadNotaCLI_END_CEP.AsString = '') Then Begin
      Application.MessageBox('Cliente n„o possui cep.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    End;

    If (QryCadNotaCLI_END_BAIRRO.AsString = '') Then Begin
      Application.MessageBox('Cliente n„o possui bairro.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    End;

    If (QryCadNotaCLI_END_CID_NOME.AsString = '') Then Begin
      Application.MessageBox('Cliente n„o possui municÌpio.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    End;

    If (QryCadNotaCLI_END_CID_UF.AsString = '') Then Begin
      Application.MessageBox('Cliente n„o possui estado.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    End;
  End Else Begin
    Application.MessageBox('Cliente n„o possui endereÁo.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
    Abort;
  End;
End;

procedure TFNFSEletronica.TbFecharClick(Sender: TObject);
Begin
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
End;

procedure TFNFSEletronica.btnStatusServicoClick(Sender: TObject);
Var
  Status : Integer;
Begin
  AcbrNFe.WebServices.StatusServico.Executar;

  Status := AcbrNFe.WebServices.StatusServico.cStat;

  Mensagens(Status);
End;




procedure TFNFSEletronica.FormShow(Sender: TObject);
Begin
  ABREDADOS;
End;

procedure TFNFSEletronica.ProgressBackupProgress(Sender: TObject;
  var AContinue: Boolean);
begin
BackupXML();
end;

procedure TFNFSEletronica.btnConsultarClick(Sender: TObject);
Var
  S, S1 : String;
  totalnfe,qtdnfe:Double;
Begin

  If (Ambiente = 'H') Or (Ambiente = 'P') Then
  Begin
    Application.MessageBox('Tipo de Ambiente Inv·lido.', 'A T E N « √ O', MB_OK + MB_ICONERROR);
    btnConsultar.SetFocus;
    Abort;
  End;
  ValidaEmpresa;
  lblStatusValidar.Caption := '';
  EPis.Clear;
  ECofins.Clear;
  EBaseICMS.Clear;
  ETotalNota.Clear;
  Case CbTipoConsulta.ItemIndex Of
  0 : Begin
        If (EDataInicial.Text = '  /  /    ') Or (EDataInicial.Text = '') Then Begin
          Application.MessageBox('Informe a Data InicÌal.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);
          EDataInicial.SetFocus;
          Abort;
        End;

        If (EDataFinal.Text = '  /  /    ') Or (EDataFinal.Text = '') Then Begin
          Application.MessageBox('Informe a Data Final.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);
          EDataFinal.SetFocus;
          Abort;
        End;

        If EDataInicial.Date > EDataFinal.Date Then Begin
          Application.MessageBox('A Data Final n„o Pode ser Menor que A Data InicÌal.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);
          EDataInicial.SetFocus;
          Abort;
        End;
     End;
  End;
  S  := formatdatetime('mm/dd/yyyy', StrToDate(EDataInicial.Text));
  S1 := formatdatetime('mm/dd/yyyy', StrToDate(EDataFinal.Text));
  totalnfe  :=0;
  qtdnfe    :=0;
  QryConsultaNota.Close;
  QryConsultaNota.SQL.Clear;
  QryConsultaNota.SQL.Add('SELECT N.cli_codigo,n.NOT_NUMERONFE,n.NOT_SERIE,n.data,n.NOT_TOTNOTA,n.NT_VALORTOTALSERVICO,              ');
  QryConsultaNota.SQL.Add('n.NOT_STATUS_NFE,C.cli_razao,C.cli_email,C.CLI_CPFCNPJ,n.NOT_DATAEMISSAO,h.chave,h.caminho  FROM NOTA N            ');
  QryConsultaNota.SQL.Add('inner join clientes C on N.cli_codigo = C.cli_codigo                          ');
  QryConsultaNota.SQL.Add('left outer join historico_nfe h on n.not_numeronfe = h.nota_fiscal                          ');

  QryConsultaNota.SQL.Add('WHERE N.FIL_CODIGO = ' + cdslookfiliaisfil_codigo.AsString);
  QryConsultaNota.SQL.Add('AND N.NOT_DATAEMISSAO BETWEEN ' + '''' + S + '''' + ' AND ' + '''' + S1 + ''' ');
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE > 0                                                      ');
  QryConsultaNota.SQL.Add('AND N.NOT_TIPO       = ''NFE''                                                ');
  QryConsultaNota.SQL.Add('AND N.NOT_NUMERONFE  > 0                                                      '); 
    if ComboBox2.Text = 'ValidaÁ„o Normal Sem Retorno' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 1                                                     ');
   if ComboBox2.Text = 'Erro na ValidaÁ„o do Arquivo' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 2                                                     ');
    if ComboBox2.Text = 'ValidaÁ„o ContingÍncia Sem Retorno' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 3                                                     ');
    if ComboBox2.Text = 'ValidaÁ„o SCAN Sem Retorno' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 4                                                     ');
    if ComboBox2.Text = 'NF-e Validada' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 5                                                     ');
    if ComboBox2.Text = 'NF-e Cancelada' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 6                                                     ');
    if ComboBox2.Text = 'NF-e Inutilizada' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 7                                                     ');
    if ComboBox2.Text = 'N„o Validada' then
  QryConsultaNota.SQL.Add('AND N.NOT_STATUS_NFE  = 9                                                     ');   
    if ComboBox2.Text = 'NF-e DevoluÁ„o' then
  QryConsultaNota.SQL.Add('AND N.NOT_NFEDEVOLUCAO  = ''SIM''                                             ');





  QryConsultaNota.SQL.Add('ORDER BY N.NOT_NUMERONFE DESC                                                 ');

  QryConsultaNota.Open;
 // QryConsultaNota.SQL.SaveToFile('dotnfe.txt');
{NF-e Validada
N„o Validada
Erro na ValidaÁ„o do Arquivo
ValidaÁ„o ContigÍncia /Scan
ValidaÁ„o Sem Retorno
Cancelada
Inutilizada
Todos}
  RxNotaFiscal.Cancel;
  RxNotaFiscal.Close;
  RxNotaFiscal.EmptyTable;
  RxNotaFiscal.Open;
 // Gauge.Min := 0;
 // Gauge.Max := QryConsultaNota.RecordCount;
 // Gauge.Position := 0;
  If QryConsultaNota.RecordCount > 0 Then Begin

    QryConsultaNota.First;
    totalnfe:=0;
    qtdnfe:=0;

    While QryConsultaNota.Eof = False Do Begin

       Application.ProcessMessages;

       //Gauge.Position := Gauge.Position + 1;
       // ajuste do valor na nfe sem o servico
       RxNotaFiscal.Insert;
       RxNotaFiscalCOD_EMPRESA.AsInteger   := cdslookfiliaisfil_codigo.AsInteger;
       RxNotaFiscalNOTA_FISCAL.AsInteger   := QryConsultaNotaNOT_NUMERONFE.AsInteger;
       RxNotaFiscalDATA_EMISSAO.AsDateTime := QryConsultaNotaDATA.AsDateTime;
       RxNotaFiscalSERIE.AsString          := QryConsultaNotaNOT_SERIE.AsString;
       RxNotaFiscalCAMINHO_XML.AsString    := QryConsultaNotaCAMINHO.AsString;
       RxNotaFiscalCHAVE.AsString          := QryConsultaNotaCHAVE.AsString;
       RxNotaFiscalCOD_CLIENTE.AsInteger   := QryConsultaNotaCLI_CODIGO.AsInteger;
       RxNotaFiscalVALOR_NOTA.AsFloat      := (QryConsultaNotaNOT_TOTNOTA.AsFloat - QryConsultaNotaNT_VALORTOTALSERVICO.AsFloat);

       totalnfe:= totalnfe + RxNotaFiscalVALOR_NOTA.AsFloat ;
       qtdnfe := qtdnfe +1;

       //QryCliente.Close;
       //QryCliente.SQL.Clear;
       //QryCliente.SQL.Add('SELECT * FROM CLIENTES         ');
       //QryCliente.SQL.Add('WHERE CLI_CODIGO = :CLI_CODIGO ');
       //QryCliente.ParamByName('CLI_CODIGO').Value := QryConsultaNotaCLI_CODIGO.AsInteger;
       //QryCliente.Open;

       RxNotaFiscalRAZAO_SOCIAL.AsString   := QryConsultaNotaCLI_RAZAO.AsString;
       RxNotaFiscalCNPJCPF.AsString        := QryConsultaNotaCLI_CPFCNPJ.AsString;
       RxNotaFiscalEMAIL.AsString          := QryConsultaNotaCLI_EMAIL.AsString;

       RxNotaFiscalCAMINHO_XML.AsString    := QryConsultaNotaCAMINHO_XML.AsString;
       RxNotaFiscalSTATUS_NFE.AsInteger    := QryConsultaNotaNOT_STATUS_NFE.AsInteger;
       RxNotaFiscalST.AsInteger            := QryConsultaNotaNOT_STATUS_NFE.AsInteger;

       // Codigo Para ValidaÁ„o da Nota Fiscal de SaÌda
       If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 1 Then Begin
         RxNotaFiscalSTATUS.AsString := 'ValidaÁ„o Normal Sem Retorno';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 2 Then Begin
         RxNotaFiscalSTATUS.AsString := 'Erro na ValidaÁ„o do Arquivo';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 3 Then Begin
         RxNotaFiscalSTATUS.AsString := 'ValidaÁ„o ContingÍncia Sem Retorno';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 4 Then Begin
         RxNotaFiscalSTATUS.AsString := 'ValidaÁ„o SCAN Sem Retorno';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 5 Then Begin
         RxNotaFiscalSTATUS.AsString := 'NF-e Validada';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 6 Then Begin
         RxNotaFiscalSTATUS.AsString := 'NF-e Cancelada';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 7 Then Begin
         RxNotaFiscalSTATUS.AsString := 'NF-e Inutilizada';
       End Else If QryConsultaNotaNOT_STATUS_NFE.AsInteger = 9 Then Begin
         RxNotaFiscalSTATUS.AsString := 'N„o Validada';
       End;
       
    RxNotaFiscal.Post;
    QryConsultaNota.Next;
    End;

  RxNotaFiscal.SortOnFields('DATA_EMISSAO;NOTA_FISCAL', True, True);

  RxNotaFiscal.First;
  End;
   if totalnfe > 0 then
   Label9.Caption  := FormatFloat( '###,###,##0.00', totalnfe )
   else
    Label9.Caption := '0';

   if qtdnfe > 0 then
   Label8.Caption := FormatFloat( '###,###,##0', qtdnfe )
   else
   Label8.Caption := '0';

  //Gauge.Position := 0;

  if ComboBox2.ItemIndex = 7 then begin
  if RxNotaFiscal.RecordCount > 0 then begin
   Label3.Visible := True;
  end else begin
  Label3.Visible := False;
  end;  
  end;


End;


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
var F, T: TPoint;

begin
  inherited;
EnviarviaModem1Click(Sender);
//  F.X := btnEnviarEMail.Left;
//  F.Y := btnEnviarEMail.Top + btnEnviarEMail.Height + ( Width - ClientWidth ) + 0;

 // T := ClientToScreen( F );
 // PopupMenu2.Popup( T.X, T.Y );

end;

procedure TFNFSEletronica.FormKeyPress(Sender: TObject; var Key: Char);
Var Z : Integer;
Begin
   If Key =  #13 Then
   Begin
     Key := #0;
     SelectNext(ActiveControl, True, True);
   End;

   If key = #27 Then
   Begin
     Z := Application.MessageBox ('Tem certeza que deseja sair do formul·rio?', 'A T E N « √ O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2);
     If Z = MrYes Then
     Begin
       Close;
     End;
   End;
End;

procedure TFNFSEletronica.FormPaint(Sender: TObject);
var
  Atualizador: TUpdate;
Begin
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


procedure TFNFSEletronica.btnValidarNFeClick(Sender: TObject);
Var
  Ok : Boolean;
  Status, I, sNotaFiscal, _Sequencia,x,y : Integer;
  NumeroRecibo, sDataHora, sSerie : String;
  arquivos_backup:array[0..1] of string;
  cnpj:string;
  stats,Modo:string;
Begin
  y:=0;
  if RxNotaFiscal.IsEmpty then
  begin
    Application.MessageBox('N„o existe NF-e No Grid!' + #13#10 +
      'Realize primeiramente uma pesquisa!', 'ATEN«√O!', MB_OK + MB_ICONSTOP);
    Abort;
  end;
  RxNotaFiscal.First;
  for x := 0 to Pred( RxNotaFiscal.RecordCount ) do
  begin
    if RxNotaFiscalMARCADO.AsBoolean = True then
    y  :=  y+1;
    RxNotaFiscal.Next;
  end;
  if y < 1 then
  begin
    Application.MessageBox('N„o existe NF-e Selecionada No Grid!' + #13#10 +
      'Clique com o mouse sobre a NF-e, e tente novamente!', 'ATEN«√O!', MB_OK
      + MB_ICONSTOP);
    DBGridConsulta.SetFocus;
    Abort;
  end;

  if RxNotaFiscalSTATUS_NFE.AsString = '5' then
  BEGIN
    MessageBoxW(Handle, 'Essa NF-e j· foi validade!' + #13#10 +
    'Vamos consulta-la novamente!', 'NOTAS EXPLICATIVAS:', MB_OK +
    MB_ICONINFORMATION);
    ConsultaStatusNFe1.Click;
    Abort;
  END;

  AcbrNFe.NotasFiscais.Clear;

  lblStatusValidar.Caption := '';
  IMPRIMENFERAVE1.Logo := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
  IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, IntToStr(rgImpressao.ItemIndex + 1));
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

  For I := 0 To (AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Count - 1) Do
  Begin
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

    If CdsHistoricoNFe.RecordCount = 0 Then
    Begin
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

      If CdsQryMaximo.RecordCount > 0 Then
      Begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
      End
      Else
        Begin
          _Sequencia := CdsQryMaximoTOTAL.AsInteger;
        End;

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
    End;

    // Envio
    Status := AcbrNFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[I].cStat;

    If Status <> 9999 Then
    Begin
      Case Status Of
        103 : Begin
                btnReemitirDanfe.Enabled := False;
                btnValidarNFe.Enabled    := True;
                btnConsultar.Enabled     := True;
              End;

        9000 : Begin
                 btnReemitirDanfe.Enabled := False;
                 btnValidarNFe.Enabled    := True;
                 btnConsultar.Enabled     := True;
               End;
      End;

      // Atualiza N˙mero Recibo e Status NF-e
      If fContingencia = '1' Then
      Begin
        // Normal
        Case Status Of
          100  : AtualizaStatusNotaFiscal(sNotaFiscal, '5');
          103  : AtualizaStatusNotaFiscal(sNotaFiscal, '1');
          9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
        End;
      End
      Else
        If fContingencia = '2' Then
        Begin
          // Contigencia
          Case Status Of
            103  : AtualizaStatusNotaFiscal(sNotaFiscal, '3');
            9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
          End;
        End
        Else
        Begin
          // Contigencia
          Case Status Of
            103  : AtualizaStatusNotaFiscal(sNotaFiscal, '4');
            9000 : AtualizaStatusNotaFiscal(sNotaFiscal, '2');
          End;
        End;
    End
    Else
    Begin
      AtualizaStatusNotaFiscal(sNotaFiscal, '3');
      btnReemitirDanfe.Enabled := True;
    End;
  End;

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
<<<<<<< HEAD

    ComboBox2.ItemIndex := 9;
    btnConsultar.Click;


        try
        EnviarviaModem1.Click;
        except
        end;



=======
  btnConsultar.Click;
>>>>>>> b116970a7d816cd33d8b0dea359e2a7645ac576a
End;


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
  End;
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

procedure TFNFSEletronica.PreencheInterfaces;
Var
  Ok : Boolean;
  Vendedor, Fantasia, CondicaoPagto,valorimposto,valorimposto1 : String;
  I, CodPis, CodOperacaoPis, CodIPI, CodCofins, CodOperacaoCofins : Integer;
  OrigemMaisSitTributaria : String;
  NI_ICMS_VALOR_BASE_CALCULO, NI_ICMS_VALOR, totaldesconto :Variant;
  CFOP : string;

Begin

  AcbrNFe.NotasFiscais.Clear;

  Vendedor                := '';
  Fantasia                := '';
  CondicaoPagto           := '';
  OrigemMaisSitTributaria := '';
  vDescontoDividido := 0;
  vFreteDividido    := 0;

  I              := 1;

  NI_ICMS_VALOR_BASE_CALCULO:=0;
  NI_ICMS_VALOR:=0;

  RxNotaFiscal.First;

  //Gauge.Min := 0;
  //Gauge.Max := RxNotaFiscal.RecordCount;
  //Gauge.Position := 0;

  While RxNotaFiscal.Eof = False Do
  Begin

    If  (RxNotaFiscalMARCADO.AsBoolean = true) And
        ((RxNotaFiscalSTATUS_NFE.AsInteger <> 5) Or
        (RxNotaFiscalSTATUS_NFE.AsInteger <> 6)) Then
    Begin
      With AcbrNFe.NotasFiscais.Add.NFe Do Begin
        Application.ProcessMessages;
        //Gauge.Position := Gauge.Position + 1;
        infNFe.ID := RxNotaFiscalNOTA_FISCAL.AsString;
        // **** Preenche Nota Fiscal ****
        NotaFiscalSaida(RxNotaFiscalNOTA_FISCAL.AsInteger, RxNotaFiscalCOD_CLIENTE.AsInteger);
        If QryCadNota.RecordCount > 0 Then Begin

          Ide.natOp     := QryCadNotaCFOP_DESCRICAO.AsString; // Dangelo Mudar para DescriÁ„o
          infNFe.ID     := IntToStr(QryCadNotaNOT_NUMERONFE.AsInteger);
          Ide.nNF       := QryCadNotaNOT_NUMERONFE.AsInteger;
          Ide.cNF       := QryCadNotaNOT_NUMERONFE.AsInteger;
          Ide.modelo    := 55;


          If QryCadNotaNOT_SERIE.AsString = '' Then Begin
             Application.MessageBox('Nota Fiscal N„o Possui SÈrie', 'A T E N « √ O', MB_OK + MB_ICONERROR);
             btnConsultar.SetFocus;
             Abort;
          End Else Begin
             Ide.serie := StrToInt(QryCadNotaNOT_SERIE.AsString);
          End;

          Ide.dEmi      := Date;//QryCadNotaNOT_DATAEMISSAO.AsDateTime;
          Ide.dSaiEnt   := Date;//QryCadNotaNOT_DATASAIDA.AsDateTime;
          Ide.tpAmb     := StrToTpAmb(Ok, Ambiente);

          Case FormaContigencia Of
          1 : Ide.tpEmis := teNormal;
          2 : Ide.tpEmis := teContingencia;
          3 : Ide.tpEmis := teSCAN;
          4 : Ide.tpEmis := teDPEC;
          5 : Ide.tpEmis := teFSDA;
          End;

          Ide.verProc := '1.0.0.0';
          CFOP := RemoveChar(QryCadNotaCFOP_COF.AsString);   
          CFOP := Copy(CFOP, 1, 4);

          // Tipo (0-Entrada / 1-SaÌda)
          If (StrToInt(CFOP) > 4999) Then Begin
             Ide.tpNF := tnSaida;
          End Else Begin
             Ide.tpNF := tnEntrada;
          End;

         // if QryCadNotaNOT_ENTRADASAIDA.AsInteger = 0 then begin
         // Ide.tpNF    := tnSaida;
         // End Else Begin
         // Ide.tpNF    := tnEntrada;
         // End;

          // CondiÁ„o de Pagamento
          If QryCadNotaNOT_FORMAPGMTNFE.AsString = 'Pagamento ‡ Prazo.' Then Begin
            Ide.indPag := ipPrazo;
          End Else If QryCadNotaNOT_FORMAPGMTNFE.AsString = 'Pagamento ‡ vista.' Then Begin
            Ide.indPag := ipVista;
          End Else Begin
            Ide.indPag := ipOutras;
          End;


          Ide.cUF    := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEUF.AsString));
          Ide.cMunFG := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString));

          // **** Preenche Empresa ****
          Emit.xNome   := CdsLookFiliaisFIL_NOME.AsString;
          Emit.CNPJCPF := CdsLookFiliaisFIL_CNPJ.AsString;
          Emit.xFant   := CdsLookFiliaisFIL_NOMEFANTASIA.AsString;
          Emit.CNAE    := CdsLookFiliaisFIL_CNAE.AsString;

        End;

        // Pesquisa o EndereÁo da Empresa
        Emit.EnderEmit.xLgr    := CdsLookFiliaisFIL_END_ENDERECO.AsString;
        Emit.IE                := CdsLookFiliaisFIL_INSCEST.AsString;
        Emit.EnderEmit.fone    := CdsLookFiliaisFIL_FONE.AsString;
        Emit.EnderEmit.CEP     := StrToInt(RemoveChar(CdsLookFiliaisFIL_END_CEP.AsString));

        if CdsLookFiliaisFIL_END_NUMERO.AsString <> '' then Begin
          Emit.EnderEmit.nro     := CdsLookFiliaisFIL_END_NUMERO.AsString;
        end Else Begin
          Emit.EnderEmit.nro     := '0';
        End;

        Emit.EnderEmit.xCpl    := CdsLookFiliaisFIL_END_COMPLEMENTO.AsString;
        Emit.EnderEmit.xBairro := CdsLookFiliaisFIL_END_BAIRRO.AsString;
        Emit.EnderEmit.cMun    := StrToInt(Trim(CdsLookFiliaisFIL_END_COD_IBGEMUNIC.AsString));
        Emit.EnderEmit.xMun    := Trim(CdsLookFiliaisFIL_END_CID_NOME.AsString);
        Emit.EnderEmit.UF      := Trim(CdsLookFiliaisFIL_END_CID_UF.AsString);
        //Emit.EnderEmit.cPais   := 1058;      // ARRUMAR VENDER PARA OUTRO PAIS
        //Emit.EnderEmit.xPais   := 'BRASIL';


        if QryCadNotaNFE_OPTANTESIMPLESNASCIONAL.AsString = '' then
        begin
        MessageBoxW(Handle,
          'TABELA A - CÛdigo de Regime Tribut·rio - CRT N„o pode estar vazio!'
          + #13#10 +
          'Escolha um codigo Na ConfiguraÁ„o da NF-e, Parte Contabel.' +
          #13#10, 'NOTAS EXPLICATIVAS:', MB_OK + MB_ICONWARNING);
        Abort;
        end;

        if QryCadNotaNFE_OPTANTESIMPLESNASCIONAL.AsString = '1' then
        Emit.CRT               :=  crtSimplesNacional ;
        if QryCadNotaNFE_OPTANTESIMPLESNASCIONAL.AsString = '2' then
        Emit.CRT               :=  crtSimplesExcessoReceita;
        if QryCadNotaNFE_OPTANTESIMPLESNASCIONAL.AsString = '3' then
        Emit.CRT               :=  crtRegimeNormal;



        // Preenche Cliente
        ValidaCliente;

        NotaFiscalSaida(RxNotaFiscalNOTA_FISCAL.AsInteger, RxNotaFiscalCOD_CLIENTE.AsInteger);

        // Cadastrais do Cliente
        Dest.xNome             := QryCadNotaCLI_RAZAO.AsString;
        Dest.CNPJCPF           := RemoveChar(QryCadNotaCLI_CPFCNPJ.AsString);

        // EndereÁo do Cliente
        Dest.EnderDest.CEP     := StrToInt(RemoveChar(QryCadNotaCLI_END_CEP.AsString));
        Dest.EnderDest.xLgr    := QryCadNotaCLI_END_ENDERECO.AsString;
        Dest.EnderDest.nro     := QryCadNotaCLI_END_NUMERO.AsString;
        Dest.EnderDest.xCpl    := QryCadNotaCLI_END_COMPLEMENTO.AsString;
        Dest.EnderDest.xBairro := QryCadNotaCLI_END_BAIRRO.AsString;

        If QryCadNotaCLI_END_COD_IBGEMUNIC.AsString = '' Then Begin

          Application.MessageBox('Cliente N„o Possui CÛdigo IBGE.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
          btnConsultar.SetFocus;
          Abort;
        End;

        Dest.EnderDest.cMun    := StrToInt(Trim(QryCadNotaCLI_END_COD_IBGEMUNIC.AsString));

        Dest.EnderDest.xMun    := QryCadNotaCLI_END_CID_NOME.AsString;
        Dest.EnderDest.UF      := QryCadNotaCLI_END_CID_UF.AsString;
        Dest.EnderDest.Fone    := QryCadNotaCLI_FONE.AsString;

        If Copy(QryCadNotaCLI_TIPO.AsString, 1, 1) = 'F' Then
        Begin
        if QryCadNotaCLI_RGINSC.AsString = '' then        
        Dest.IE := 'ISENTO'
        else
        Dest.IE := QryCadNotaCLI_RGINSC.AsString;
        End Else If Copy(QryCadNotaCLI_TIPO.AsString, 1, 1) = 'J' Then Begin
          Dest.IE := QryCadNotaCLI_RGINSC.AsString;
        End Else Begin
          Application.MessageBox('Cliente n„o Possui InscriÁ„o Estadual.', 'A T E N « √ O', MB_OK + MB_ICONERROR);
          btnConsultar.SetFocus;
          Abort;
        End;
        if(QryCadNotaCLI_PAIS.Text <> '')then
        begin
          Dest.EnderDest.xPais   := splitstr(QryCadNotaCLI_PAIS.Text,'-',0);//MUDAR PARA ACEITAR EXPORTA«√O
          Dest.EnderDest.cPais   := StrToInt(Trim(splitstr(QryCadNotaCLI_PAIS.Text,'-',1)));
        end;



        // Preenche Itens
         NotaFiscalSaida(RxNotaFiscalNOTA_FISCAL.AsInteger, RxNotaFiscalCOD_CLIENTE.AsInteger);

        If  QryCadNota.RecordCount > 0 Then Begin

           QryItens.Close;
           QryItens.SQL.Clear;
           QryItens.SQL.Add('SELECT * FROM NOTA_ITENS ');
           QryItens.SQL.Add('WHERE FIL_CODIGO =' + CdsLookFiliaisFIL_CODIGO.AsString);
           QryItens.SQL.Add('AND NOT_CODIGO ='+ QryCadNotaNOT_CODIGO.AsString );
           QryItens.CLOSE;
           QryItens.Open;

           Qrytotalitem.Close;
           Qrytotalitem.SQL.Clear;
           Qrytotalitem.SQL.Add('SELECT COUNT(N.ni_codigo) AS QTD  FROM NOTA_ITENS N');
           Qrytotalitem.SQL.Add('WHERE N.FIL_CODIGO =' + CdsLookFiliaisFIL_CODIGO.AsString);
           Qrytotalitem.SQL.Add('AND N.NOT_CODIGO ='+ QryCadNotaNOT_CODIGO.AsString );
           Qrytotalitem.CLOSE;
           Qrytotalitem.Open;

        QryTotalDesconto.Close;
        QryTotalDesconto.ParamByName( 'FIL_CODIGO' ).AsInteger := CdsLookFiliaisFIL_CODIGO.AsInteger;
        QryTotalDesconto.ParamByName( 'NOT_CODIGO' ).AsInteger := QryCadNotaNOT_CODIGO.AsInteger;
        QryTotalDesconto.open;




           If QryItens.RecordCount > 0 Then Begin

              QryItens.First;

              While QryItens.Eof = False Do
              Begin
                Application.ProcessMessages;
                qryLookTributacoes.Close;
                qryLookTributacoes.SQL.Clear;
                qryLookTributacoes.SQL.Add('SELECT * FROM TRIBUTACOES ');
                qryLookTributacoes.SQL.Add('WHERE EMP_CODIGO       =  ' + CdsLookFiliaisEMP_CODIGO.AsString);
                qryLookTributacoes.SQL.Add('AND TRIBUTACOES_CODIGO =  ' + QryItensTRIBUTACOES_CODIGO.AsString);
                qryLookTributacoes.Open;

                With Det.Add Do
                Begin

                   //Produtos e serviÁos
                   Prod.nItem := I;

                   Prod.cProd := QryItensPRO_CODIGO.AsString;

                    //CODIGO DE FABRICA
                    //CODIGO DO SISTEMA     

                   if QryParametrosNFEIMPRIMENFECODIGOFABRICA.AsString = '' then
                   Prod.cProd := QryItensPRO_CODIGO.AsString;

                   if QryParametrosNFEIMPRIMENFECODIGOFABRICA.AsString = 'CODIGO DO SISTEMA' then
                   Prod.cProd := QryItensPRO_CODIGO.AsString;

                   if QryParametrosNFEIMPRIMENFECODIGOFABRICA.AsString = 'CODIGO DE FABRICA' then begin
                   if QryItensPRO_CODFABRICANTE.AsString = ''  then
                   Prod.cProd := QryItensPRO_CODIGO.AsString
                   else
                   Prod.cProd := QryItensPRO_CODFABRICANTE.AsString;
                   end;



                   if not (qryLookTributacoesTRIBUTACOES_PIS_ST.AsString  = '') then
                   CodPis         := StrToInt(qryLookTributacoesTRIBUTACOES_PIS_ST.AsString);
                   if not (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString  = '') then
                   CodCofins      := StrToInt(qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString);

                  // OrigemMaisSitTributaria := qryLookTributacoesSTICMSA_CODIGO.AsString + qryLookTributacoesSTICMSB_CODIGO.AsString;

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

                   infAdProd      := valorimposto1;
                 //  infAd
                  

                   // arrumei para dividir o valor do frete para todas as mercadorias mudar depois...
                   vFreteDividido := Arredondar((QryCadNotaNOT_VALFRETE.AsFloat / QrytotalitemQTD.AsInteger),2);
                   Prod.vFrete    := vFreteDividido;
                   Prod.vSeg      := Arredondar(QryItensNI_VALORSEGURO.AsFloat,2);
                   // arrumei para dividir o valor do desconto para todas as mercadorias mudar depois...
                   // mudar novamente depois

                  // if QryCadNotaNOT_DESCONTO.AsCurrency > 0 then begin
                  // vDescontoDividido :=(QryCadNotaNOT_DESCONTO.AsCurrency / QrytotalitemQTD.AsInteger );
                   //Prod.vDesc     := vDescontoDividido;
                  // Prod.vDesc     := 0; //arrumado para parar de dar pau em um cliente
                  // end else begin
                  // Prod.vDesc     := 0;
                  // end;
                                            // verificar se tem que por em real ou em %


                  if QryCadNotaNOT_DESCONTO.AsCurrency > 0 then begin
                  //totaldesconto :=  RoundNum(QryItensNI_VALORUN.AsCurrency * (QryItensNI_VALOR_DESCONTO.AsCurrency / 100),2) ;
                 // Prod.vDesc     :=  totaldesconto                ;//     QryItensNI_VALOR_DESCONTO.AsCurrency;

                    Prod.vDesc     := QryItensNI_VALORREALDESCONTO.AsCurrency;
                  end;


                   // acrescimo
                   if QryCadNotaNOT_ACRECIMO.AsCurrency > 0 then begin
                   //vDescontoDividido :=(QryCadNotaNOT_DESCONTO.AsCurrency / QrytotalitemQTD.AsInteger );
                   //Prod.vDesc     := vDescontoDividido;
                   Prod.vOutro      := (QryCadNotaNOT_ACRECIMO.AsCurrency / QrytotalitemQTD.AsInteger ) ;
                   end else begin
                   Prod.vOutro      :=  0;
                   end;




                   // isso aqui e importante...


                   // NCM / GENERO
                   If QryItensPRO_CODIGO_NCM.AsString <> '' Then Begin
                     Prod.NCM := RemoveChar(QryItensPRO_CODIGO_NCM.AsString);
                   End Else Begin
                     Prod.NCM := '00';
                   End;

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
                  //Campos para venda de veÌculos novos

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
                          if  QryItenspro_anp.asinteger > 0 then begin
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
                   With Imposto Do Begin
                   With ICMS Do
                   Begin

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




                   End;

                     With IPI Do Begin
                        If QryItensNI_IPI_VALOR.AsFloat > 0 Then Begin
                          cEnq     := '999';
                          vIPI     := QryItensNI_IPI_VALOR.AsFloat;
                          vBC      := QryItensNI_IPI_VALOR_BASE_CALCULO.AsFloat;
                          pIPI     := QryItensNI_IPI_ALIQUOTA.AsFloat;
                          qUnid    := 0;
                          vUnid    := 0;
                          CNPJProd := '';
                        End;
                     End;

                     With PIS Do Begin
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

                        If qryLookTributacoesTRIBUTACOES_PIS_ST.AsString <> '' Then
                        Begin
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

                         End Else Begin
                             CST        := pis99;
                             vBC        := 0;
                             pPIS       := 0;
                             vPIS       := 0;
                           End;
                        End;
                     

                     With COFINS Do Begin
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
                          If (qryLookTributacoesTRIBUTACOES_COFINS_ST.AsString <> '') Then
                          Begin

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
                            End ELSE
                            BEGIN
                            CST             := cof99;
                            vBC             := 0;
                            pCOFINS         := 0;
                            vCOFINS         := 0;
                            end;
                        End;

                    // With II Do Begin
                        // II - Informar apenas quando o item for sujeito ao II
                    //    vBc      := 0;
                    //    vDespAdu := 0;
                    //    vII      := 0;
                    //    vIOF     := 0
                    // End;

                    { With ISSQN Do Begin
                        // ISS
                        vBc       := 0;
                        vAliq     := 0;
                        vISSQN    := 0;
                        cMunFG    := 0;
                        cListServ := 0
                     End;}
                   End;
                // Fim Imposto
                End;    
                Inc(I);
                QryItens.Next;
              End;
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

              InfAdic.infAdFisco := QryCadNotaNOT_OBSFISCO.AsString   ;
              InfAdic.infCpl     := valorimposto ;
           End;
        End;

        // ***** Transportadora *****
        With Transp Do Begin

          With Transporta Do Begin

            If QryCadNotaNOT_TRANSRAZAO.AsString <> '' Then Begin
              xNome   := QryCadNotaNOT_TRANSRAZAO.AsString;
              CNPJCPF := QryCadNotaNOT_TRANSCNPJCPF.AsString;
              xEnder  := QryCadNotaNOT_TRANSENDERECO.AsString;
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
              Begin // TAG de grupo Volumes - <vol> - OcorrÍncia 0-N

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

                {If QryCadNotaNOT_TRANSQTD.AsString = '' Then Begin
                  qVol := 0;
                End Else Begin
                  qVol := StrToInt(QryCadNotaNOT_TRANSQTD.AsString);
                End;

                If QryCadNotaNOT_VOLUMES.AsString = '' Then Begin
                  nVol := '';
                End Else Begin
                  nVol := QryCadNotaNOT_VOLUMES.AsString;
                End;

                marca := QryCadNotaNOT_TRANSMARCA.AsString;
                esp   := QryCadNotaNOT_TRANSESPECIE.AsString;

                If QryCadNotaNOT_TRANSPESOLIQUIDO.AsString = '' Then Begin
                  pesoL := 0;
                End Else Begin
                  pesoL := StrToFloat(QryCadNotaNOT_TRANSPESOLIQUIDO.AsString);
                End;

                If QryCadNotaNOT_TRANSPESOBRUTO.AsString = '' Then Begin
                  pesoB := 0;
                End Else Begin
                  pesoB := StrToFloat(QryCadNotaNOT_TRANSPESOBRUTO.AsString);
                End;  }
              End;
            End;
          End;

          If QryCadNotaFRETE.AsInteger = 0 Then
          Begin
             modFrete := mfContaEmitente;
          End Else
          If QryCadNotaFRETE.AsInteger = 1 Then
          Begin
             modFrete := mfContaDestinatario;
          End;
        End;

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

        {If CsdQryFinanceiro.RecordCount > 0    Then
        Begin
        CsdQryFinanceiro.First;
        if not (CsdQryFinanceiro.RecordCount > 4) then
        begin    
          While CsdQryFinanceiro.Eof = False Do Begin

            Application.ProcessMessages;

           With Cobr.Dup.Add Do Begin
           nDup      := CsdQryFinanceiroTIT_NFNUMERO.AsString + '-' + CsdQryFinanceiroTIT_ORDEM.AsString;
           dVenc     := CsdQryFinanceiroTIT_VENCIMENTO.AsDateTime ;
           vDup      := CsdQryFinanceiroTIT_VALOR.AsFloat         ;
           End;

          CsdQryFinanceiro.Next;
          End;
        End;
        End; }

        QryTotaisNfe.Close;
        QryTotaisNfe.Open;
        // **** Preenche Rodape ****  FIM
        // Dados Da Nota Fiscal
      (* ----------------------------------------------------------------------------------------------------------------- *)
      (* TAG de grupo de Valores Totais da NF-e - <total> - Ocorr√™ncia 1-1 *)
      (* ----------------------------------------------------------------------------------------------------------------- *)
      // TAG de grupo de Valores Totais referentes ao ICMS - <ICMSTot> - Ocorr√™ncia 1-1

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

      End;
    End;

  RxNotaFiscal.Next;
  End;
End;

procedure TFNFSEletronica.QryConsultaNotaCalcFields(DataSet: TDataSet);
Var
  Status, Chave : String;
Begin
  Chave  := '';
  Status := '';


      If GerarChave_(Chave,
                StrToInt(CodEstado),
                StrToInt(QryConsultaNotaNOT_NUMERONFE.AsString),
                55,
                StrToInt(QryConsultaNotaNOT_SERIE.AsString),
                StrToInt(QryConsultaNotaNOT_NUMERONFE.AsString),
                (FormaContigencia),
                (QryConsultaNotaNOT_DATAEMISSAO.AsDateTime),
                RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) Then
                Begin
                End;





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
Var
  Ok : Boolean;
Begin
  If (StrToInt(EStatus.Text) <> 3) Or (StrToInt(EStatus.Text) <> 5) Then Begin

    AcbrNFe.NotasFiscais.Clear;
    AcbrNFe.NotasFiscais.LoadFromFile(CamimhoNFe);
    If AcbrNFe.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC Then Begin
       AcbrNFe.WebServices.ConsultaDPEC.NFeChave := AcbrNFe.NotasFiscais.Items[0].NFe.infNFe.ID;
       AcbrNFe.WebServices.ConsultaDPEC.Executar;
       AcbrNFe.DANFE.ProtocoloNFe := AcbrNFe.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(AcbrNFe.WebServices.ConsultaDPEC.dhRegDPEC);
    End;
      AcbrNFe.DANFE.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
      AcbrNFe.DANFE.TipoDANFE := StrToTpImp(OK, IntToStr(rgImpressao.ItemIndex + 1));
      AcbrNFe.DANFE.NumCopias := 1;
      AcbrNFe.NotasFiscais.Imprimir;
      AcbrNFe.NotasFiscais.ImprimirPDF;
  End;

  btnConsultar.Click;
End;

procedure TFNFSEletronica.btnCancelamentoClick(Sender: TObject);
Begin

 Cancelamentodiretodenfe1.Click;

 { FNFSCancelamento := TFNFSCancelamento.Create(Self);

  Try
    Modulo.codigofilial :='0';
    Modulo.codigofilial := CdsLookFiliaisFIL_CODIGO.AsString;
    FNFSCancelamento.ShowModal;
  Finally
    FreeAndNil(FNFSCancelamento);
  End; }
End;

procedure TFNFSEletronica.btnImprimirClick(Sender: TObject);
var qtd,TOTAL: string;
begin
  qtd := IntToStr( RxNotaFiscal.RecordCount );
  TOTAL:= Label9.Caption;

  begin
    RVPRJ_NFE.SelectReport( 'relatorionfe', False );
    RVPRJ_NFE.SetParam( 'qtd', qtd );
    RVPRJ_NFE.SetParam( 'TOTAL', TOTAL );
    RVPRJ_NFE.Execute;
    RVPRJ_NFE.Close;
  end;
end;

procedure TFNFSEletronica.btnInutilizaClick(Sender: TObject);
Begin
  FormInutilizaNew := TFormInutilizaNew.Create(Application);

  Try
   // Modulo.codigofilial :='0';
  //  Modulo.codigofilial := CdsLookFiliaisFIL_CODIGO.AsString;
   // Modulo.serie  :=  CdsLookFiliais

    FormInutilizaNew.ShowModal
  Finally
     FormInutilizaNew.Release;
     FormInutilizaNew := Nil;
  End;
End;

procedure TFNFSEletronica.ConsultaStatusNFe1Click(Sender: TObject);
Var
  Status, Chave, _NotaFiscal, _Serie : String;
  _Data : TDateTime;
  _CodCliente, _Sequencia : Integer;
Begin

  Try

    Chave      := '';
    Status     := '';
    CamimhoNFe := '';
    _NotaFiscal := RxNotaFiscalNOTA_FISCAL.AsString;
    _Serie      := RxNotaFiscalSERIE.AsString;
    _Data       := RxNotaFiscalDATA_EMISSAO.AsDateTime;
    _CodCliente := RxNotaFiscalCOD_CLIENTE.AsInteger;
    CamimhoNFe  := RxNotaFiscalCAMINHO_XML.AsString;

    If GerarChave_(Chave,
                  StrToInt(CodEstado),
                  StrToInt(RxNotaFiscalNOTA_FISCAL.AsString),
                  55,
                  StrToInt(RxNotaFiscalSERIE.AsString),
                  StrToInt(RxNotaFiscalNOTA_FISCAL.AsString),
                  (FormaContigencia),
                  (RxNotaFiscalDATA_EMISSAO.AsDateTime),
                  RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) Then Begin
    End;
    PreencheInterfaces;
    AcbrNFe.NotasFiscais.GerarNFe;
    AcbrNFe.NotasFiscais.Assinar;

    AcbrNFe.NotasFiscais.Clear;
    AcbrNFe.NotasFiscais.LoadFromFile(QryParametrosNFENFE_CAMINHOXML.AsString + '\' + Chave + '-nfe.xml');
    AcbrNFe.Consultar;

    Status := IntToStr(AcbrNFe.WebServices.Consulta.cStat);
    If (AcbrNFe.WebServices.Consulta.cStat = 100) Or (AcbrNFe.WebServices.Consulta.cStat = 101) Then
    Begin
      If AcbrNFe.WebServices.Consulta.cStat = 101 Then Begin
         AtualizaStatusNotaFiscal(StrToInt(_NotaFiscal), '6');
      End Else Begin
         AtualizaStatusNotaFiscal(StrToInt(_NotaFiscal), '5');
      End;
    End;

  HistoricoNFe.Close;
  HistoricoNFe.SQL.Clear;
  HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
  HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
  HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + _NotaFiscal);
  HistoricoNFe.SQL.Add('AND   STATUS       = ' + IntToStr(AcbrNFe.WebServices.Consulta.cStat));
  CdsHistoricoNFe.close;
  CdsHistoricoNFe.Open;

  If CdsHistoricoNFe.RecordCount > 0 Then Begin

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

      If AcbrNFe.WebServices.Consulta.cStat = 101 Then Begin
         HistoricoNFe.SQL.Add('AND   STATUS       = ' + '6');
      End Else Begin
         HistoricoNFe.SQL.Add('AND   STATUS       = ' + '5');
      End;

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

  End Else Begin
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

      If CdsQryMaximo.RecordCount > 0 Then Begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
      End Else Begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger;
      End;

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
  End;

  If AcbrNFe.WebServices.Consulta.cStat = 100 Then Begin
    btnReemitirDanfe.Enabled := True;
    btnReemitirDanfe.Click;
  End Else Begin
    btnReemitirDanfe.Enabled := False;
  End;

  Finally

  End;

  If Status <> '' Then Begin
     Mensagens(StrToInt(Status));
  End;

  btnConsultar.Click;
End;

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


procedure TFNFSEletronica.FormCreate(Sender: TObject);
Var
  Ok : Boolean;

Begin
 // NFeDanfe := TACBrNFeDANFERave.Create(NFeDanfe);
  CdsLookFiliais.Close;
  CdsLookFiliais.Open;
  if cdsLookFiliais.RecordCount > 1 then
  begin
    cdsLookFiliais.First;
    Label4.Visible := True;
    DBLookupComboBox1.Visible := True;
  end
  else
  begin
    Label4.Visible := false;
    DBLookupComboBox1.Visible := false;
  end ;

  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF          ');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
  QryParametrosNFE.Open;

  NFeW := TNFeW.Create(NFe);

  Try
    {$IFDEF ACBrNFeOpenSSL}
    {$ELSE}
    {$ENDIF}

    If IMPRIMENFERAVE1 <> Nil Then
    Begin
      IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, IntToStr(rgImpressao.ItemIndex + 1));
      IMPRIMENFERAVE1.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
      IMPRIMENFERAVE1.NumCopias := 1;
    End;
  Finally
  End;
End;

procedure TFNFSEletronica.ABREDADOS;
Var
  Ok : Boolean;
begin
  NFeW.free;
  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
  QryParametrosNFE.Open;
  NFeW := TNFeW.Create(NFe);
  Try
    {$IFDEF ACBrNFeOpenSSL}
    {$ELSE}
    {$ENDIF}
    If IMPRIMENFERAVE1 <> Nil Then
    Begin
      IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, IntToStr(rgImpressao.ItemIndex + 1));
      IMPRIMENFERAVE1.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
      IMPRIMENFERAVE1.NumCopias := 1;
    End;

  Finally
  End;


 // CdsLookFiliais.Close;
 // CdsLookFiliais.SQL.Clear;
 // CdsLookFiliais.SQL.Add('SELECT * FROM FILIAIS');
 // CdsLookFiliais.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
 // CdsLookFiliais.ParamByName('FIL_CODIGO').AsInteger :=cdslookfiliaisfil_codigo.AsInteger ;//StrToInt(FPrincipal.Edit1.Text);
 // CdsLookFiliais.Open;

  CbTipoOperacao.ItemIndex := 7;

  fContingencia                                  := Copy(QryParametrosNFENFE_GERALFORMADEEMISSAO.AsString, 1, 1);

  AcbrNFe.Configuracoes.Certificados.NumeroSerie := QryParametrosNFENFE_CERTIFICADONUMEROSERIE.AsString;

  AcbrNFe.Configuracoes.Geral.Salvar             := True;
  AcbrNFe.Configuracoes.Geral.PathSalvar         := QryParametrosNFENFE_CAMINHOXML.AsString;
  AcbrNFe.Configuracoes.Geral.FormaEmissao       := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));

  FormaContigencia := StrToInt(Copy(QryParametrosNFENFE_GERALFORMADEEMISSAO.AsString, 1, 1));

  Case FormaContigencia Of
    1 : rgFormaEmissao.ItemIndex := 0;
    2 : rgFormaEmissao.ItemIndex := 1;
    3 : rgFormaEmissao.ItemIndex := 2;
    4 : rgFormaEmissao.ItemIndex := 3;
    5 : rgFormaEmissao.ItemIndex := 4;
  End;

  If Copy(QryParametrosNFENFE_GERALDANFERETRATO.AsString, 1, 1) = '1' Then
  Begin
    rgImpressao.ItemIndex := 0;
  End
  Else
  Begin
    rgImpressao.ItemIndex := 1;
  End;

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
  AcbrNFe.Configuracoes.WebServices.Visualizar   := ckVisualizar.Checked;

  IMPRIMENFERAVE1.Site      := CdsLookFiliaisFIL_HOMEPAGE.AsString;

  IMPRIMENFERAVE1.Email     := CdsLookFiliaisFIL_EMAIL.AsString;
  IMPRIMENFERAVE1.Fax       := CdsLookFiliaisFIL_FAX.AsString;
  IMPRIMENFERAVE1.PathPDF   := QryParametrosNFENEF_CAMINHOPDF.AsString;
  IMPRIMENFERAVE1.Logo      := QryParametrosNFENFE_GERALCAMINHOLOGOMARCA.AsString;
  IMPRIMENFERAVE1.TipoDANFE := StrToTpImp(OK, IntToStr(rgImpressao.ItemIndex + 1));
  IMPRIMENFERAVE1.NumCopias := 1;
  IMPRIMENFERAVE1.Usuario   := '';

  IMPRIMENFERAVE1.RavFile := QryParametrosNFENFE_CAMINHORAVE.AsString;

  If Ambiente = '1' Then
  Begin
     StBar.Panels[1].Text := 'Ambiente: ProduÁ„o';
  End
  Else
  If Ambiente = '2' Then
  Begin
    StBar.Panels[1].Text := 'Ambiente: HomologaÁ„o';
  End
  else
  Begin
    Application.MessageBox('Tipo de Ambiente Inv·lido.', 'A T E N « √ O', MB_OK + MB_ICONERROR);
  End;

//  StBar.Panels[2].Text    := 'Validade Certificado CNPJ-e: ' + QryParametrosNFENFE_WEBSERVICEAMBIENTEDATA_VALIDADE.AsString;

  CNPJ_EMPRESA :=  CdsLookFiliaisFIL_CNPJ.AsString;

  //CbTipoConsultaChange(Sender);

  EDataInicial.Date := Date;// - 30;
  ComboBox2.ItemIndex := 7;
  btnConsultar.Click;
end;

procedure TFNFSEletronica.AcbrNFeStatusChange(Sender: TObject);
Begin
  Case AcbrNFe.Status Of
    stIdle :
    Begin
      If ( FStatus <> nil ) Then
        FStatus.Hide;
    End;

    stNFeStatusServico :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Verificando Status do ServiÁo...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNFeRecepcao :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Dados da NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNfeRetRecepcao :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Recebendo Dados da NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNfeConsulta :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNfeCancelamento :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Cancelamento de NFe...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNfeInutilizacao :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Pedido de InutilizaÁ„o...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNFeRecibo :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNFeCadastro :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando Cadastro...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNFeEnvDPEC :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando DPEC...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNFeConsultaDPEC :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Consultando DPEC...';
      FStatus.Show;
      FStatus.BringToFront;
    End;

    stNFeEmail :
    Begin
      If ( FStatus = nil ) Then
      FStatus                   := TFStatus.Create(Application);
      FStatus.lblStatus.Caption := 'Enviando Email...';
      FStatus.Show;
      FStatus.BringToFront;
    End;
  End;

  Application.ProcessMessages;
End;

procedure TFNFSEletronica.Cancelamentodiretodenfe1Click(Sender: TObject);
var
 Chave, Protocolo, Justificativa, Status1, cnpj, stats, Modo : string;
 Ok : Boolean;
 Status, _Sequencia, Z, I, sNotaFiscal, x, y, NumeroLote, CodigoStatus : Integer;
 NumeroRecibo, sDataHora, sSerie, DataHoraEvento, NumeroProtocolo, XMLCancelamento, MotivoStatus : String;
 arquivos_backup : array[0..1] of string;
Begin
  y:=0;
  if RxNotaFiscal.IsEmpty then
  begin
    Application.MessageBox('N„o existe NF-e No Grid!' + #13#10 +
      'Realize primeiramente uma pesquisa!', 'ATEN«√O!', MB_OK + MB_ICONSTOP);
    Abort;
  end;
 { RxNotaFiscal.First;
  for x := 0 to Pred( RxNotaFiscal.RecordCount ) do
  begin
  if RxNotaFiscalMARCADO.AsBoolean = True then
  y  :=  y+1;
  RxNotaFiscal.Next;
  end;
  if y < 1 then
  begin
  Application.MessageBox('N„o existe NF-e Selecionada No Grid!' + #13#10 +
    'Clique com o mouse sobre a NF-e, e tente novamente!', 'ATEN«√O!', MB_OK
    + MB_ICONSTOP);
  DBGridConsulta.SetFocus;
  Abort;
  end;  }

  if RxNotaFiscalSTATUS_NFE.AsString = '6' then
  begin
   MessageBoxW(Handle, 'Essa NF-e j· foi cancelada!' + #13#10 +
      'Vamos consulta-la novamente!', 'NOTAS EXPLICATIVAS:', MB_OK +
      MB_ICONINFORMATION);
    //ConsultaStatusNFe1.Click;
    Abort;
  end;

  if RxNotaFiscalMARCADO.AsBoolean = False then
  begin
    MessageBoxW(Handle, 'Escolha uma NF-e' + #13#10 +
    '', 'NOTAS EXPLICATIVAS:', MB_OK +
    MB_ICONINFORMATION);
    Abort;
  end;

  HistoricoNFe.Close;
  HistoricoNFe.SQL.Clear;
  HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE');
  HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + cdslookfiliaisfil_codigo.AsString);
  HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + IntToStr(RxNotaFiscalNOTA_FISCAL.AsInteger));
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
                                  'Nota Fiscal...: ' + (Trim(RxNotaFiscalNOTA_FISCAL.AsString))  + #13#10 +
                                  'Data Emiss„o..: ' + (Trim(CdsHistoricoNFeDATA_EMISSAO.AsString)) + #13#10 +
                                  '....................................................................................' + #13#10 +
                                  'Raz„o Social..: ' + (Trim(RxNotaFiscalRAZAO_SOCIAL.AsString))                                   + #13#10 +
                                  'C.N.P.J/C.P.F.: ' + (Trim(RxNotaFiscalCNPJCPF.AsString))), 'A T E N « √ O', MB_YESNO + MB_ICONQUESTION);

    If not (Z = MrYes) Then
    Begin
      Abort;
    End;
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
     //If CdsHistoricoNFe.RecordCount = 0 Then Begin
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

      If CdsQryMaximo.RecordCount > 0 Then
      Begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger + 1;
      End
      Else
      Begin
        _Sequencia := CdsQryMaximoTOTAL.AsInteger;
      End;

      HistoricoNFe.ParamByName('STATUS').Value         := Status;
      HistoricoNFe.ParamByName('SEQUENCIA').AsInteger  :=_Sequencia;
      HistoricoNFe.ParamByName('COD_EMPRESA').Value    := CdsLookFiliaisEMP_CODIGO.AsInteger;
      HistoricoNFe.ParamByName('NOTA_FISCAL').Value    := RxNotaFiscalNOTA_FISCAL.AsInteger;
      HistoricoNFe.ParamByName('SERIE').Value          := RxNotaFiscalSERIE.AsInteger;
      HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate  := Date;
      HistoricoNFe.ParamByName('CHAVE').Value          := AcbrNFe.WebServices.Retorno.ChaveNFe;
      HistoricoNFe.ParamByName('AMBIENTE').Value       := Copy(QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString, 1, 1);
      HistoricoNFe.ParamByName('MODELO').Value         := '55';
      HistoricoNFe.ParamByName('PROTOCOLO').Value      := NumeroProtocolo;
      HistoricoNFe.ParamByName('COD_CLIENTE').Value    := 0;
      HistoricoNFe.ParamByName('CAMINHO').Value        := RxNotaFiscalCAMINHO_XML.AsString;//QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Retorno.ChaveNFe + '-nfe.xml';
      HistoricoNFe.ParamByName('FIL_CODIGO').Value     := CdsLookFiliaisFIL_CODIGO.AsInteger;
      HistoricoNFe.ParamByName('RECIBO').Value         := AcbrNFe.WebServices.Retorno.Recibo;
      HistoricoNFe.ParamByName('FIL_CNPJ').Value       := CdsLookFiliaisFIL_CNPJ.AsString;
      HistoricoNFe.ExecSQL;
      Application.MessageBox(PChar('Cancelamento homologado: ' + #13#10 +
                                         '                               ' + #13#10 +
                                         'Status.: ' + IntToStr(Status) + #13#10 +
                                         'Motivo.: ' + FNFSEletronica.AcbrNFe.WebServices.Cancelamento.xMotivo), 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      AtualizaStatusNotaFiscal(RxNotaFiscalNOTA_FISCAL.AsInteger, '6');
      try
        arquivos_backup[0] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
        arquivos_backup[1] :=   QryParametrosNFENFE_CAMINHOXML.AsString + AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
        stats :=  IntToStr(Status);
        cnpj := CdsLookFiliaisFIL_CNPJ.AsString;
        Modo := QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString;
        EnviaBackupFtp(cnpj,stats,arquivos_backup,Modo);
      except
      end;

    End
    else
    begin
      Application.MessageBox(PChar('N„o È Permitido Cancelar NF-e: ' + #13#10 +
                                         '                               ' + #13#10 +
                                         'Status.: ' + IntToStr(Status) + #13#10 +
                                         'Motivo.: ' + AcbrNFe.WebServices.Retorno.xMotivo), 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Mensagens(Status);
    end;
    Mensagens(Status);
  end
  else
  begin
  end;
end;

procedure TFNFSEletronica.CbTipoConsultaChange(Sender: TObject);
begin
  Case CbTipoConsulta.ItemIndex Of
    0 : Begin
          lblTipo.Font.Color   := clBlack;
          lblTipo.Caption      := 'Data Emiss„o';
          lblDtFinal.Visible   := True;
          EDataInicial.Visible := True;
          EDataFinal.Visible   := True;
          EDataInicial.Date    := Date;
          EDataFinal.Date      := Date;
          EDataInicial.SetFocus;
        End;
  End;
End;

procedure TFNFSEletronica.CdsLookFiliaisAfterScroll(DataSet: TDataSet);
begin
  //ABREDADOS;
end;

procedure TFNFSEletronica.RxNotaFiscal1CalcFields(DataSet: TDataSet);
Var
Status, Chave : String;
Begin
  Chave  := '';
  Status := '';

    If GerarChave_(Chave,
                  StrToInt(CodEstado),
                  StrToInt(RxNotaFiscalNOTA_FISCAL.AsString),
                  55,
                  StrToInt(RxNotaFiscalSERIE.AsString),
                  StrToInt(RxNotaFiscalNOTA_FISCAL.AsString),
                  (FormaContigencia),
                  (RxNotaFiscalDATA_EMISSAO.AsDateTime),
                  RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) Then Begin
    End;

   // RxNotaFiscalCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
   // RxNotaFiscalCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';

  QryConsultaNotaCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
  QryConsultaNotaCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';

end;

procedure TFNFSEletronica.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var R: TRect;
begin
  (*DBGrid zebrado*)
  if not odd( RxNotaFiscal.RecNo ) then // se for Ìmpar
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
        DBGridConsulta.Canvas.Brush.Color := $00FFEFDF; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o


      end;

       if RxNotaFiscalSTATUS_NFE.AsString = '6' then
 begin
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
      DBGridConsulta.Font.Color := clWindow;
        DBGridConsulta.Canvas.Brush.Color := clRed; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
      end;
 end;

 if RxNotaFiscalSTATUS_NFE.AsString = '5' then
 begin
    if not ( gdSelected in State ) then // se a cÈlula n„o est· selecionada
      begin
      DBGridConsulta.Font.Color := clWindow;
        DBGridConsulta.Canvas.Brush.Color := clBlue; // define uma cor de fundo
        DBGridConsulta.Canvas.FillRect( Rect ); // pinta a cÈlula
        DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
      end;
 end;

  if RxNotaFiscalSTATUS_NFE.AsString = '9' then
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
 { if Column.Field = RxNotaFiscalCLI_RAZAO then
    begin
      DBGridConsulta.Canvas.Font.Style :=
        DBGridConsulta.Canvas.Font.Style + [ fsBold ];
      DBGridConsulta.Canvas.Font.Color := clRed;
      DBGridConsulta.DefaultDrawDataCell( rect, Column.Field, State ); // pinta o texto padr„o
    end;   }
  (*pinta checkbox*)

  if Column.Field = RxNotaFiscalMARCADO then
    begin
      DBGridConsulta.Canvas.FillRect( Rect );
      ImageList2.Draw( DBGridConsulta.Canvas, Rect.Left + 10, Rect.Top + 1, 0 );

      if RxNotaFiscalMARCADO.AsBoolean then
        ImageList2.Draw( DBGridConsulta.Canvas, Rect.Left + 10, Rect.Top + 1, 2 )
      else
        ImageList2.Draw( DBGridConsulta.Canvas, Rect.Left + 10, Rect.Top + 1, 1 );


    end;



end;

procedure TFNFSEletronica.DBLookupComboBox1Click(Sender: TObject);
begin
ABREDADOS;
end;

procedure TFNFSEletronica.EnviarviaModem1Click(Sender: TObject);
Var
  Host, Porta,para : String;
  CC: Tstrings;
Begin
  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF          ');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := cdslookfiliaisfil_codigo.AsInteger;
  QryParametrosNFE.Open;


  QryCliEmail.Close;
  QryCliEmail.SQL.Clear;
  QryCliEmail.SQL.Add('SELECT * FROM CLIENTES');
  QryCliEmail.SQL.Add('WHERE CLI_CODIGO =' + RxNotaFiscalCOD_CLIENTE.AsString);
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
    QryVazia.SQL.Add('WHERE CLI_CODIGO = '+ RxNotaFiscalCOD_CLIENTE.AsString);
    QryVazia.ParamByName('STATUS').Value :=para;
    QryVazia.ExecSQL;

    EMailUSUARIO  := para;     

  end;


  EMailSMTP     := LowerCase(QryParametrosNFENFE_EMAILSMTP.AsString);
  EMailUSUARIO  := LowerCase(QryParametrosNFENFE_EMAILUSUARIO.AsString);
  EMailSENHA    := LowerCase(QryParametrosNFENFE_EMAILSENHA.AsString);
  EMailASSUNTO  := QryParametrosNFENFE_EMAILASSUNTO.AsString;
  EMailMENSAGEM := QryParametrosNFENFE_EMAILMENSAGEM.AsString;

  {If QryParametrosNFENFE_EMAILPORTA.AsString = '' Then Begin
     Application.MessageBox('Porta do EMail Invalida.', 'A T E N « √ O', MB_OK + MB_ICONERROR);
     btnConsultar.SetFocus;
     Abort;
  End Else Begin
     EMailPorta := StrToInt(QryParametrosNFENFE_EMAILPORTA.AsString);
  End;    }

    If QryParametrosNFENFE_EMAILUSUARIO.AsString = '' Then Begin
    if not(InputQuery('Email invalido', 'Digite o Email da Sua empresa que sera usado para NFe', para)) then
    exit;


    QryVazia.Close;
    QryVazia.SQL.Clear;
    QryVazia.SQL.Add('update NFECONF SET NFECONF.NFE_EMAILUSUARIO = :STATUS       ');
    QryVazia.SQL.Add('WHERE FIL_CODIGO = '+ cdslookfiliaisfil_codigo.AsString ) ;
    QryVazia.ParamByName('STATUS').Value :=para;

    QryVazia.ExecSQL;

    EMailUSUARIO  := para;


    End;


  EMailSeguro   := StrToInt(QryParametrosNFENFE_EMAILSMTPSEGURO.AsString);

  If QryParametrosNFENFE_EMAILSMTPSEGURO.AsInteger = 0 Then Begin
    cbEmailSSL.Checked := False;
  End;
  IF QryParametrosNFENFE_EMAILSMTPSEGURO.AsInteger = 1 Then Begin
    cbEmailSSL.Checked := True; 
  End;

  If (StrToInt(EStatus.Text) = 5) Then Begin

    If EEMail.Text <> '' Then Begin
      // ver essa quest„o porque n„o eta emitindo sem o caminho toda vez que imprime
      If Not FileExists(CamimhoNFe) Then Begin
        Application.MessageBox('Arquivo Inexistente.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
        btnConsultar.SetFocus;
        Abort;
      End;

      mmEmailMsg.Clear;

      If CamimhoNFe <> '' Then Begin
        mmEmailMsg.Lines.Add('');


        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'NFe Emitida por: '+ CdsLookFiliaisFIL_NOME.AsString + '<br><br>'  ) ;

        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'Segue anexo o Danfe referente a Nota Fiscal EletrÙnica N. '+ RxNotaFiscalNOTA_FISCAL.AsString +' e o arquivo XML correspondente.' + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'DATA       : '+ DateToStr(Date) + ' Hora: ' + TimeToStr(Time) + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'CHAVE      : '+ RxNotaFiscalCHAVE.AsString + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'NOME/RAZ√O : '+ RxNotaFiscalRAZAO_SOCIAL.AsString + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'CNPJ/CPF   : '+  RxNotaFiscalCNPJCPF.AsString + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'S…RIE      : '+ RxNotaFiscalSERIE.AsString + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'VALOR TOTAL NFe : '+ RxNotaFiscalVALOR_NOTA.AsString + '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'EMAIL      : '+ EEMail.Text + '<br><br><br><br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'SISTEMA EMISSOR DE NFe, DotCompany Ti, www.dotcompany.com.br (62)3588-6040'+ '<br>'  ) ;
        mmEmailMsg.Lines.Add(EMailMENSAGEM + 'DotCompany - Sua empresa em suas m„os!'+ '<br>'  ) ;

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
                                                , '(Sistema emissor de NFe DotCompany) Segue anexo PDF/XML Ped. Numero: ' + RxNotaFiscalNOTA_FISCAL.AsString
                                                , mmEmailMsg.Lines
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

      End
      Else Begin
         Application.MessageBox('Arquivo n„o Localizado.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
         Abort;
      End;
    End
    Else Begin
      Application.MessageBox('Cliente n„o Possui E-Mail.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
      Abort;
    End;
  End
  Else Begin
    Application.MessageBox('Para Enviar E-Mail do Arquivo a Nota Fiscal EletrÙnica Deve Ser Validada.', 'A T E N « √ O', MB_OK + MB_ICONQUESTION);
    DBGridConsulta.SetFocus;
    Abort;
  End;

    Application.MessageBox('E-mail enviado!', 'A T E N « √ O !', MB_OK +
    MB_ICONINFORMATION);

end;

procedure TFNFSEletronica.DBGridConsultaCellClick(Column: TColumn);
begin
  If RxNotaFiscal.RecordCount > 0 Then Begin

    CamimhoNFe := RxNotaFiscalCAMINHO_XML.AsString;

    If (StrToInt(ENota.Text) = 0) Then Begin
      btnReemitirDanfe.Enabled := False;
    End Else If (StrToInt(EStatus.Text) = 2) Then Begin
      btnReemitirDanfe.Enabled := False;
    End Else If (StrToInt(EStatus.Text) = 9) Then Begin
      btnReemitirDanfe.Enabled := False;
    End Else If (StrToInt(EStatus.Text) = 6) Then Begin
      btnReemitirDanfe.Enabled := False;
    End Else Begin
      btnReemitirDanfe.Enabled := True;
    End;
  End;

  lblStatusValidar.Caption := '';

    if Column.Field = RxNotaFiscalMARCADO then
    begin
      RxNotaFiscal.Edit;
      RxNotaFiscalMARCADO.AsBoolean := not  RxNotaFiscalMARCADO.AsBoolean;
      RxNotaFiscal.Post
    end;
end;

procedure TFNFSEletronica.DBGridConsultaColEnter(Sender: TObject);
begin
  if DBGridConsulta.SelectedField = RxNotaFiscalMARCADO then
    DBGridConsulta.Options := DBGridConsulta.Options - [ dgEditing ]
  else
    DBGridConsulta.Options := DBGridConsulta.Options + [ dgEditing ];
end;

procedure TFNFSEletronica.DBGridConsultaDblClick(Sender: TObject);
begin
  RxNotaFiscal.Edit;

  If RxNotaFiscalMARCADO.AsString = 'N' Then Begin
    RxNotaFiscalMARCADO.AsString := '';
    ETotalNota.AsInteger         := ETotalNota.AsInteger - 1;
  End Else Begin
    RxNotaFiscalMARCADO.AsString := 'N';
    ETotalNota.AsInteger         := ETotalNota.AsInteger + 1;
  End;

  RxNotaFiscal.Post;
end;

procedure TFNFSEletronica.QryTotaisNfeBeforeOpen(DataSet: TDataSet);
begin
  QryTotaisNfe.Params.ParamByName('FIL_CODIGO').AsInteger :=  QryCadNotaFIL_CODIGO.AsInteger;
  QryTotaisNfe.Params.ParamByName('NOT_CODIGO').AsInteger :=  QryCadNotaNOT_CODIGO.AsInteger;
end;
procedure TFNFSEletronica.FDSAFASFASDCalcFields(DataSet: TDataSet);
Var
  Status, Chave : String;
Begin
  Chave  := '';
  Status := '';

    If GerarChave_(Chave,
                  StrToInt(CodEstado),
                  StrToInt(RxNotaFiscalNOTA_FISCAL.AsString),
                  55,
                  StrToInt(RxNotaFiscalSERIE.AsString),
                  StrToInt(RxNotaFiscalNOTA_FISCAL.AsString),
                  (FormaContigencia),
                  (RxNotaFiscalDATA_EMISSAO.AsDateTime),
                  RemoveChar(CdsLookFiliaisFIL_CNPJ.AsString)) Then Begin
    End;


  //RxNotaFiscalCAMINHO_XML.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.xml';
  //RxNotaFiscalCAMINHO_PDF.AsString := QryParametrosNFENFE_CAMINHOXML.AsString + Chave + '-nfe.pdf';




      { If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 1 Then Begin
         RxNotaFiscalSTATUS.AsString := 'ValidaÁ„o Normal Sem Retorno';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 2 Then Begin
         RxNotaFiscalSTATUS.AsString := 'Erro na ValidaÁ„o do Arquivo';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 3 Then Begin
         RxNotaFiscalSTATUS.AsString := 'ValidaÁ„o ContingÍncia Sem Retorno';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 4 Then Begin
         RxNotaFiscalSTATUS.AsString := 'ValidaÁ„o SCAN Sem Retorno';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 5 Then Begin
         RxNotaFiscalSTATUS.AsString := 'NF-e Validada';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 6 Then Begin
         RxNotaFiscalSTATUS.AsString := 'NF-e Cancelada';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 7 Then Begin
         RxNotaFiscalSTATUS.AsString := 'NF-e Inutilizada';
       End Else If RxNotaFiscalNOT_STATUS_NFE.AsInteger = 9 Then Begin
         RxNotaFiscalSTATUS.AsString := 'N„o Validada';
       End;  }
end;

procedure TFNFSEletronica.btnutilitariosClick(Sender: TObject);
var F, T: TPoint;

begin
  inherited;

  F.X := btnutilitarios.Left;
  F.Y := btnutilitarios.Top + btnutilitarios.Height + ( Width - ClientWidth ) + 0;

  T := ClientToScreen( F );
  PopupMenu3.Popup( T.X, T.Y );

end;


End.
