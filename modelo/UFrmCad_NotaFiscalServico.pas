unit UFrmCad_NotaFiscalServico;

interface

uses
Windows,
  ACBrDevice,
  ACBrECF,  ACBrBase, ACBrECFClass, ACBrECFBematech,
  Messages, StrUtils, Math,
  SysUtils, Variants,
  Classes,  Graphics,
  Controls, Forms,
  Dialogs,  UFrmBase_Cadastro,
  FMTBcd,   Provider,
  SqlExpr,  DB,
  DBClient, Buttons,
  ComCtrls, Grids,
  DBGrids,  StdCtrls,
  ExtCtrls, ImgList,
  ToolWin,  JvGradientCaption,
  DBCtrls,  Mask,
  AppEvnts, JvComponent,
  uclsCupomFiscal, JvBalloonHint,
  Menus, comobj, JvExMask, JvToolEdit, JvDBControls, JvExControls,
  JvComponentBase, JvErrorIndicator, JvGradientHeaderPanel, OleCtrls, SHDocVw,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uframeCliente,
  ACBrNFe, pcnConversao, ACBrNFeDANFEClass, ACBrNFeDANFERave, ACBrUtil,ShellAPI,
  JvExStdCtrls, JvRichEdit, JvDBRichEdit,
{$IFNDEF VER130}
  {$ENDIF}
  pcnAuxiliar,  pcnNFe, pcnNFeW, JvBaseEdits, EasyTEFVespague,
  TiposTEFVespague, JvgLabel;

type
  TFrmCad_NotaFiscalServico = class(TFrmBase_Cadastro)
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    cdsItensFIL_CODIGO: TIntegerField;
    cdsItensNOT_CODIGO: TIntegerField;
    cdsItensNI_CODIGO: TIntegerField;
    cdsItensPRO_CODIGO: TStringField;
    cdsItensNI_QTD: TFloatField;
    dspItens: TDataSetProvider;
    QryItens: TSQLQuery;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    DateField3: TDateField;
    FloatField2: TFloatField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    StringField3: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField5: TFloatField;
    IntegerField11: TIntegerField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    StringField4: TStringField;
    IntegerField14: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField15: TIntegerField;
    DataSource1: TDataSource;
    QryOSPRONTA: TSQLQuery;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    DateField4: TDateField;
    DateField5: TDateField;
    BlobField1: TBlobField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    StringField8: TStringField;
    BlobField2: TBlobField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    IntegerField23: TIntegerField;
    StringField9: TStringField;
    DateField6: TDateField;
    IntegerField24: TIntegerField;
    TimeField3: TTimeField;
    StringField10: TStringField;
    BlobField3: TBlobField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    BlobField4: TBlobField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateField7: TDateField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    BlobField5: TBlobField;
    BlobField6: TBlobField;
    StringField18: TStringField;
    StringField19: TStringField;
    QRYIT: TSQLQuery;
    QRYITIT_HSTRABALHO: TFloatField;
    QRYITIT_CODIGO: TIntegerField;
    QRYITTEC_CODIGO: TIntegerField;
    QRYITIT_DESCSERVICO: TStringField;
    QRYITIT_VAL_SERVICO: TFloatField;
    QRYITIT_VAL_COM: TFloatField;
    QRYITIT_GARANTIA: TDateField;
    QRYITIT_OBS: TBlobField;
    QRYITOS_CODIGO: TIntegerField;
    QRYITSER_CODIGO: TIntegerField;
    QRYITTEC_NOME: TStringField;
    QRYITFIL_CODIGO: TIntegerField;
    qryOS: TSQLQuery;
    qryOSOS_CODIGO: TIntegerField;
    qryOSCLI_CODIGO: TIntegerField;
    qryOSFIL_CODIGO: TIntegerField;
    qryOSCR_CODIGO: TIntegerField;
    qryOSOS_NUM_OS: TIntegerField;
    qryOSOS_DATACAD: TDateField;
    qryOSOS_DATAEFETIVACAO: TDateField;
    qryOSOS_OBS_DEFEITOREC: TBlobField;
    qryOSOS_VAL_TOTAL: TFloatField;
    qryOSOS_VAL_SERVICO: TFloatField;
    qryOSOS_VAL_DESC: TFloatField;
    qryOSOS_VAL_OUTROS: TFloatField;
    qryOSOS_VAL_FRETE: TFloatField;
    qryOSOS_VAL_PRODUTOS: TFloatField;
    qryOSIT_CODIGO: TIntegerField;
    qryOSPED_CODIGO: TIntegerField;
    qryOSOS_STATUS: TStringField;
    qryOSOS_OBS: TBlobField;
    qryOSOS_HORAINICIO: TTimeField;
    qryOSOS_HORAEFETIVACAO: TTimeField;
    qryOSLD_CODIGO: TIntegerField;
    qryOSOS_KM: TStringField;
    qryOSOS_DATAENTREGA: TDateField;
    qryOSOS_VER_ANDAMENTO: TIntegerField;
    qryOSOS_HS_PREV_ENTREGA: TTimeField;
    qryOSCR_PLACA: TStringField;
    qryOSOS_OBS_ACESSORIO_OS: TBlobField;
    qryOSMAR_CODIGO: TIntegerField;
    qryOSMOD_CODIGO: TIntegerField;
    qryOSCOR_CODIGO: TIntegerField;
    qryOSOS_NUMEROTELEFONE: TStringField;
    qryOSOS_NUMEROSERIAL: TStringField;
    qryOSMARCA: TStringField;
    qryOSMODELO: TStringField;
    qryOSCOR: TStringField;
    qryOSOS_LAUDO: TBlobField;
    qryOSEQ_CODIGO: TIntegerField;
    qryOSCLI_CODIGO_GARANTIA: TIntegerField;
    qryOSOS_NFABRICANTE: TStringField;
    qryOSOS_NOTAFISCAL_NUMERO: TStringField;
    qryOSOS_DATANOTAFISCAL: TDateField;
    qryOSRV_CODIGO: TIntegerField;
    qryOSOS_GARANTIA: TIntegerField;
    qryOSOS_LAUDO_TEC: TBlobField;
    qryOSOS_LAUDO_ETC: TBlobField;
    qryOSOS_STATUS_SERV: TStringField;
    qryOSOS_TIPOSERVICO: TStringField;
    qryosItensGroup: TSQLQuery;
    qryosItensGroupAGR_NOME: TStringField;
    qryosItensGroupAGR_DESCRICAO: TStringField;
    qryosItensGroupARG_CODIGO: TStringField;
    qryosItensGroupSUBTOTAL: TFloatField;
    qryosItensGroupQTDPECAS: TFloatField;
    QryOSItens: TSQLQuery;
    QryOSItensFIL_CODIGO: TIntegerField;
    QryOSItensPED_CODIGO: TIntegerField;
    QryOSItensPI_CODIGO: TIntegerField;
    QryOSItensPRO_CODIGO: TStringField;
    QryOSItensPI_VALORUNIT: TFloatField;
    QryOSItensPI_VALORTOTAL: TFloatField;
    QryOSItensPI_DESC: TStringField;
    QryOSItensPI_COMISSAO: TFloatField;
    QryOSItensOS_CODIGO: TIntegerField;
    QryOSItensPRO_CODBARRAS: TStringField;
    QryOSItensGRA_CODIGO: TIntegerField;
    QryOSItensPI_QTD: TFloatField;
    QrySumTOTSERV: TSQLQuery;
    QrySumTOT: TSQLQuery;
    QryPedItens: TSQLQuery;
    qryPedItensGroup: TSQLQuery;
    qryPedItensGroupAGR_NOME: TStringField;
    qryPedItensGroupAGR_DESCRICAO: TStringField;
    qryPedItensGroupSUBTOTAL: TFloatField;
    qryPedItensGroupARG_CODIGO: TStringField;
    qryPedItensGroupQTDPECAS: TFloatField;
    qryPed: TSQLQuery;
    qryPedFIL_CODIGO: TIntegerField;
    qryPedPED_CODIGO: TIntegerField;
    qryPedPED_DATA: TDateField;
    qryPedCLI_CODIGO: TIntegerField;
    qryPedVEN_CODIGO: TIntegerField;
    qryPedVEN_CODIGO_AGENTE: TIntegerField;
    qryPedPED_TIPOPGTO: TStringField;
    qryPedPED_PARCELAS: TIntegerField;
    qryPedPED_SUBTOTAL: TFloatField;
    qryPedPED_TOTAL: TFloatField;
    qryPedPED_DATAENTREGA: TDateField;
    qryPedPED_STATUS: TStringField;
    qryPedVEN_COM: TFloatField;
    qryPedVEN_COM_AG: TFloatField;
    qryPedPED_OBS: TMemoField;
    qryPedPED_CONDICAO: TStringField;
    qryPedVEN_COM_VAL: TFloatField;
    qryPedVEN_COM_AG_VAL: TFloatField;
    qryPedTP_CODIGO: TStringField;
    qryPedTRA_CODIGO: TIntegerField;
    qryPedCOM_VEN_MANUAL: TIntegerField;
    qryPedCOM_AG_MANUAL: TIntegerField;
    qryPedPED_DESCONTO: TFloatField;
    QryTit: TSQLQuery;
    dspTit: TDataSetProvider;
    cdsTit: TClientDataSet;
    cdsTitFIL_CODIGO: TIntegerField;
    cdsTitTIT_CODIGO: TIntegerField;
    cdsTitPED_CODIGO: TIntegerField;
    cdsTitDELETADO: TIntegerField;
    cdsTitCLI_CODIGO: TIntegerField;
    cdsTitTIT_DTLCTO: TDateField;
    cdsTitTIT_VALOR: TFloatField;
    cdsTitTIT_DESC: TStringField;
    cdsTitTIT_VENCIMENTO: TDateField;
    cdsTitTIT_STATUS: TIntegerField;
    cdsTitTIT_DTBAIXA: TDateField;
    cdsTitTIT_VALORPAGO: TFloatField;
    cdsTitVEN_CODIGO: TIntegerField;
    cdsTitVEN_CODIGO_AG: TIntegerField;
    cdsTitVEN_COM: TFloatField;
    cdsTitVEN_COM_AG: TFloatField;
    cdsTitTIT_TIPO: TStringField;
    cdsTitTIT_NRORIG: TStringField;
    cdsTitPLANO_CODIGO: TIntegerField;
    cdsTitOS_CODIGO: TIntegerField;
    cdsTitTIT_JUROS: TFloatField;
    cdsTitVEN_CODIGO_AG_2: TIntegerField;
    cdsTitVEN_COM_AG_2: TFloatField;
    cdsTitTIT_SALDO: TFloatField;
    cdsTitTIT_CODIGO1: TIntegerField;
    cdsTitTIT_CODIGO2: TIntegerField;
    cdsTitTP_START: TStringField;
    cdsTitBCO_CODIGO: TIntegerField;
    cdsTitTIT_NUMEROORIGINAL: TStringField;
    cdsTitTIT_NUMERO: TStringField;
    cdsTitTIT_NFNUMERO: TStringField;
    cdsTitOS_NUM_OS: TIntegerField;
    cdsTitPP_VALOREXTEN: TStringField;
    cdsTitTIT_ORDEM: TStringField;
    cdsTitTIT_AGRUPAMENTO: TIntegerField;
    cdsTitTIT_AGRUPADOR: TStringField;
    cdsTitPC_CODIGO: TIntegerField;
    cdsTitMON_CODIGO: TIntegerField;
    cdsTitTIT_OBS: TMemoField;
    cdsTitEMP_CODIGO: TIntegerField;
    dsTit: TDataSource;
    QryCampos: TSQLQuery;
    dspCampos: TDataSetProvider;
    cdsCampos: TClientDataSet;
    cdsCamposFIL_CODIGO: TIntegerField;
    cdsCamposCAMPO: TStringField;
    cdsCamposPOSY: TIntegerField;
    cdsCamposPOSX: TIntegerField;
    cdsCamposCATEGORIA: TStringField;
    dsCampos: TDataSource;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    SpeedButton2: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton16: TSpeedButton;
    dbeCodCli: TDBEdit;
    DBEdit8: TDBEdit;
    dbedtCLI_RAZAO: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox7: TGroupBox;
    DBData_Caixa: TJvDBDateEdit;
    GroupBox8: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox9: TGroupBox;
    dbePedido: TDBEdit;
    GroupBox10: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox11: TGroupBox;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox12: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox14: TGroupBox;
    JvDBDateEdit1: TJvDBDateEdit;
    GroupBox16: TGroupBox;
    dbeOS: TDBEdit;
    mResp: TMemo;
    GroupBox19: TGroupBox;
    DBEdit11: TDBEdit;
    QryItensServico: TSQLQuery;
    QryParams: TSQLQuery;
    dspParams: TDataSetProvider;
    cdsParams: TClientDataSet;
    cdsParamsCN_OBSLINHA_PRODUTO: TStringField;
    cdsParamsCN_OBSLINHA_PRODUTO1: TStringField;
    cdsParamsCN_OBSLINHA_VALORPRODUTO: TFloatField;
    cdsParamsCN_OBSLINHA_VALORDESCONTOP: TFloatField;
    cdsParamsCN_OS_OBSLINHA_VALSERVICO: TFloatField;
    cdsParamsCN_OS_OBSLINHA_VALDESSERV: TFloatField;
    cdsParamsNOTA_QTDITEMPRODUTO: TIntegerField;
    cdsParamsNOTA_QTDITEMSERVICO: TIntegerField;
    dsParams: TDataSource;
    DsItensServico: TDataSource;
    CdsItensServico: TClientDataSet;
    DspItensServico: TDataSetProvider;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgITens: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    GroupBox15: TGroupBox;
    dbeTransp: TDBEdit;
    dblTransp: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Label66: TLabel;
    Label67: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    N1: TMenuItem;
    CupomFiscal1: TMenuItem;
    N2: TMenuItem;
    NotaFiscal1: TMenuItem;
    N3: TMenuItem;
    GerarBoletos1: TMenuItem;
    N4: TMenuItem;
    Fechar1: TMenuItem;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label17: TLabel;
    Label69: TLabel;
    lbCancel: TLabel;
    Label70: TLabel;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label11: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    FrameCliente1: TFrameCliente;
    edtini: TJvDatePickerEdit;
    edtfim: TJvDatePickerEdit;
    ComboBox3: TComboBox;
    GroupBox20: TGroupBox;
    chkEfetivados: TRadioButton;
    chkTODOS: TRadioButton;
    RadioButton1: TRadioButton;
    Label73: TLabel;
    RadioButton2: TRadioButton;
    GroupBox21: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    edtTot: TEdit;
    edtQtd: TEdit;
    Edit1: TEdit;
    Label77: TLabel;
    TabSheet8: TTabSheet;
    OpenDialog1: TOpenDialog;
    btnNFe: TToolButton;
    PopupMenu1: TPopupMenu;
    CriareEnviar1: TMenuItem;
    N5: TMenuItem;
    Consultar1: TMenuItem;
    N6: TMenuItem;
    CancelamentoNFe1: TMenuItem;
    ConsultaCadastro1: TMenuItem;
    EnviaNFeEmail1: TMenuItem;
    N9: TMenuItem;
    ValidaXML1: TMenuItem;
    Imprimir1: TMenuItem;
    InutilizarNfe1: TMenuItem;
    GerarNFe1: TMenuItem;
    GerarPDF1: TMenuItem;
    ConsultarReciboLote1: TMenuItem;
    EnviarDPEC1: TMenuItem;
    ConsultaDPEC1: TMenuItem;
    ImportarXML1: TMenuItem;
    N7: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    SpeedButton6: TSpeedButton;
    QryOSItensPRO_CODIGO_NCM: TStringField;
    _gbxICMSNormal: TGroupBox;
    Label76: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    _gbxICMSSubstituicao: TGroupBox;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    _gbxIPI: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    _gbxPIS: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    _gbxCOFINS: TGroupBox;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit67: TDBEdit;
    QryLookTributacoes: TSQLQuery;
    QryLookTributacoesTRIBUTACOES_CODIGO: TIntegerField;
    QryLookTributacoesTRIBUTACOES_DESCRICAO: TStringField;
    QryLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA: TFloatField;
    QryLookTributacoesTRIBUTACOES_ICMS_REDUCAO: TFloatField;
    QryLookTributacoesTRIBUTACOESICMS_TIPO_TRIBUTACAO: TStringField;
    QryLookTributacoesSTICMSA_CODIGO: TIntegerField;
    QryLookTributacoesSTICMSB_CODIGO: TIntegerField;
    QryLookTributacoesTRIBUTACOES_IPI_TIPO_TRIBUTACAO: TStringField;
    QryLookTributacoesTRIBUTACOICMS_TIPO_RECOLHIMENTO: TStringField;
    QryLookTributacoesSTIPI_CODIGO: TIntegerField;
    QryLookTributacoesTRIBUTACOES_PIS_ALIQUOTA: TIntegerField;
    QryLookTributacoesTRIBUTACOES_PIS_ST: TIntegerField;
    QryLookTributacoesTRIBUTACOES_COFINS_ALIQUOTA: TFloatField;
    QryLookTributacoesTRIBUTACOES_EMPRESA: TIntegerField;
    QryLookTributacoesTRIBUTACOES_COFINS_ST: TIntegerField;
    QryLookTributacoesTRIBUTACOES_IPI_ALIQUOTA: TFloatField;
    QryLookTributacoesTRIBUTACOICMS_TIPO_SUBSTITUICAO: TStringField;
    QryLookTributacoesTRIBUTACOES_ICMS_MVA: TFloatField;
    QryLookTributacoesEMP_GRUPO: TIntegerField;
    QryLookTributacoesEMP_CODIGO: TIntegerField;
    QryLookTributacoesFIL_CODIGO: TIntegerField;
    QryLookTributacoesDATA: TDateField;
    QryLookTributacoesHORAS: TTimeField;
    QryLookTributacoesNOMECOMPUTADOR: TStringField;
    QryLookTributacoesIPDAMAQUINA: TStringField;
    QryLookTributacoesUSER_NOME: TStringField;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet11: TTabSheet;
    memoLog: TMemo;
    TabSheet12: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet13: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    StatusServio1: TMenuItem;
    N8: TMenuItem;
    DBRichEdit1: TDBMemo;
    Label25: TLabel;
    GroupBox22: TGroupBox;
    Label1: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit71: TDBEdit;
    MemoResp: TMemo;
    PMCdsItens: TPopupMenu;
    Opesdetributao1: TMenuItem;
    N10: TMenuItem;
    Deletaritens1: TMenuItem;
    N11: TMenuItem;
    Abrircadastrodeprodutos1: TMenuItem;
    Panel2: TPanel;
    _gbxTributacao: TGroupBox;
    SpeedButton27: TSpeedButton;
    DBLookupComboBox12: TDBLookupComboBox;
    GroupBox23: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    NI_ICMS_VALOR_BASE_CALCULO: TJvDBCalcEdit;
    NI_ICMS_ALIQUOTA: TJvDBCalcEdit;
    NI_ICMS_VALOR: TJvDBCalcEdit;
    GroupBox24: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    NI_ICMSSUBS_VALOR_BASE_CALCULO: TJvDBCalcEdit;
    NI_ICMSSUBS_ALIQUOTA: TJvDBCalcEdit;
    NI_ICMSSUBS_VALOR: TJvDBCalcEdit;
    GroupBox25: TGroupBox;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    NI_IPI_VALOR_BASE_CALCULO: TJvDBCalcEdit;
    NI_IPI_ALIQUOTA: TJvDBCalcEdit;
    NI_IPI_VALOR: TJvDBCalcEdit;
    GroupBox26: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    NI_PIS_VALOR_BASE_CALCULO: TJvDBCalcEdit;
    NI_PIS_ALIQUOTA: TJvDBCalcEdit;
    NI_PIS_VALOR: TJvDBCalcEdit;
    GroupBox27: TGroupBox;
    Label96: TLabel;
    Label97: TLabel;
    NI_COFINS_VALOR_BASE_CALCULO: TJvDBCalcEdit;
    NI_COFINS_ALIQUOTA: TJvDBCalcEdit;
    NI_COFINS_VALOR: TJvDBCalcEdit;
    GroupBox28: TGroupBox;
    _LbItem: TLabel;
    Label98: TLabel;
    _LbProduto: TLabel;
    _LbQuantidade: TLabel;
    _LbVlrUnitario: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    NI_VALORUN: TJvDBCalcEdit;
    NI_SUBTOT: TJvDBCalcEdit;
    NI_VALOR_DESCONTO: TJvDBCalcEdit;
    NI_VALOR_FRETE: TJvDBCalcEdit;
    NI_VALOR_TOTAL: TJvDBCalcEdit;
    DBComboBox6: TDBComboBox;
    _bvlRodape: TBevel;
    _btnOk: TBitBtn;
    _btnFechar: TBitBtn;
    QryCOF: TSQLQuery;
    dspCOF: TDataSetProvider;
    cdsCOF: TClientDataSet;
    dsCOF: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    DspLookTributacoes: TDataSetProvider;
    CdsLookTributacoes: TClientDataSet;
    dsLookTributacoes: TDataSource;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    DBLookupComboBox4: TDBLookupComboBox;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit76: TDBEdit;
    Label28: TLabel;
    DBEdit77: TDBEdit;
    Label104: TLabel;
    DBEdit78: TDBEdit;
    Label105: TLabel;
    QryLookCli: TSQLQuery;
    dspLookCli: TDataSetProvider;
    cdsLookCli: TClientDataSet;
    cdsLookCliEMP_GRUPO: TIntegerField;
    cdsLookCliEMP_CODIGO: TIntegerField;
    cdsLookCliFIL_CODIGO: TIntegerField;
    cdsLookCliCLI_CODIGO: TIntegerField;
    cdsLookCliCLI_CPFCNPJ: TStringField;
    cdsLookCliCLI_RGINSC: TStringField;
    cdsLookCliCLI_RAZAO: TStringField;
    cdsLookCliCLI_FANTASIA: TStringField;
    cdsLookCliCLI_TIPO: TStringField;
    cdsLookCliCLI_SEXO: TStringField;
    cdsLookCliFLAG_DATAALT: TDateField;
    cdsLookCliDELETADO: TIntegerField;
    cdsLookCliCLI_END_ENDERECO: TStringField;
    cdsLookCliCLI_END_BAIRRO: TStringField;
    cdsLookCliCLI_END_CID_CODIGO: TIntegerField;
    cdsLookCliCLI_END_CID_NOME: TStringField;
    cdsLookCliCLI_END_CID_UF: TStringField;
    cdsLookCliCLI_END_CEP: TStringField;
    cdsLookCliCLI_FONE: TStringField;
    cdsLookCliCLI_FAX: TStringField;
    cdsLookCliCLI_BANCO: TStringField;
    cdsLookCliCLI_AGENCIA: TStringField;
    cdsLookCliCLI_DTCADASTRO: TDateField;
    cdsLookCliCLI_EMAIL: TStringField;
    cdsLookCliVEN_CODIGO: TIntegerField;
    cdsLookCliVEN_CODIGO_AG: TIntegerField;
    cdsLookCliCLI_NOMECONTATO: TStringField;
    cdsLookCliCLI_CONTATOEMAIL: TStringField;
    cdsLookCliCLI_DATANASC: TDateField;
    cdsLookCliCLI_VENDEDOR: TIntegerField;
    cdsLookCliVEN_COM: TFloatField;
    cdsLookCliAG_COM: TFloatField;
    cdsLookCliTP_CODIGO: TStringField;
    cdsLookCliCLI_LIMITE: TFloatField;
    cdsLookCliCLI_BLOQUEADO: TIntegerField;
    cdsLookCliFP_CODIGO: TIntegerField;
    cdsLookCliTC_CODIGO: TIntegerField;
    cdsLookCliCLI_MALA: TIntegerField;
    cdsLookCliCLI_TOTALDESCONTO: TFloatField;
    cdsLookCliCLI_FOTO: TStringField;
    cdsLookCliVEN_CODIGO_AG_2: TIntegerField;
    cdsLookCliAG_COM_2: TFloatField;
    cdsLookCliCLI_END_ENDERECO_TRABALHO: TStringField;
    cdsLookCliCLI_END_BAIRRO_TRABALHO: TStringField;
    cdsLookCliCLI_END_CID_CODIGO_TRABALHO: TIntegerField;
    cdsLookCliCLI_END_CID_NOME_TRABALHO: TStringField;
    cdsLookCliCLI_END_CID_UF_TRABALHO: TStringField;
    cdsLookCliCLI_END_CEP_TRABALHO: TStringField;
    cdsLookCliCLI_FONE_TRABALHO: TStringField;
    cdsLookCliCLI_FAX_TRABALHO: TStringField;
    cdsLookCliCLI_CELULAR: TStringField;
    cdsLookCliCLI_LOCALTRABALHO: TStringField;
    cdsLookCliCLI_NOMEGERENTE_TRABALHO: TStringField;
    cdsLookCliCLI_END_COMPLETO: TStringField;
    cdsLookCliCLI_END_COMPLEMENTO: TStringField;
    cdsLookCliCLI_END_NUMERO: TStringField;
    cdsLookCliCLI_END_LT: TStringField;
    cdsLookCliCLI_END_QD: TStringField;
    cdsLookCliCLI_END_PONTOREFERENCIA: TStringField;
    cdsLookCliMON_CODIGO: TIntegerField;
    cdsLookCliCLI_CODIGOPAI: TIntegerField;
    cdsLookCliTI_CODIGO: TIntegerField;
    cdsLookCliCLI_OBS: TBlobField;
    cdsLookCliCLI_GRAUESCOLARIDADE: TStringField;
    cdsLookCliCLI_POSUICARTAO: TStringField;
    cdsLookCliVISA: TIntegerField;
    cdsLookCliMASTERCAR: TIntegerField;
    cdsLookCliDEBITO: TIntegerField;
    cdsLookCliAMERICAM: TIntegerField;
    cdsLookCliOUTROS: TIntegerField;
    cdsLookCliCLI_NUMERODACONTA: TStringField;
    cdsLookCliCLI_BAN_CLIENTEDESDE: TDateField;
    cdsLookCliCLI_BAN_NOMEGERENTE: TStringField;
    cdsLookCliCLI_BAN_FONE: TStringField;
    cdsLookCliCLI_BAN_FONE_2: TStringField;
    cdsLookCliCLI_BAN_FONE_3: TStringField;
    cdsLookCliCLI_BAN_NOMEGERENTE_2: TStringField;
    cdsLookCliCLI_BAN_NOMEGERENTE_3: TStringField;
    cdsLookCliCLI_BAN_CLIENTEDESDE_1: TDateField;
    cdsLookCliCLI_BAN_CLIENTEDESDE_3: TDateField;
    cdsLookCliCLI_NUMERODACONTA_2: TStringField;
    cdsLookCliCLI_NUMERODACONTA_3: TStringField;
    cdsLookCliCLI_BANCO_2: TStringField;
    cdsLookCliCLI_BANCO_3: TStringField;
    cdsLookCliCLI_AGENCIA_2: TStringField;
    cdsLookCliCLI_AGENCIA_3: TStringField;
    cdsLookCliCLI_RENDAFAMILHAR: TStringField;
    cdsLookCliCLI_FICHADO: TStringField;
    cdsLookCliCLI_TEMPOTRABALHO: TStringField;
    cdsLookCliCLI_ESTADOCIVIL: TStringField;
    cdsLookCliCLI_NOMECONJUGE: TStringField;
    cdsLookCliCLI_CONJUGECPF: TStringField;
    cdsLookCliCLI_CONJUGERG: TStringField;
    cdsLookCliCLI_CONJUGEDATANASC: TDateField;
    cdsLookCliCLI_CONJUGEEMAIL: TStringField;
    cdsLookCliCLI_NOMEMAE: TStringField;
    cdsLookCliCLI_NOMEPAI: TStringField;
    cdsLookCliCLI_FONEMAE: TStringField;
    cdsLookCliCLI_FONEMAE_2: TStringField;
    cdsLookCliCLI_FONEPAI: TStringField;
    cdsLookCliCLI_FONEPAI_2: TStringField;
    cdsLookCliCLI_TIPOMORADIA: TStringField;
    cdsLookCliCLI_TIPOCONSTRUCOA: TStringField;
    cdsLookCliCLI_MORADIA: TStringField;
    cdsLookCliCLI_AGUA: TFloatField;
    cdsLookCliCLI_ENERGIA: TFloatField;
    cdsLookCliCLI_POSSUEMANIMAIS: TStringField;
    cdsLookCliCLI_QTDANIMAIS: TStringField;
    cdsLookCliCLI_NOMEGERENTE_2: TStringField;
    cdsLookCliCLI_NOMEGERENTE_3: TStringField;
    cdsLookCliCLI_NOMEGERENTE_1: TStringField;
    cdsLookCliDATA: TDateField;
    cdsLookCliHORAS: TTimeField;
    cdsLookCliUSER_NOME: TStringField;
    cdsLookCliNOMECOMPUTADOR: TStringField;
    cdsLookCliIPDAMAQUINA: TStringField;
    cdsLookCliCLI_PROVI: TStringField;
    cdsLookCliCLI_NUMEROMATRICULA: TStringField;
    cdsLookCliCLI_COBR_ENDERECO: TStringField;
    cdsLookCliCLI_COBR_BAIRRO: TStringField;
    cdsLookCliCLI_COBR_CEP: TStringField;
    cdsLookCliCLI_COBR_LT: TStringField;
    cdsLookCliCLI_COBR_QD: TStringField;
    cdsLookCliCLI_COBR_NUMERO: TStringField;
    cdsLookCliCLI_COBR_COMPLEMENTO: TStringField;
    cdsLookCliCLI_COBR_CID_CODIGO: TIntegerField;
    cdsLookCliCLI_COBR_CID_NOME: TStringField;
    cdsLookCliCLI_COBR_UF: TStringField;
    cdsLookCliCLI_COBR_PONTOREFERENCIA: TStringField;
    cdsLookCliCLI_COBR_TELEFONE: TStringField;
    cdsLookCliCLI_COBR_CELULAR: TStringField;
    cdsLookCliCLI_COBR_FONE: TStringField;
    cdsLookCliCLI_ENTR_BAIRRO: TStringField;
    cdsLookCliCLI_ENTR_CELULAR: TStringField;
    cdsLookCliCLI_ENTR_CEP: TStringField;
    cdsLookCliCLI_ENTR_CID_CODIGO: TIntegerField;
    cdsLookCliCLI_ENTR_CID_NOME: TStringField;
    cdsLookCliCLI_ENTR_COMPLEMENTO: TStringField;
    cdsLookCliCLI_ENTR_ENDERECO: TStringField;
    cdsLookCliCLI_ENTR_FONE: TStringField;
    cdsLookCliCLI_ENTR_LT: TStringField;
    cdsLookCliCLI_ENTR_NUMERO: TStringField;
    cdsLookCliCLI_ENTR_PONTOREFERENCIA: TStringField;
    cdsLookCliCLI_ENTR_QD: TStringField;
    cdsLookCliCLI_ENTR_TELEFONE: TStringField;
    cdsLookCliCLI_ENTR_UF: TStringField;
    cdsLookCliCLI_COBR_FAX: TStringField;
    cdsLookCliCLI_ENTR_FAX: TStringField;
    cdsLookCliROTA_CODIGO: TIntegerField;
    cdsLookCliTRA_CODIGO: TIntegerField;
    cdsLookCliCLI_AGUATIPO: TStringField;
    cdsLookCliCLI_HOMEPAGE: TStringField;
    cdsLookCliCON_NUMERO: TStringField;
    cdsLookCliPC_CODIGO: TIntegerField;
    cdsLookCliCLI_ATIVO_INATIVO: TIntegerField;
    cdsLookCliCLI_INATIVOAPOS: TIntegerField;
    cdsLookCliCLI_VENDASOMENTEAVISTA: TIntegerField;
    cdsLookCliCLI_BLOQUEIOAUTOAPOS: TIntegerField;
    cdsLookCliCLI_DATAULTIMACOMPRA: TDateField;
    cdsLookCliCLI_DATAULTIMAOS: TDateField;
    cdsLookCliCLI_SKYPE: TStringField;
    cdsLookCliCLI_MSN: TStringField;
    cdsLookCliCLI_NEXTEL: TStringField;
    cdsLookCliCLI_RAMOATIVIDADE: TStringField;
    cdsLookCliCLI_NOMESOCIO: TStringField;
    cdsLookCliCLI_BLOQMOTIVO: TStringField;
    cdsLookCliFIL_CNPJ: TStringField;
    cdsLookCliCLI_END_COD_IBGEUF: TStringField;
    cdsLookCliCLI_END_COD_IBGEMUNIC: TStringField;
    dsLookCli: TDataSource;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    TabSheet14: TTabSheet;
    Memo1: TMemo;
    CdsLookTributacoesTRIBUTACOES_CODIGO: TIntegerField;
    CdsLookTributacoesTRIBUTACOES_DESCRICAO: TStringField;
    CdsLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA: TFloatField;
    CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO: TFloatField;
    CdsLookTributacoesTRIBUTACOESICMS_TIPO_TRIBUTACAO: TStringField;
    CdsLookTributacoesSTICMSA_CODIGO: TIntegerField;
    CdsLookTributacoesSTICMSB_CODIGO: TStringField;
    CdsLookTributacoesTRIBUTACOES_IPI_TIPO_TRIBUTACAO: TStringField;
    CdsLookTributacoesTRIBUTACOICMS_TIPO_RECOLHIMENTO: TStringField;
    CdsLookTributacoesSTIPI_CODIGO: TStringField;
    CdsLookTributacoesTRIBUTACOES_PIS_ALIQUOTA: TFMTBCDField;
    CdsLookTributacoesTRIBUTACOES_PIS_ST: TStringField;
    CdsLookTributacoesTRIBUTACOES_COFINS_ALIQUOTA: TFloatField;
    CdsLookTributacoesTRIBUTACOES_EMPRESA: TIntegerField;
    CdsLookTributacoesTRIBUTACOES_COFINS_ST: TStringField;
    CdsLookTributacoesTRIBUTACOES_IPI_ALIQUOTA: TFloatField;
    CdsLookTributacoesTRIBUTACOICMS_TIPO_SUBSTITUICAO: TStringField;
    CdsLookTributacoesTRIBUTACOES_ICMS_MVA: TFloatField;
    CdsLookTributacoesEMP_GRUPO: TIntegerField;
    CdsLookTributacoesEMP_CODIGO: TIntegerField;
    CdsLookTributacoesFIL_CODIGO: TIntegerField;
    CdsLookTributacoesDATA: TDateField;
    CdsLookTributacoesHORAS: TTimeField;
    CdsLookTributacoesNOMECOMPUTADOR: TStringField;
    CdsLookTributacoesIPDAMAQUINA: TStringField;
    CdsLookTributacoesUSER_NOME: TStringField;
    CdsLookTributacoesNI_COFINS_ALIQUOTA_TIPO: TIntegerField;
    CdsLookTributacoesNI_PIS_ALIQUOTA_TIPO: TIntegerField;
    cdsCOFCFOP_COF: TStringField;
    cdsCOFCFOP_DESCRICAO: TStringField;
    cdsCOFCFOP_ABREVEADO: TStringField;
    cdsCOFDELETADO: TIntegerField;
    cdsCOFFIL_CODIGO: TIntegerField;
    cdsCOFMON_CODIGO: TIntegerField;
    cdsCOFEMP_GRUPO: TIntegerField;
    cdsCOFDATA: TDateField;
    cdsCOFHORAS: TTimeField;
    cdsCOFUSER_NOME: TStringField;
    cdsCOFNOMECOMPUTADOR: TStringField;
    cdsCOFIPDAMAQUINA: TStringField;
    cdsCOFEMP_CODIGO: TIntegerField;
    cdsCOFCFOP_CODIGO: TIntegerField;
    cdsCOFFIL_CNPJ: TStringField;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label29: TLabel;
    cdsPesqFIL_CODIGO: TIntegerField;
    cdsPesqNOT_CODIGO: TIntegerField;
    cdsPesqNOT_NR: TIntegerField;
    cdsPesqNOT_ESPECIE: TStringField;
    cdsPesqNOT_SERIE: TStringField;
    cdsPesqNOT_DATAEMISSAO: TDateField;
    cdsPesqNOT_DATASAIDA: TDateField;
    cdsPesqPED_CODIGO: TStringField;
    cdsPesqNOT_TOTITENS: TFMTBCDField;
    cdsPesqNOT_TOTNOTA: TFMTBCDField;
    cdsPesqTRA_CODIGO: TIntegerField;
    cdsPesqNOT_CPFCNPJ: TStringField;
    cdsPesqNOT_DESCONTO: TFMTBCDField;
    cdsPesqNOT_ACRECIMO: TFMTBCDField;
    cdsPesqNOT_VALIPI: TFMTBCDField;
    cdsPesqNOT_ALIQIPI: TFloatField;
    cdsPesqNOT_BASEIPI: TFMTBCDField;
    cdsPesqDELETADO: TIntegerField;
    cdsPesqNOT_VALICM: TFMTBCDField;
    cdsPesqNOT_ALIQICM: TFloatField;
    cdsPesqNOT_BASEICM: TFMTBCDField;
    cdsPesqNOT_SITUACAO: TStringField;
    cdsPesqNOT_BASESUBS: TFMTBCDField;
    cdsPesqNOT_VALSUBS: TFMTBCDField;
    cdsPesqFRETE: TIntegerField;
    cdsPesqNOT_VALFRETE: TFMTBCDField;
    cdsPesqNOT_VALSEGURO: TFMTBCDField;
    cdsPesqNOT_DESPACESS: TFMTBCDField;
    cdsPesqCLI_CODIGO: TIntegerField;
    cdsPesqNOT_VOLUMES: TIntegerField;
    cdsPesqNOT_TIPO_VOLUMES: TStringField;
    cdsPesqNOT_ALIQSUBS: TFloatField;
    cdsPesqCFOP_COF: TStringField;
    cdsPesqNT_VALORISSQN: TFMTBCDField;
    cdsPesqNT_VALORTOTALSERVICO: TFMTBCDField;
    cdsPesqNOT_VALISSQN: TFMTBCDField;
    cdsPesqNOT_BASEISSQN: TFMTBCDField;
    cdsPesqNOT_ALIISSQN: TFloatField;
    cdsPesqNOT_ITENS_DESCONTO: TFMTBCDField;
    cdsPesqNOT_ITENSSERVICO_DESCONTO: TFMTBCDField;
    cdsPesqNOT_ITENS_TOTALPROD: TFMTBCDField;
    cdsPesqNOT_ITENS_SERV_SUBTOTAL: TFMTBCDField;
    cdsPesqOS_CODIGO: TIntegerField;
    cdsPesqMON_CODIGO: TIntegerField;
    cdsPesqNOT_FORMAPGMT: TStringField;
    cdsPesqNOT_OBSERVACAO: TBlobField;
    cdsPesqEMP_GRUPO: TIntegerField;
    cdsPesqDATA: TDateField;
    cdsPesqHORAS: TTimeField;
    cdsPesqUSER_NOME: TStringField;
    cdsPesqNOMECOMPUTADOR: TStringField;
    cdsPesqIPDAMAQUINA: TStringField;
    cdsPesqEMP_CODIGO: TIntegerField;
    cdsPesqNOT_TRANSRAZAO: TStringField;
    cdsPesqNOT_TRANSPLACA: TStringField;
    cdsPesqNOT_TRANSCNPJCPF: TStringField;
    cdsPesqNOT_TRANSENDERECO: TStringField;
    cdsPesqNOT_TRANSMUNICIPIO: TStringField;
    cdsPesqNOT_TRANSUF2: TStringField;
    cdsPesqNOT_TRANSQTD: TStringField;
    cdsPesqNOT_TRANSESPECIE: TStringField;
    cdsPesqNOT_TRANSMARCA: TStringField;
    cdsPesqNOT_TRANSNUMERO: TStringField;
    cdsPesqNOT_TRANSPESOBRUTO: TStringField;
    cdsPesqNOT_TRANSPESOLIQUIDO: TStringField;
    cdsPesqNOT_TRANSINSCRICAO: TStringField;
    cdsPesqNOT_TRANSUF: TStringField;
    cdsPesqDUPLICATA1: TStringField;
    cdsPesqDUPLICATA2: TStringField;
    cdsPesqDUPLICATA3: TStringField;
    cdsPesqDUPLICATA4: TStringField;
    cdsPesqDUPLICATA5: TStringField;
    cdsPesqDUPLICATA6: TStringField;
    cdsPesqVENCIMENTO1: TStringField;
    cdsPesqVENCIMENTO2: TStringField;
    cdsPesqVENCIMENTO3: TStringField;
    cdsPesqVENCIMENTO4: TStringField;
    cdsPesqVENCIMENTO5: TStringField;
    cdsPesqVENCIMENTO6: TStringField;
    cdsPesqVALOR1: TStringField;
    cdsPesqVALOR2: TStringField;
    cdsPesqVALOR3: TStringField;
    cdsPesqVALOR4: TStringField;
    cdsPesqVALOR5: TStringField;
    cdsPesqVALOR6: TStringField;
    cdsPesqBOLETOAUTOMATICO: TIntegerField;
    cdsPesqNOT_STATUS: TStringField;
    cdsPesqNOT_HORASAIDA: TTimeField;
    cdsPesqNOT_ENTRADASAIDA: TIntegerField;
    cdsPesqNOT_OBSCORPOITEM: TStringField;
    cdsPesqFIL_CNPJ: TStringField;
    cdsPesqNOT_CHAVENFE: TStringField;
    cdsPesqNOT_CAMINHOXMLNFE: TStringField;
    cdsPesqNOT_LOTE: TIntegerField;
    cdsPesqMEMORESP: TStringField;
    cdsPesqWBRESPOSTA: TStringField;
    cdsPesqMEMOLOG: TStringField;
    cdsPesqMEMORESPWS: TStringField;
    cdsPesqMEMODADOS: TStringField;
    cdsPesqNOT_BASEPIS: TFMTBCDField;
    cdsPesqNOT_ALIQPIS: TFloatField;
    cdsPesqNOT_VALPIS: TFMTBCDField;
    cdsPesqNOT_BASECOFINS: TFMTBCDField;
    cdsPesqNOT_ALIQCOFINS: TFloatField;
    cdsPesqNOT_VALCOFINS: TFMTBCDField;
    cdsPesqNOT_FORMADEEMISSAO: TStringField;
    cdsPesqNOT_FORMAPGMTNFE: TStringField;
    cdsPesqNOT_FINALILDADEEMISSAO: TStringField;
    cdsPesqNOT_TIPOIMPRESSAODANFE: TStringField;
    cdsPesqEMP_GRUPO_1: TIntegerField;
    cdsPesqEMP_CODIGO_1: TIntegerField;
    cdsPesqFIL_CODIGO_1: TIntegerField;
    cdsPesqCLI_CODIGO_1: TIntegerField;
    cdsPesqCLI_CPFCNPJ: TStringField;
    cdsPesqCLI_RGINSC: TStringField;
    cdsPesqCLI_RAZAO: TStringField;
    cdsPesqCLI_FANTASIA: TStringField;
    cdsPesqCLI_TIPO: TStringField;
    cdsPesqCLI_SEXO: TStringField;
    cdsPesqFLAG_DATAALT: TDateField;
    cdsPesqDELETADO_1: TIntegerField;
    cdsPesqCLI_END_ENDERECO: TStringField;
    cdsPesqCLI_END_BAIRRO: TStringField;
    cdsPesqCLI_END_CID_CODIGO: TIntegerField;
    cdsPesqCLI_END_CID_NOME: TStringField;
    cdsPesqCLI_END_CID_UF: TStringField;
    cdsPesqCLI_END_CEP: TStringField;
    cdsPesqCLI_FONE: TStringField;
    cdsPesqCLI_FAX: TStringField;
    cdsPesqCLI_BANCO: TStringField;
    cdsPesqCLI_AGENCIA: TStringField;
    cdsPesqCLI_DTCADASTRO: TDateField;
    cdsPesqCLI_EMAIL: TStringField;
    cdsPesqVEN_CODIGO: TIntegerField;
    cdsPesqVEN_CODIGO_AG: TIntegerField;
    cdsPesqCLI_NOMECONTATO: TStringField;
    cdsPesqCLI_CONTATOEMAIL: TStringField;
    cdsPesqCLI_DATANASC: TDateField;
    cdsPesqCLI_VENDEDOR: TIntegerField;
    cdsPesqVEN_COM: TFloatField;
    cdsPesqAG_COM: TFloatField;
    cdsPesqTP_CODIGO: TStringField;
    cdsPesqCLI_LIMITE: TFloatField;
    cdsPesqCLI_BLOQUEADO: TIntegerField;
    cdsPesqFP_CODIGO: TIntegerField;
    cdsPesqTC_CODIGO: TIntegerField;
    cdsPesqCLI_MALA: TIntegerField;
    cdsPesqCLI_TOTALDESCONTO: TFloatField;
    cdsPesqCLI_FOTO: TStringField;
    cdsPesqVEN_CODIGO_AG_2: TIntegerField;
    cdsPesqAG_COM_2: TFloatField;
    cdsPesqCLI_END_ENDERECO_TRABALHO: TStringField;
    cdsPesqCLI_END_BAIRRO_TRABALHO: TStringField;
    cdsPesqCLI_END_CID_CODIGO_TRABALHO: TIntegerField;
    cdsPesqCLI_END_CID_NOME_TRABALHO: TStringField;
    cdsPesqCLI_END_CID_UF_TRABALHO: TStringField;
    cdsPesqCLI_END_CEP_TRABALHO: TStringField;
    cdsPesqCLI_FONE_TRABALHO: TStringField;
    cdsPesqCLI_FAX_TRABALHO: TStringField;
    cdsPesqCLI_CELULAR: TStringField;
    cdsPesqCLI_LOCALTRABALHO: TStringField;
    cdsPesqCLI_NOMEGERENTE_TRABALHO: TStringField;
    cdsPesqCLI_END_COMPLETO: TStringField;
    cdsPesqCLI_END_COMPLEMENTO: TStringField;
    cdsPesqCLI_END_NUMERO: TStringField;
    cdsPesqCLI_END_LT: TStringField;
    cdsPesqCLI_END_QD: TStringField;
    cdsPesqCLI_END_PONTOREFERENCIA: TStringField;
    cdsPesqMON_CODIGO_1: TIntegerField;
    cdsPesqCLI_CODIGOPAI: TIntegerField;
    cdsPesqTI_CODIGO: TIntegerField;
    cdsPesqCLI_OBS: TBlobField;
    cdsPesqCLI_GRAUESCOLARIDADE: TStringField;
    cdsPesqCLI_POSUICARTAO: TStringField;
    cdsPesqVISA: TIntegerField;
    cdsPesqMASTERCAR: TIntegerField;
    cdsPesqDEBITO: TIntegerField;
    cdsPesqAMERICAM: TIntegerField;
    cdsPesqOUTROS: TIntegerField;
    cdsPesqCLI_NUMERODACONTA: TStringField;
    cdsPesqCLI_BAN_CLIENTEDESDE: TDateField;
    cdsPesqCLI_BAN_NOMEGERENTE: TStringField;
    cdsPesqCLI_BAN_FONE: TStringField;
    cdsPesqCLI_BAN_FONE_2: TStringField;
    cdsPesqCLI_BAN_FONE_3: TStringField;
    cdsPesqCLI_BAN_NOMEGERENTE_2: TStringField;
    cdsPesqCLI_BAN_NOMEGERENTE_3: TStringField;
    cdsPesqCLI_BAN_CLIENTEDESDE_1: TDateField;
    cdsPesqCLI_BAN_CLIENTEDESDE_3: TDateField;
    cdsPesqCLI_NUMERODACONTA_2: TStringField;
    cdsPesqCLI_NUMERODACONTA_3: TStringField;
    cdsPesqCLI_BANCO_2: TStringField;
    cdsPesqCLI_BANCO_3: TStringField;
    cdsPesqCLI_AGENCIA_2: TStringField;
    cdsPesqCLI_AGENCIA_3: TStringField;
    cdsPesqCLI_RENDAFAMILHAR: TStringField;
    cdsPesqCLI_FICHADO: TStringField;
    cdsPesqCLI_TEMPOTRABALHO: TStringField;
    cdsPesqCLI_ESTADOCIVIL: TStringField;
    cdsPesqCLI_NOMECONJUGE: TStringField;
    cdsPesqCLI_CONJUGECPF: TStringField;
    cdsPesqCLI_CONJUGERG: TStringField;
    cdsPesqCLI_CONJUGEDATANASC: TDateField;
    cdsPesqCLI_CONJUGEEMAIL: TStringField;
    cdsPesqCLI_NOMEMAE: TStringField;
    cdsPesqCLI_NOMEPAI: TStringField;
    cdsPesqCLI_FONEMAE: TStringField;
    cdsPesqCLI_FONEMAE_2: TStringField;
    cdsPesqCLI_FONEPAI: TStringField;
    cdsPesqCLI_FONEPAI_2: TStringField;
    cdsPesqCLI_TIPOMORADIA: TStringField;
    cdsPesqCLI_TIPOCONSTRUCOA: TStringField;
    cdsPesqCLI_MORADIA: TStringField;
    cdsPesqCLI_AGUA: TFloatField;
    cdsPesqCLI_ENERGIA: TFloatField;
    cdsPesqCLI_POSSUEMANIMAIS: TStringField;
    cdsPesqCLI_QTDANIMAIS: TStringField;
    cdsPesqCLI_NOMEGERENTE_2: TStringField;
    cdsPesqCLI_NOMEGERENTE_3: TStringField;
    cdsPesqCLI_NOMEGERENTE_1: TStringField;
    cdsPesqDATA_1: TDateField;
    cdsPesqHORAS_1: TTimeField;
    cdsPesqUSER_NOME_1: TStringField;
    cdsPesqNOMECOMPUTADOR_1: TStringField;
    cdsPesqIPDAMAQUINA_1: TStringField;
    cdsPesqCLI_PROVI: TStringField;
    cdsPesqCLI_NUMEROMATRICULA: TStringField;
    cdsPesqCLI_COBR_ENDERECO: TStringField;
    cdsPesqCLI_COBR_BAIRRO: TStringField;
    cdsPesqCLI_COBR_CEP: TStringField;
    cdsPesqCLI_COBR_LT: TStringField;
    cdsPesqCLI_COBR_QD: TStringField;
    cdsPesqCLI_COBR_NUMERO: TStringField;
    cdsPesqCLI_COBR_COMPLEMENTO: TStringField;
    cdsPesqCLI_COBR_CID_CODIGO: TIntegerField;
    cdsPesqCLI_COBR_CID_NOME: TStringField;
    cdsPesqCLI_COBR_UF: TStringField;
    cdsPesqCLI_COBR_PONTOREFERENCIA: TStringField;
    cdsPesqCLI_COBR_TELEFONE: TStringField;
    cdsPesqCLI_COBR_CELULAR: TStringField;
    cdsPesqCLI_COBR_FONE: TStringField;
    cdsPesqCLI_ENTR_BAIRRO: TStringField;
    cdsPesqCLI_ENTR_CELULAR: TStringField;
    cdsPesqCLI_ENTR_CEP: TStringField;
    cdsPesqCLI_ENTR_CID_CODIGO: TIntegerField;
    cdsPesqCLI_ENTR_CID_NOME: TStringField;
    cdsPesqCLI_ENTR_COMPLEMENTO: TStringField;
    cdsPesqCLI_ENTR_ENDERECO: TStringField;
    cdsPesqCLI_ENTR_FONE: TStringField;
    cdsPesqCLI_ENTR_LT: TStringField;
    cdsPesqCLI_ENTR_NUMERO: TStringField;
    cdsPesqCLI_ENTR_PONTOREFERENCIA: TStringField;
    cdsPesqCLI_ENTR_QD: TStringField;
    cdsPesqCLI_ENTR_TELEFONE: TStringField;
    cdsPesqCLI_ENTR_UF: TStringField;
    cdsPesqCLI_COBR_FAX: TStringField;
    cdsPesqCLI_ENTR_FAX: TStringField;
    cdsPesqROTA_CODIGO: TIntegerField;
    cdsPesqTRA_CODIGO_1: TIntegerField;
    cdsPesqCLI_AGUATIPO: TStringField;
    cdsPesqCLI_HOMEPAGE: TStringField;
    cdsPesqCON_NUMERO: TStringField;
    cdsPesqPC_CODIGO: TIntegerField;
    cdsPesqCLI_ATIVO_INATIVO: TIntegerField;
    cdsPesqCLI_INATIVOAPOS: TIntegerField;
    cdsPesqCLI_VENDASOMENTEAVISTA: TIntegerField;
    cdsPesqCLI_BLOQUEIOAUTOAPOS: TIntegerField;
    cdsPesqCLI_DATAULTIMACOMPRA: TDateField;
    cdsPesqCLI_DATAULTIMAOS: TDateField;
    cdsPesqCLI_SKYPE: TStringField;
    cdsPesqCLI_MSN: TStringField;
    cdsPesqCLI_NEXTEL: TStringField;
    cdsPesqCLI_RAMOATIVIDADE: TStringField;
    cdsPesqCLI_NOMESOCIO: TStringField;
    cdsPesqCLI_BLOQMOTIVO: TStringField;
    cdsPesqFIL_CNPJ_1: TStringField;
    cdsPesqCLI_END_COD_IBGEUF: TStringField;
    cdsPesqCLI_END_COD_IBGEMUNIC: TStringField;
    DBCheckBox7: TDBCheckBox;
    cdsCadFIL_CODIGO: TIntegerField;
    cdsCadNOT_CODIGO: TIntegerField;
    cdsCadNOT_NR: TIntegerField;
    cdsCadNOT_ESPECIE: TStringField;
    cdsCadNOT_SERIE: TStringField;
    cdsCadNOT_DATAEMISSAO: TDateField;
    cdsCadNOT_DATASAIDA: TDateField;
    cdsCadPED_CODIGO: TStringField;
    cdsCadNOT_TOTITENS: TFMTBCDField;
    cdsCadNOT_TOTNOTA: TFMTBCDField;
    cdsCadTRA_CODIGO: TIntegerField;
    cdsCadNOT_CPFCNPJ: TStringField;
    cdsCadNOT_DESCONTO: TFMTBCDField;
    cdsCadNOT_ACRECIMO: TFMTBCDField;
    cdsCadNOT_VALIPI: TFMTBCDField;
    cdsCadNOT_ALIQIPI: TFloatField;
    cdsCadNOT_BASEIPI: TFMTBCDField;
    cdsCadDELETADO: TIntegerField;
    cdsCadNOT_VALICM: TFMTBCDField;
    cdsCadNOT_ALIQICM: TFloatField;
    cdsCadNOT_BASEICM: TFMTBCDField;
    cdsCadNOT_SITUACAO: TStringField;
    cdsCadNOT_BASESUBS: TFMTBCDField;
    cdsCadNOT_VALSUBS: TFMTBCDField;
    cdsCadFRETE: TIntegerField;
    cdsCadNOT_VALFRETE: TFMTBCDField;
    cdsCadNOT_VALSEGURO: TFMTBCDField;
    cdsCadNOT_DESPACESS: TFMTBCDField;
    cdsCadCLI_CODIGO: TIntegerField;
    cdsCadNOT_VOLUMES: TIntegerField;
    cdsCadNOT_TIPO_VOLUMES: TStringField;
    cdsCadNOT_ALIQSUBS: TFloatField;
    cdsCadCFOP_COF: TStringField;
    cdsCadNT_VALORISSQN: TFMTBCDField;
    cdsCadNT_VALORTOTALSERVICO: TFMTBCDField;
    cdsCadNOT_VALISSQN: TFMTBCDField;
    cdsCadNOT_BASEISSQN: TFMTBCDField;
    cdsCadNOT_ALIISSQN: TFloatField;
    cdsCadNOT_ITENS_DESCONTO: TFMTBCDField;
    cdsCadNOT_ITENSSERVICO_DESCONTO: TFMTBCDField;
    cdsCadNOT_ITENS_TOTALPROD: TFMTBCDField;
    cdsCadNOT_ITENS_SERV_SUBTOTAL: TFMTBCDField;
    cdsCadOS_CODIGO: TIntegerField;
    cdsCadMON_CODIGO: TIntegerField;
    cdsCadNOT_FORMAPGMT: TStringField;
    cdsCadNOT_OBSERVACAO: TBlobField;
    cdsCadEMP_GRUPO: TIntegerField;
    cdsCadDATA: TDateField;
    cdsCadHORAS: TTimeField;
    cdsCadUSER_NOME: TStringField;
    cdsCadNOMECOMPUTADOR: TStringField;
    cdsCadIPDAMAQUINA: TStringField;
    cdsCadEMP_CODIGO: TIntegerField;
    cdsCadNOT_TRANSRAZAO: TStringField;
    cdsCadNOT_TRANSPLACA: TStringField;
    cdsCadNOT_TRANSCNPJCPF: TStringField;
    cdsCadNOT_TRANSENDERECO: TStringField;
    cdsCadNOT_TRANSMUNICIPIO: TStringField;
    cdsCadNOT_TRANSUF2: TStringField;
    cdsCadNOT_TRANSQTD: TStringField;
    cdsCadNOT_TRANSESPECIE: TStringField;
    cdsCadNOT_TRANSMARCA: TStringField;
    cdsCadNOT_TRANSNUMERO: TStringField;
    cdsCadNOT_TRANSPESOBRUTO: TStringField;
    cdsCadNOT_TRANSPESOLIQUIDO: TStringField;
    cdsCadNOT_TRANSINSCRICAO: TStringField;
    cdsCadNOT_TRANSUF: TStringField;
    cdsCadDUPLICATA1: TStringField;
    cdsCadDUPLICATA2: TStringField;
    cdsCadDUPLICATA3: TStringField;
    cdsCadDUPLICATA4: TStringField;
    cdsCadDUPLICATA5: TStringField;
    cdsCadDUPLICATA6: TStringField;
    cdsCadVENCIMENTO1: TStringField;
    cdsCadVENCIMENTO2: TStringField;
    cdsCadVENCIMENTO3: TStringField;
    cdsCadVENCIMENTO4: TStringField;
    cdsCadVENCIMENTO5: TStringField;
    cdsCadVENCIMENTO6: TStringField;
    cdsCadVALOR1: TStringField;
    cdsCadVALOR2: TStringField;
    cdsCadVALOR3: TStringField;
    cdsCadVALOR4: TStringField;
    cdsCadVALOR5: TStringField;
    cdsCadVALOR6: TStringField;
    cdsCadBOLETOAUTOMATICO: TIntegerField;
    cdsCadNOT_STATUS: TStringField;
    cdsCadNOT_HORASAIDA: TTimeField;
    cdsCadNOT_ENTRADASAIDA: TIntegerField;
    cdsCadNOT_OBSCORPOITEM: TStringField;
    cdsCadFIL_CNPJ: TStringField;
    cdsCadNOT_CHAVENFE: TStringField;
    cdsCadNOT_CAMINHOXMLNFE: TStringField;
    cdsCadNOT_LOTE: TIntegerField;
    cdsCadMEMORESP: TStringField;
    cdsCadWBRESPOSTA: TStringField;
    cdsCadMEMOLOG: TStringField;
    cdsCadMEMORESPWS: TStringField;
    cdsCadMEMODADOS: TStringField;
    cdsCadNOT_BASEPIS: TFMTBCDField;
    cdsCadNOT_ALIQPIS: TFloatField;
    cdsCadNOT_VALPIS: TFMTBCDField;
    cdsCadNOT_BASECOFINS: TFMTBCDField;
    cdsCadNOT_ALIQCOFINS: TFloatField;
    cdsCadNOT_VALCOFINS: TFMTBCDField;
    cdsCadNOT_FORMADEEMISSAO: TStringField;
    cdsCadNOT_FORMAPGMTNFE: TStringField;
    cdsCadNOT_FINALILDADEEMISSAO: TStringField;
    cdsCadNOT_TIPOIMPRESSAODANFE: TStringField;
    cdsCadNOT_CALCULARAUTOMATICO: TIntegerField;
    CdsItensServicoFIL_CODIGO: TIntegerField;
    CdsItensServicoNOT_CODIGO: TIntegerField;
    CdsItensServicoNI_CODIGO: TIntegerField;
    CdsItensServicoDELETADO: TIntegerField;
    CdsItensServicoPRO_CODIGO: TStringField;
    CdsItensServicoNI_QTD: TFloatField;
    EasyTEF: TEasyTEFVespague;
    cdsTitTIT_CARTAOBANDEIRA: TStringField;
    PageControl3: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    n: TDBGrid;
    DBGrid2: TDBGrid;
    qrytitgrupo: TSQLQuery;
    Dsptitgrupo: TDataSetProvider;
    Cdstitgrupo: TClientDataSet;
    Dstitgrupo: TDataSource;
    CdstitgrupoQTDTIPO: TFloatField;
    CdstitgrupoTITULOVALOR: TFloatField;
    CdstitgrupoTIT_TIPO: TStringField;
    GroupBox17: TGroupBox;
    DBComboBox1: TDBComboBox;
    cdsCadNOT_TIPO: TStringField;
    qryAux: TSQLQuery;
    Label68: TLabel;
    JvgLabel1: TJvgLabel;
    avisodeimpressao: TTimer;
    AbrirGerenciadordeNFe1: TMenuItem;
    PopupMenu2: TPopupMenu;
    AbrirGerenciadordeNFe2: TMenuItem;
    cdsCadNOT_STATUS_NFE: TIntegerField;
    cdsCadNOT_EFCSTATUS: TIntegerField;
    cdsPesqNOT_CALCULARAUTOMATICO: TIntegerField;
    cdsPesqNOT_TIPO: TStringField;
    cdsPesqNOT_STATUS_NFE: TIntegerField;
    cdsPesqNOT_EFCSTATUS: TIntegerField;
    cdsPesqNOT_NUMERONFE: TIntegerField;
    cdsCadNOT_NUMERONFE: TIntegerField;
    RadioGroup1: TRadioGroup;
    ConfigurarparametrosdaNFe1: TMenuItem;
    SpeedButton12: TSpeedButton;
    QRYNFEESTATUS: TSQLQuery;
    QRYNFEESTATUSNOT_STATUS_NFE: TIntegerField;
    QRYNFEESTATUSNOT_EFCSTATUS: TIntegerField;
    QRYNFEESTATUSNOT_NUMERONFE: TIntegerField;
    cdsItensNI_VALORUN: TFMTBCDField;
    cdsItensNI_SUBTOT: TFMTBCDField;
    cdsItensDELETADO: TIntegerField;
    cdsItensPRO_NOME: TStringField;
    cdsItensMON_CODIGO: TIntegerField;
    cdsItensEMP_CODIGO: TIntegerField;
    cdsItensEMP_GRUPO: TIntegerField;
    cdsItensDATA: TDateField;
    cdsItensHORAS: TTimeField;
    cdsItensUSER_NOME: TStringField;
    cdsItensNOMECOMPUTADOR: TStringField;
    cdsItensIPDAMAQUINA: TStringField;
    cdsItensNI_BAIXADO: TIntegerField;
    cdsItensFIL_CNPJ: TStringField;
    cdsItensPRO_CODIGO_NCM: TStringField;
    cdsItensNI_CFOP: TStringField;
    cdsItensNI_VALOR_DESCONTO: TFMTBCDField;
    cdsItensNI_ICMS_VALOR_BASE_CALCULO: TFMTBCDField;
    cdsItensNI_ICMS_VALOR: TFMTBCDField;
    cdsItensNI_ICMS_ALIQUOTA: TFloatField;
    cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO: TFMTBCDField;
    cdsItensNI_VALOR_TOTAL: TFMTBCDField;
    cdsItensNI_ICMSSUBS_ALIQUOTA: TFloatField;
    cdsItensNI_ICMSSUBS_VALOR: TFMTBCDField;
    cdsItensNI_IPI_VALOR_BASE_CALCULO: TFMTBCDField;
    cdsItensNI_PIS_VALOR_BASE_CALCULO: TFMTBCDField;
    cdsItensNI_IPI_ALIQUOTA: TFloatField;
    cdsItensNI_PIS_ALIQUOTA: TFloatField;
    cdsItensNI_IPI_VALOR: TFMTBCDField;
    cdsItensNI_PIS_VALOR: TFMTBCDField;
    cdsItensNI_COFINS_VALOR_BASE_CALCULO: TFMTBCDField;
    cdsItensTRIBUTACOES_CODIGO: TIntegerField;
    cdsItensNI_COFINS_ALIQUOTA: TFloatField;
    cdsItensNI_COFINS_VALOR: TFMTBCDField;
    cdsItensNI_VALOR_FRETE: TFMTBCDField;
    cdsItensNI_CST: TStringField;
    cdsItensNI_UNID: TStringField;
    cdsItensNI_EAN: TStringField;
    cdsItensNI_VALORSEGURO: TFMTBCDField;
    cdsItensNI_INFORMACAOADICIONAL: TStringField;
    cdsItensNI_COFINS_ALIQUOTA_TIPO: TIntegerField;
    cdsItensNI_PIS_ALIQUOTA_TIPO: TIntegerField;
    cdsItensPRO_CODFABRICANTE: TStringField;
    CdsItensServicoNI_VALORUN: TFMTBCDField;
    CdsItensServicoNI_VALORTOTAL: TFMTBCDField;
    CdsItensServicoSER_DESCRICAO: TStringField;
    CdsItensServicoNI_ALIQISSQN: TFloatField;
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
    QrySumTOTNI_VALOR_TOTAL: TFMTBCDField;
    QrySumTOTNI_VALOR_DESCONTO: TFMTBCDField;
    QrySumTOTNI_VALOR_FRETE: TFMTBCDField;
    QrySumTOTNI_VALORSEGURO: TFMTBCDField;
    QrySumTOTNI_ICMS_VALOR_BASE_CALCULO: TFMTBCDField;
    QrySumTOTNI_ICMS_VALOR: TFMTBCDField;
    QrySumTOTNI_ICMSSUBS_VALOR_BASE_CALCULO: TFMTBCDField;
    QrySumTOTNI_ICMSSUBS_VALOR: TFMTBCDField;
    QrySumTOTNI_IPI_VALOR_BASE_CALCULO: TFMTBCDField;
    QrySumTOTNI_IPI_VALOR: TFMTBCDField;
    QrySumTOTNI_PIS_VALOR_BASE_CALCULO: TFMTBCDField;
    QrySumTOTNI_PIS_VALOR: TFMTBCDField;
    QrySumTOTNI_COFINS_VALOR_BASE_CALCULO: TFMTBCDField;
    QrySumTOTNI_COFINS_VALOR: TFMTBCDField;
    QryPedItensFIL_CODIGO: TIntegerField;
    QryPedItensPED_CODIGO: TIntegerField;
    QryPedItensPI_CODIGO: TIntegerField;
    QryPedItensPRO_CODIGO: TStringField;
    QryPedItensPI_QTD: TFloatField;
    QryPedItensPI_VALORUNIT: TFloatField;
    QryPedItensPI_VALORTOTAL: TFloatField;
    QryPedItensPI_DESC: TStringField;
    QryPedItensPI_COMISSAO: TFloatField;
    QryPedItensOS_CODIGO: TIntegerField;
    QryPedItensPRO_CODBARRAS: TStringField;
    QryPedItensGRA_CODIGO: TIntegerField;
    QryPedItensATIVAR1: TFloatField;
    QryPedItensPRO_TIPO: TStringField;
    QryPedItensMON_CODIGO: TIntegerField;
    QryPedItensDELETADO: TIntegerField;
    QryPedItensPI_VALORCUSTO: TFloatField;
    QryPedItensPI_VALORLUCRO: TFloatField;
    QryPedItensPI_VALORDESCONTO: TFloatField;
    QryPedItensPI_VALORVENDA: TFloatField;
    QryPedItensPI_QTDCOMISSAO: TFloatField;
    QryPedItensVEN_CODIGO: TIntegerField;
    QryPedItensPI_QTDDESCONTO: TFloatField;
    QryPedItensVEN_NOME: TStringField;
    QryPedItensPI_DATA: TDateField;
    QryPedItensPI_CODIGOPAI: TIntegerField;
    QryPedItensPI_STATUS: TIntegerField;
    QryPedItensPI_DATAEFETIVACAO: TDateField;
    QryPedItensCLI_CODIGO: TIntegerField;
    QryPedItensVEN_COM: TFloatField;
    QryPedItensAGE_COM: TFloatField;
    QryPedItensAGE2_COM: TFloatField;
    QryPedItensAGE_CODIGO: TIntegerField;
    QryPedItensAGE2_CODIGO: TIntegerField;
    QryPedItensAGE_NOME: TStringField;
    QryPedItensAGE2_NOME: TStringField;
    QryPedItensUSR_NOME: TStringField;
    QryPedItensCOMPUTADORNOME: TStringField;
    QryPedItensPI_HSLANCAMENTO: TTimeField;
    QryPedItensPI_HSEFETIVACAO: TTimeField;
    QryPedItensPI_NOMEQUEMEFETIVOU: TStringField;
    QryPedItensEMP_CODIGO: TIntegerField;
    QryPedItensEMP_GRUPO: TIntegerField;
    QryPedItensDATA: TDateField;
    QryPedItensHORAS: TTimeField;
    QryPedItensUSER_NOME: TStringField;
    QryPedItensNOMECOMPUTADOR: TStringField;
    QryPedItensIPDAMAQUINA: TStringField;
    QryPedItensPI_ALIQICM: TFloatField;
    QryPedItensPED_IMPRIMIDO: TIntegerField;
    QryPedItensPED_IMPRIMIDO_HS: TTimeField;
    QryPedItensPRO_IMPRIMIDO_DATA: TDateField;
    QryPedItensPED_IMPRIMIDO_USER: TStringField;
    QryPedItensPRO_CODFABRICANTE: TStringField;
    QryPedItensPI_ALI_ICMS: TFloatField;
    QryPedItensPI_TIPOTRIBUTACAO_ICMS: TStringField;
    QryPedItensROTA_CODIGO: TIntegerField;
    QryPedItensPI_TIPODECOMISSAO: TStringField;
    QryPedItensTEC_CODIGO: TIntegerField;
    QryPedItensTEC_VALORCOMISSAO: TFloatField;
    QryPedItensTEC_PERCENTUALCOMISSAO: TFloatField;
    QryPedItensTEC_NOME: TStringField;
    QryPedItensPRO_NOME: TStringField;
    QryPedItensPI_TOTALPRECOVENDA: TFloatField;
    QryPedItensTP_CODIGO: TIntegerField;
    QryPedItensTP_NOME: TStringField;
    QryPedItensGRO_NOME: TStringField;
    QryPedItensSUB_NOME: TStringField;
    QryPedItensMAR_NOME: TStringField;
    QryPedItensMOD_NOME: TStringField;
    QryPedItensCAT_NOME: TStringField;
    QryPedItensSUBCAT_NOME: TStringField;
    QryPedItensPRO_DESCRICAO: TStringField;
    QryPedItensPRO_UNIDADE: TStringField;
    QryPedItensPRO_VALORCUSTOMEDIO: TFloatField;
    QryPedItensPRO_VALORMEDIOVENDA: TFloatField;
    QryPedItensPRO_SERIAL: TStringField;
    QryPedItensPRO_REFERENCIA: TStringField;
    QryPedItensPI_VALORVENDA_H: TFloatField;
    QryPedItensPI_VALORTOTAL_H: TFloatField;
    QryPedItensFIL_CNPJ: TStringField;
    QryPedItensPRO_CODIGO_NCM: TStringField;
    QryPedItensPI_VALORCUSTOTOTAL: TFMTBCDField;
    QrySumTOTSERVTOT: TFMTBCDField;
    procedure cdsCadAfterDelete(DataSet: TDataSet);
    procedure cdsCadAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure edtValueKeyPress(Sender: TObject; var Key: Char);
    procedure gridPesqKeyPress(Sender: TObject; var Key: Char);
    procedure edtValueChange(Sender: TObject);
    procedure cdsCadAfterInsert(DataSet: TDataSet);
    procedure dbeCodCliChange(Sender: TObject);
    procedure SQLQuery1BeforeOpen(DataSet: TDataSet);
    procedure QryItensBeforeOpen(DataSet: TDataSet);
    procedure cdsCadBeforePost(DataSet: TDataSet);
    procedure cdsItensBeforePost(DataSet: TDataSet);
    procedure cdsItensPRO_CODIGOChange(Sender: TField);
    procedure dbgITensKeyPress(Sender: TObject; var Key: Char);
    procedure dbgITensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsItensAfterPost(DataSet: TDataSet);
    procedure cdsItensAfterDelete(DataSet: TDataSet);
    procedure dbgITensEnter(Sender: TObject);
    procedure dbgITensColEnter(Sender: TObject);
    procedure dbgITensExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure dbePedidoExit(Sender: TObject);
    procedure dbeOSExit(Sender: TObject);
    procedure QRYITBeforeOpen(DataSet: TDataSet);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure GerarBoletos1Click(Sender: TObject);
    procedure CupomFiscal1Click(Sender: TObject);
    procedure CdsItensServicoPRO_CODIGOChange(Sender: TField);
    procedure CdsItensServicoBeforePost(DataSet: TDataSet);
    procedure CdsItensServicoAfterDelete(DataSet: TDataSet);
    procedure CdsItensServicoAfterPost(DataSet: TDataSet);
    procedure cdsTitBeforePost(DataSet: TDataSet);
    procedure cdsCadAfterOpen(DataSet: TDataSet);
    procedure QryParamsBeforeOpen(DataSet: TDataSet);
    procedure cdsParamsAfterPost(DataSet: TDataSet);
    procedure cdsCadAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsTitAfterOpen(DataSet: TDataSet);
    procedure cdsCadAfterScroll(DataSet: TDataSet);
    procedure QryCadBeforeOpen(DataSet: TDataSet);
    procedure cdsCadBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QryItensServicoBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure cdsPesqAfterScroll(DataSet: TDataSet);
    procedure RadioButton1Click(Sender: TObject);
    procedure chkEfetivadosClick(Sender: TObject);
    procedure chkTODOSClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure QryLookTributacoesBeforeOpen(DataSet: TDataSet);
    procedure StatusServio1Click(Sender: TObject);
    procedure CriareEnviar1Click(Sender: TObject);
    procedure Opesdetributao1Click(Sender: TObject);
    procedure Deletaritens1Click(Sender: TObject);
    procedure _btnOkClick(Sender: TObject);
    procedure QryCOFBeforeOpen(DataSet: TDataSet);
    procedure cdsItensAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure QryLookCliBeforeOpen(DataSet: TDataSet);
    procedure SQLQuery3BeforeOpen(DataSet: TDataSet);
    procedure EasyTEFAbrirComprovanteNaoFiscalVinculado(
      var operacaoECFOk: Boolean; valorCupom: string);
    procedure EasyTEFAbrirRelatorioGerencial(Sender: TObject);
    procedure EasyTEFAntesEnviarRequisicao(requisicao: TStringList);
    procedure EasyTEFColetarDadosAplicacao(Sender: TObject;
      tipoColeta: array of TColetaDados; valoresColeta: OleVariant;
      var retornoTipoColeta, retornoValoresColeta: OleVariant);
    procedure EasyTEFEfetuarFormaPagamento(var operacaoECFOk: Boolean;
      params: array of string; var retorno: string);
    procedure EasyTEFEncerrarCupomFiscal(Sender: TObject);
    procedure EasyTEFFecharComprovanteNaoFiscalVinculado(
      Sender: TObject);
    procedure EasyTEFFecharRelatorioGerencial(
      var operacaoECFOk: Boolean);
    procedure EasyTEFGerarSequencial(var sequencial: Integer);
    procedure EasyTEFGravarSequencialCorreto(sequencial: Integer);
    procedure EasyTEFImpressoraTemPapel(var operacaoECFOk: Boolean);
    procedure EasyTEFImprimirLeituraX(var operacaoECFOk: Boolean);
    procedure EasyTEFImprimirRelatorioGerencial(
      imagemCupomTef: TStrings; var impressaoOk: Boolean);
    procedure EasyTEFIniciarFechamentoCupomFiscal(
      var operacaoECFOk: Boolean; params: array of string; var retorno: string);
    procedure EasyTEFSubTotalizarCupom(var operacaoECFOk: Boolean;
      params: array of string; var retorno: string);
    procedure EasyTEFTerminarCancelamentoMultiplosCartoes(
      Sender: TObject);
    procedure EasyTEFTerminarFechamentoCupom(
      var operacaoECFOk: Boolean; params: array of string; var retorno: string);
    procedure EasyTEFUsarComprovanteNaoFiscalVinculado(
      imagemCupomTef: TStrings; var impressaoOk: Boolean);
    procedure avisodeimpressaoTimer(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure AbrirGerenciadordeNFe2Click(Sender: TObject);
    procedure ConfigurarparametrosdaNFe1Click(Sender: TObject);
    procedure QRYNFEESTATUSBeforeOpen(DataSet: TDataSet);
    procedure Abrircadastrodeprodutos1Click(Sender: TObject);

  private
    valorTotalCartao: Double;
    { Private declarations }
    procedure CalculaTotal;
    procedure atribuirPropriedade(propriedade: TStrings;
      valor: string; limparPropriedade: Boolean = True);
    function EmiteNota( Pagina: Integer ): integer;
    function GetValue( var nomecampo: string ): string;
    function nulotostring( valor: variant ): variant;
    procedure ImportaNota;
    procedure impotacampos;
    procedure ImportaNotaOS;
    procedure ImportaServ;
    procedure ImportaTiT;
    Procedure CarregaFPG ;
    procedure GerarNFe(NumNFe: String);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure LerConfiguracao;
    procedure calculaimpostos;
    procedure calculaimpostostritutacao;
    procedure validacampos;
    PROCEDURE VALIDAANTESDAIMPORTACAO;



    VAR
    PaginaAtual,QtdPaginas:Integer;
    QtdPorPagina:integer;
    QtdPorPaginaServicos,CODIGONOTA,CODIGOIMPORTACAO:integer;
    STATUS: string;

  public
      { Public declarations }
  procedure fechaabre;
  procedure ModeloNFe;
  end;

const
  FORMA_PGTO_TEF = 'TEF';
var
  FrmCad_NotaFiscalServico: TFrmCad_NotaFiscalServico;

  STipoPGTO: string = 'Cheque';
  CobreBemX: Variant;

implementation

uses UDmHidra, UFrmCad_Produtos, UFrmCad_ProdutosLivrosCds, Extens, Strings,
  U_Funcoes, URjFunctions, UFrmCad_Servico, UFrm_Principal, UDM_PROC, UDMLOOKUP,
  UDMLOOKUP1, UFrmCad_CFOP, UFrmCad_Clientes, ufrmStatus,FileCtrl,ACBrNFeNotasFiscais, DateUtils, ACBrNFeUtil,
  Ufrmcad_alteracaoitensnfe, URJSecurity, FechamentoCupomFrm,
  UFrmcad_ParametroNFe;


const
  SELDIRHELP = 1000;
  NUM_TENTATIVAS = 3;
  TIME_OUT_RETENTAR_ACBR = 100;

{$R *.dfm}

procedure TFrmCad_NotaFiscalServico.cdsCadAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

        Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;


end;

procedure TFrmCad_NotaFiscalServico.cdsCadAfterDelete(DataSet: TDataSet);
begin
  inherited;
        cdsCad.ApplyUpdates(0);
end;


procedure TFrmCad_NotaFiscalServico.cdsCadAfterPost(DataSet: TDataSet);
begin
  inherited;
        cdsCad.ApplyUpdates(0);
end;

procedure TFrmCad_NotaFiscalServico.cdsCadAfterScroll(DataSet: TDataSet);
begin
  inherited;

    if dbeCodCli.Text <> '' then BEGIN
    cdsLookCli.Close;
    cdsLookCli.Params[ 0 ].Value := dbeCodCli.Text;
    cdsLookCli.Open;
    END;
    cdsItens.close;
    cdsItens.open;

    if not ((cdsCadNOT_TIPO.AsString = 'ECF') OR (cdsCadNOT_TIPO.AsString = 'NFe')) then
    BEGIN
    if cdsCadNOT_SITUACAO.AsString = '5' then
    begin
      ShowMessage( 'Nota Cancelada !!! ' );
      cdsCad.ReadOnly := True;
      cdsItens.ReadOnly := true;
      Label68.Caption := 'NOTA FISCAL CANCELADA!!!' ;
      Label68.Font.Color := clRed;
      Label68.Visible := True;
      end else
      begin   
      cdsCad.ReadOnly := false;
      cdsItens.ReadOnly := false;
      Label68.Caption := 'NOTA FISCAL EM ANDAMENTO!!!';
      Label68.Font.Color := clGreen;
      Label68.Visible := True;

    if cdsCadNOT_STATUS.AsString = 'IMPRESSO' then
    begin
    Label68.Caption := 'NOTA FISCAL JÁ IMPRESSO!!!';
    Label68.Font.Color := clBlack;
    Label68.Visible := True;
    end;
    end;
    END;





end;

procedure TFrmCad_NotaFiscalServico.CarregaFPG;
Var A : Integer ;
  { Necessita de uses ACBrECF }
begin

Frm_Principal.ecfativo;


END;

procedure TFrmCad_NotaFiscalServico.impotacampos;
begin
//cdsCad.Edit;
{if CheckBox1.Checked = False then
begin
Exit;
end;

    IF NOT cdsTit.IsEmpty THEN
    BEGIN
    cdsTit.First;
    cdsCad.Edit;

      while not cdsTit.Eof do
      begin
        IF cdsTit.RecNo = 1 THEN
        BEGIN
        IF cdsCadDUPLICATA1.AsString = '' THEN
        cdsCadDUPLICATA1.AsString   := cdsCadNOT_NR.AsString;
        IF cdsCadVENCIMENTO1.AsString = '' THEN
        cdsCadVENCIMENTO1.AsString  := cdsTitTIT_VENCIMENTO.AsString;
        IF cdsCadVALOR1.AsString = '' THEN
        cdsCadVALOR1.AsString       := FormatFloat( '####,##0.00',( cdsTitTIT_VALOR.AsFloat ));
        END;

        IF cdsTit.RecNo = 2 THEN
        BEGIN
        IF cdsCadDUPLICATA2.AsString = '' THEN
        cdsCadDUPLICATA2.AsString   := cdsCadNOT_NR.AsString;
        IF cdsCadVENCIMENTO2.AsString = '' THEN
        cdsCadVENCIMENTO2.AsString  := cdsTitTIT_VENCIMENTO.AsString;
        IF cdsCadVALOR2.AsString = '' THEN
        cdsCadVALOR2.AsString       := FormatFloat( '####,##0.00',( cdsTitTIT_VALOR.AsFloat ));
        END;

        IF cdsTit.RecNo = 3 THEN
        BEGIN
        IF cdsCadDUPLICATA3.AsString = '' THEN
        cdsCadDUPLICATA3.AsString   := cdsCadNOT_NR.AsString;
        IF cdsCadVENCIMENTO3.AsString = '' THEN
        cdsCadVENCIMENTO3.AsString  := cdsTitTIT_VENCIMENTO.AsString;
        IF cdsCadVALOR3.AsString = '' THEN
        cdsCadVALOR3.AsString       := FormatFloat( '####,##0.00',( cdsTitTIT_VALOR.AsFloat ));
        END;

        IF cdsTit.RecNo = 4 THEN
        BEGIN
        IF cdsCadDUPLICATA4.AsString = '' THEN
        cdsCadDUPLICATA4.AsString   := cdsCadNOT_NR.AsString;
        IF cdsCadVENCIMENTO4.AsString = '' THEN
        cdsCadVENCIMENTO4.AsString  := cdsTitTIT_VENCIMENTO.AsString;
        IF cdsCadVALOR4.AsString = '' THEN
        cdsCadVALOR4.AsString       := FormatFloat( '####,##0.00',( cdsTitTIT_VALOR.AsFloat ));
        END;

        IF cdsTit.RecNo = 5 THEN
        BEGIN
        IF cdsCadDUPLICATA5.AsString = '' THEN
        cdsCadDUPLICATA5.AsString   := cdsCadNOT_NR.AsString;
        IF cdsCadVENCIMENTO5.AsString = '' THEN
        cdsCadVENCIMENTO5.AsString  := cdsTitTIT_VENCIMENTO.AsString;
        IF cdsCadVALOR5.AsString = '' THEN
        cdsCadVALOR5.AsString       := FormatFloat( '####,##0.00',( cdsTitTIT_VALOR.AsFloat ));
        END;

        IF cdsTit.RecNo = 6 THEN
        BEGIN
        IF cdsCadDUPLICATA6.AsString = '' THEN
        cdsCadDUPLICATA6.AsString   := cdsCadNOT_NR.AsString;
        IF cdsCadVENCIMENTO6.AsString = '' THEN
        cdsCadVENCIMENTO6.AsString  := cdsTitTIT_VENCIMENTO.AsString;
        IF cdsCadVALOR6.AsString = '' THEN
        cdsCadVALOR6.AsString       := FormatFloat( '####,##0.00',( cdsTitTIT_VALOR.AsFloat ));
        END;

    cdsTit.Next;
    END;

    END; }
end;


procedure TFrmCad_NotaFiscalServico.ImportaNota;
var linha, cnt, QTDPAGINA: integer;
  CFOP, PEDIDO: string;
begin

 // QTDPAGINA := 28;

         TRY
         if cdsCadNOT_CODIGO.AsFloat > 0 then BEGIN
         DmHidra.Qry.SQL.Clear;
         DmHidra.Qry.sql.Add( ' DELETE FROM NOTA_ITENS ' );
         DmHidra.Qry.sql.Add( ' WHERE FIL_CODIGO=' + cdsCadFIL_CODIGO.AsString );
         DmHidra.Qry.sql.Add( ' AND NOT_CODIGO=' + cdsCadNOT_CODIGO.AsString  );
         DmHidra.Qry.ExecSQL;
         END;
         EXCEPT
         END;

         TRY
         if cdsCadNOT_CODIGO.AsFloat > 0 then BEGIN
         DmHidra.Qry.SQL.Clear;
         DmHidra.Qry.sql.Add( ' DELETE FROM NOTA_ITENS_SERVICO ' );
         DmHidra.Qry.sql.Add( ' WHERE FIL_CODIGO=' + cdsCadFIL_CODIGO.AsString );
         DmHidra.Qry.sql.Add( ' AND NOT_CODIGO=' + cdsCadNOT_CODIGO.AsString  );
         DmHidra.Qry.ExecSQL;
         END;
         EXCEPT
         END;

            if (cdsItens.IsEmpty OR CdsItensServico.IsEmpty) then BEGIN
            if MessageBox(Handle, 'Já existe uma nota lançada, ' + #13#10 + 
              'deseja realmente refazer o lançamento!', 'ATENÇÃO!', MB_YESNO +
              MB_ICONQUESTION) = IDNO then
            begin
            Abort;
            end; 
            END;




  qryPed.Close;
  qryPed.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  qryPed.ParamByName( 'PEDIDO' ).AsInteger := cdsCadPED_CODIGO.AsInteger;
  qryPed.Open;

  qryPedItensGroup.Close;
  qryPedItensGroup.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  qryPedItensGroup.ParamByName( 'PEDIDO' ).AsInteger := cdsCadPED_CODIGO.AsInteger;
  qryPedItensGroup.Open;



    if cdsCad.State in [ DsEdit, DsInsert ] then
    begin
    cdsCadCLI_CODIGO.AsInteger := qryPedCLI_CODIGO.AsInteger;
    cdsCadNOT_DESCONTO.AsFloat := qryPedPED_DESCONTO.AsFloat;

    cdsCad.Post;

    CODIGOIMPORTACAO:= StrToInt(dbePedido.Text);

        Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;
    cdsCad.Edit;

    END;





  cnt := 0;

  while not qryPedItensGroup.Eof do
    begin
      Application.ProcessMessages;
      cdsItens.Insert;
      cdsItensPRO_CODIGO.AsString := qryPedItensGroupARG_CODIGO.AsString;
      cdsItensPRO_NOME.AsString := qryPedItensGroupAGR_DESCRICAO.AsString;
      cdsItensNI_QTD.AsFloat := qryPedItensGroupQTDPECAS.AsFloat;
      cdsItensNI_SUBTOT.AsFloat := qryPedItensGroupSUBTOTAL.AsFloat;
      cdsItensNI_VALORUN.AsFloat := ( cdsItensNI_SUBTOT.AsFloat / cdsItensNI_QTD.AsFloat );
      cdsItens.Post;
      qryPedItensGroup.Next;

      cnt := cnt + 1;
      if cnt = QTDPAGINA then
        begin
          cnt := 0;
         // CalculaTotal;

          PEDIDO := inttostr(CODIGOIMPORTACAO);
          CFOP := cdsCadCFOP_COF.AsString;

          cdsCad.Insert;
          cdsCadNOT_DATAEMISSAO.AsDateTime := Date;
          cdsCadCLI_CODIGO.AsInteger := qryPedCLI_CODIGO.AsInteger;
          cdsCadNOT_DESCONTO.AsFloat := qryPedPED_DESCONTO.AsFloat;


          cdsCadPED_CODIGO.AsString := PEDIDO;
          cdsCadCFOP_COF.AsString := CFOP;
          if cdsCad.State in [ DsEdit, DsInsert ] then
            //cdsCad.Post;
        end;
    end;

  QryPedItens.Close;
  QryPedItens.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  QryPedItens.ParamByName( 'PEDIDO' ).AsInteger := cdsCadPED_CODIGO.AsInteger;
  QryPedItens.Open;

  while not QryPedItens.Eof do
    begin
      cdsItens.Insert;
      cdsItensPRO_CODIGO.AsString := QryPedItensPRO_CODIGO.AsString;
      cdsItensPRO_NOME.AsString := QryPedItensPI_DESC.AsString;
      cdsItensNI_QTD.AsFloat := QryPedItensPI_QTD.AsFloat;
      cdsItensNI_SUBTOT.AsFloat := QryPedItensPI_VALORTOTAL.AsFloat;
      cdsItensNI_VALORUN.AsFloat := QryPedItensPI_VALORUNIT.AsFloat;
      cdsItensNI_ICMS_ALIQUOTA.AsFloat := DmHidra.cdsParamsPRO_ICMS.AsFloat;
      cdsItensPRO_CODIGO_NCM.AsString  := QryPedItensPRO_CODIGO_NCM.AsString;
      cdsItens.Post;
      QryPedItens.Next;
    end;


  if  ( CDSCAD.State in [ dsiNSERT, DSedit ] ) then
  begin
    if cdsCadCFOP_COF.AsString = '' then
    BEGIN
    if cdsLookCliCLI_END_CID_UF.AsString = DmHidra.cdsFiliaisFIL_END_CID_UF.AsString then
    begin
     cdsCadCFOP_COF.AsString := '5.102'
    end else
    begin
    cdsCadCFOP_COF.AsString := '6.102';
    END;
    END;

  end;
  //  CalculaTotal;




end;

procedure TFrmCad_NotaFiscalServico.ImportaServ;
var linha, cnt: integer;
  CFOP, PEDIDO: string;
begin

  //cdsCad.Edit;

  qryOS.Close;
  qryOS.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  qryOS.ParamByName( 'OS' ).AsInteger := cdsCadOS_CODIGO.AsInteger;
  qryOS.Open;

  QRYIT.Close;
  QRYIT.Open;

  while not QRYIT.Eof do
    begin
      CdsItensServico.Insert;
      CdsItensServicoNOT_CODIGO.AsInteger := cdsCadNOT_CODIGO.AsInteger;
      CdsItensServicoPRO_CODIGO.AsInteger := QRYITSER_CODIGO.AsInteger;

      CdsItensServicoNI_QTD.AsInteger := 1;
      CdsItensServicoNI_VALORUN.AsVariant := QRYITIT_VAL_SERVICO.AsVariant;
      CdsItensServicoNI_VALORTOTAL.AsVariant := QRYITIT_VAL_SERVICO.AsVariant * CdsItensServicoNI_QTD.AsInteger;
      CdsItensServicoNI_ALIQISSQN.AsVariant := cdsCadNOT_ALIISSQN.AsFloat;
      CdsItensServicoNI_TOTALISSQN.AsVariant := CdsItensServicoNI_ALIQISSQN.AsVariant * CdsItensServicoNI_QTD.AsInteger;

      CdsItensServico.Post;
      QRYIT.Next;

    end;
//  CalculaTotal;
  if  ( CDSCAD.State in [ dsiNSERT, DSedit ] ) then
  begin

     if cdsCadCFOP_COF.AsString = '' then
    BEGIN
    if cdsLookCliCLI_END_CID_UF.AsString = DmHidra.cdsFiliaisFIL_END_CID_UF.AsString then
    begin
    if not ((QryPedItens.IsEmpty) and (QRYIT.IsEmpty))  then
    cdsCadCFOP_COF.AsString := '5.102/5.933'
    else
     cdsCadCFOP_COF.AsString := '5.102'
    end else
    begin
    if not ((QryPedItens.IsEmpty) and (QRYIT.IsEmpty))  then
    cdsCadCFOP_COF.AsString := '6.102/6.933'
    else
    cdsCadCFOP_COF.AsString := '6.102';
    END;
    END;

  end;

end;

procedure TFrmCad_NotaFiscalServico.ImportaTiT;
begin
    IF NOT cdsCad.IsEmpty THEN
    BEGIN
          if (dbePedido.Text <> '')  AND (dbePedido.Text <> '0')  then
          begin
          try

          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('PED_CODIGO').AsInteger   :=  cdsCadped_CODIGO.AsInteger ;
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('FIL_CODIGO').AsInteger   :=  cdsCadFIL_CODIGO.AsInteger;
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('NF_NUMERO').AsInteger   :=  cdsCadNOT_NR.AsInteger;
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('OS_CODIGO').AsInteger   :=  cdsCadOS_CODIGO.AsInteger;
          DM_PROC.UPDATE_NUMERO_NF.ExecProc;
          except
          end;

          try

          dmhidra.ConnHidra.close;
          dmhidra.ConnHidra.open;
          cdsTit.Close;
          QryTit.Close;
          QryTit.SQL.Clear;
          QryTit.SQL.Text := 'SELECT T.* FROM TITULOS T WHERE T.FIL_CODIGO ='+IntToStr(DmHidra.Filial) ;
          QryTit.SQL.Add(' AND T.PED_CODIGO =' +cdsCadped_CODIGO.AsString);
          QryTit.SQL.Add('ORDER BY T.TIT_VENCIMENTO');
         // cdsTit.Close;
          cdsTit.Open;
          cdsTit.First;
          except
          end;

          end;




          if (dbeOS.Text <> '') AND (dbeOS.Text <> '0') then begin

          try
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('PED_CODIGO').AsInteger   :=  cdsCadped_CODIGO.AsInteger ;
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('FIL_CODIGO').AsInteger   :=  cdsCadFIL_CODIGO.AsInteger;
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('NF_NUMERO').AsInteger   :=  cdsCadNOT_NR.AsInteger;
          DM_PROC.UPDATE_NUMERO_NF.Params.ParamByName('OS_CODIGO').AsInteger   :=  cdsCadOS_CODIGO.AsInteger;
          DM_PROC.UPDATE_NUMERO_NF.ExecProc;
          except
          end;

          try
          dmhidra.ConnHidra.close;
          dmhidra.ConnHidra.open;
          cdsTit.close;
          QryTit.Close;
          QryTit.SQL.Clear;
          QryTit.SQL.Text := 'SELECT T.* FROM T.TITULOS WHERE T.FIL_CODIGO ='+IntToStr(DmHidra.Filial) ;
          QryTit.SQL.Add(' AND T.OS_CODIGO ='+cdsCadOS_CODIGO.AsString);
          QryTit.SQL.Add('ORDER BY T.TIT_VENCIMENTO');
         // qrytit.SQL.SaveToFile('c:\x.txt');
         // cdsTit.close;
          cdsTit.Open;
          cdsTit.First;

          except
          end;

end;
end;
end;

procedure TFrmCad_NotaFiscalServico.QRYNFEESTATUSBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with TSQLQuery(Dataset) do
  begin
  //Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
  Params.ParamByName('FIL_CODIGO').Value     := cdsCadFIL_CODIGO.AsInteger;
  Params.ParamByName('NOT_NUMERONFE').Value  := cdsCadNOT_NUMERONFE.AsInteger;
  end;
end;

procedure TFrmCad_NotaFiscalServico.NotaFiscal1Click(Sender: TObject);
var x, y: integer;
QtdPaginasReal : Real;
QtdPaginasRealServ : Real;
QtdPaginasServ:Integer;
begin
  inherited;


     IF  (DMHIDRA.cdsParamsSISTEMACOMPRO.AsString <> 'SOK') THEN
     begin
      Application.MessageBox('Para usar esse recurso somente versão registrada do sistema!'
        + #13#10 + 'comercial@dotcompany.com.br', 'ATENÇÃO!', MB_OK +
        MB_ICONINFORMATION);
      abort;
     end;

        Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;
        cdsCad.edit;
        cdsCad.post;


    if cdsCadNOT_STATUS.AsString = 'IMPRESSO' then
    begin
          if (PasswordInputBox('SENHA','DIGITE SENHA DO ADMINISTRADOR!') = DmHidra.CdsEmpresaADM_SENHA.AsString) then
          BEGIN

          end else
          begin
              ShowMessage('------->>>> SENHA ERRADA!!!!!');
              EXIT;
          end;
    end;



      Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;

  QtdPorPagina :=cdsParamsNOTA_QTDITEMPRODUTO.AsInteger;
  QtdPorPaginaServicos := cdsParamsNOTA_QTDITEMSERVICO.AsInteger;

  try
  //Calcula paginas necessarias para o itens VENDA
  QtdPaginas := trunc( cdsItens.RecordCount / QtdPorPagina);
  QtdPaginasReal :=  cdsItens.RecordCount / QtdPorPagina;
  except begin
   ShowMessage('Cadastrar quantidade de itens por nota no parametro, ou chame o administrador do sistema para configuração!');
   Abort;
   end;

  end;

  if ( QtdPaginasReal -  QtdPaginas ) >  0 then
  begin
    QtdPaginas := QtdPaginas + 1;
  end;

  //Calcula paginas necessarias para o itens SERVIÇOS
  QtdPaginasServ := trunc( CdsItensServico.RecordCount / QtdPorPaginaServicos);
  QtdPaginasRealServ :=  CdsItensServico.RecordCount / QtdPorPaginaServicos;

  if ( QtdPaginasRealServ -  QtdPaginasServ ) >  0 then
  begin
    QtdPaginasServ := QtdPaginasServ + 1;
  end;


  if ( QtdPaginasServ > QtdPaginas )
  then
  begin
   QtdPaginas := QtdPaginasServ;
  end;


     for x:=1 to QtdPaginas do
     begin
        if x > 1 then
           ShowMessage('Insira outro formulario e pressione OK ' + IntToStr(x));
           PaginaAtual := x;
           EmiteNota(x);
     end;

  cdscad.Edit;
  cdsCadNOT_STATUS.AsString := 'IMPRESSO';
  cdsCad.Post;


end;

procedure TFrmCad_NotaFiscalServico.ImportaNotaOS;
var linha, cnt, QTDPAGINA: integer;
  CFOP, PEDIDO: string;
begin
  QTDPAGINA := 24;


         TRY
         if cdsCadNOT_CODIGO.AsFloat > 0 then BEGIN
         DmHidra.Qry.SQL.Clear;
         DmHidra.Qry.sql.Add( ' DELETE FROM NOTA_ITENS ' );
         DmHidra.Qry.sql.Add( ' WHERE FIL_CODIGO=' + cdsCadFIL_CODIGO.AsString );
         DmHidra.Qry.sql.Add( ' AND NOT_CODIGO=' + cdsCadNOT_CODIGO.AsString  );
         DmHidra.Qry.ExecSQL;
         END;
         EXCEPT
         END;

         TRY
         if cdsCadNOT_CODIGO.AsFloat > 0 then BEGIN
         DmHidra.Qry.SQL.Clear;
         DmHidra.Qry.sql.Add( ' DELETE FROM NOTA_ITENS_SERVICO ' );
         DmHidra.Qry.sql.Add( ' WHERE FIL_CODIGO=' + cdsCadFIL_CODIGO.AsString );
         DmHidra.Qry.sql.Add( ' AND NOT_CODIGO=' + cdsCadNOT_CODIGO.AsString  );
         DmHidra.Qry.ExecSQL;
         END;
         EXCEPT
         END;



  if cdsCad.State in [ DsEdit, DsInsert ] then
    begin
      cdsCad.Post;
     end;
    TRY
   
    CODIGOIMPORTACAO:= StrToInt(dbeOS.Text);

        Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;
    cdsCad.Edit;
    except
    END;

  qryOS.Close;
  qryOS.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  qryOS.ParamByName( 'OS' ).AsInteger := CODIGOIMPORTACAO;
  qryOS.Open;
  TRY
  qryosItensGroup.Close;
  qryosItensGroup.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  qryosItensGroup.ParamByName( 'PEDIDO' ).AsInteger := cdsCadOS_CODIGO.AsInteger;
  qryosItensGroup.Open;
  EXCEPT
  END;

  QryOSItens.Close;
  QryOSItens.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  QryOSItens.ParamByName( 'PEDIDO' ).AsInteger := cdsCadOS_CODIGO.AsInteger;
  QryOSItens.Open;

  CDSCADOS_CODIGO.AsInteger := CODIGOIMPORTACAO;
  cdsCadNOT_DATAEMISSAO.AsDateTime := Date;
  cdsCadCLI_CODIGO.AsInteger := qryOSCLI_CODIGO.AsInteger;

  if not QryOSItens.IsEmpty then
  cdsCadNOT_DESCONTO.AsFloat := qryOSOS_VAL_DESC.AsFloat
  else
  cdsCadNOT_ITENSSERVICO_DESCONTO.AsFloat := qryOSOS_VAL_DESC.AsFloat;

  cnt := 0;

  while not qryosItensGroup.Eof do
    begin
      cdsItens.Insert;
      cdsItensPRO_CODIGO.AsString   := qryosItensGroupARG_CODIGO.AsString;
      cdsItensPRO_NOME.AsString     := qryosItensGroupAGR_DESCRICAO.AsString;
      cdsItensNI_QTD.AsFloat        := qryosItensGroupQTDPECAS.AsFloat;
      cdsItensNI_SUBTOT.AsFloat     := qryosItensGroupSUBTOTAL.AsFloat;
     // cdsItensNI_ICMS_ALIQUOTA.AsFloat    := DmHidra.cdsParamsPRO_ICMS.AsFloat;
      cdsItensNI_VALORUN.AsFloat    := ( cdsItensNI_SUBTOT.AsFloat / cdsItensNI_QTD.AsFloat );
      cdsItens.Post;
      qryosItensGroup.Next;

      cnt := cnt + 1;
      if cnt = QTDPAGINA then
        begin
          cnt := 0;
       //   CalculaTotal;

          PEDIDO := cdsCadPED_CODIGO.AsString;
          CFOP := cdsCadCFOP_COF.AsString;

          cdsCad.Insert;
          cdsCadNOT_DATAEMISSAO.AsDateTime := Date;
          cdsCadCLI_CODIGO.AsInteger := qryOSCLI_CODIGO.AsInteger;
          cdsCadNOT_DESCONTO.AsFloat := qryOSOS_VAL_DESC.AsFloat;

          cdsCadPED_CODIGO.AsString := PEDIDO;
          cdsCadCFOP_COF.AsString := CFOP;
          if cdsCad.State in [ DsEdit, DsInsert ] then
          cdsCad.Post;
        end;
    end;
  QryOSItens.Close;
  QryOSItens.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  QryOSItens.ParamByName( 'PEDIDO' ).AsInteger := cdsCadOS_CODIGO.AsInteger;
  QryOSItens.Open;
  QryOSItens.First;
  while not QryOSItens.Eof do
    begin
      cdsItens.Insert;

      DmHidra.QryMax.Close;
      DmHidra.QryMax.SQL.Text := 'SELECT MAX(NI_CODIGO) CODIGO FROM NOTA_ITENS ';
      DmHidra.QryMax.Open;
      cdsItensNI_CODIGO.AsInteger := DmHidra.QryMaxCODIGO.asinteger + 1;
      cdsItensNOT_CODIGO.AsInteger := cdsCadNOT_CODIGO.AsInteger;
      cdsItensFIL_CODIGO.AsInteger := DmHidra.Filial;

      cdsItensNI_SUBTOT.AsFloat := cdsItensNI_QTD.AsFloat * cdsItensNI_VALORUN.AsFloat;


      cdsItensPRO_CODIGO.AsString := QryOSItensPRO_CODIGO.AsString;
      cdsItensPRO_NOME.AsString := QryOSItensPI_DESC.AsString;
      cdsItensNI_QTD.AsFloat := QryOSItensPI_QTD.AsFloat;
      cdsItensNI_SUBTOT.AsFloat := QryOSItensPI_VALORTOTAL.AsFloat;
      cdsItensNI_VALORUN.AsFloat := QryOSItensPI_VALORUNIT.AsFloat;
      cdsItensNI_ICMS_ALIQUOTA.AsFloat := DmHidra.cdsParamsPRO_ICMS.AsFloat;
      cdsItensPRO_CODIGO_NCM.AsString  := QryOSItensPRO_CODIGO_NCM.AsString;

      cdsItens.Post;
      QryOSItens.Next;
    end;
  qryOS.Close;
  qryosItensGroup.Close;
  QryOSItens.Close;

 // CalculaTotal;
  if cdsCad.State in [ DsEdit, DsInsert ] then
    //cdsCad.Post;
end;
                             // emite nota fiscal
function TFrmCad_NotaFiscalServico.EmiteNota( Pagina: Integer ): integer;
var
  nextline, lastline, x, y, {cnt,} tmp, tmp1, tmp2, descontado, c: integer;
  linha, {Texto,} espaco, valorcampo, nomecampo, imp, resultado: string;
  F: TextFile;
  Nnota {, Nultimanota,confirma}: longint;
  ProdAtual: integer;
  //ini:TIniFile;
  posCampos ,I,linhainicialserv: integer;
begin
  inherited;
  linha :=''; {Texto,}
  espaco:='';
  valorcampo :='';
  nomecampo :='';
  imp:='';
  resultado:='';


  cdsItens.Close;
  CdsItensServico.Close;

  cdsItens.Open;
  CdsItensServico.Open;

  cdsCampos.Close;

  descontado := 0;
  Application.MessageBox( 'Alinhe o formulario e pressione OK', 'Confirmação', MB_OK + MB_ICONEXCLAMATION );
  cdsCampos.Params.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  cdsCampos.Open;
  y := 0;
  x := 0;

  AssignFile( F, 'nota' + IntToStr(PaginaAtual) + '.txt' );
 //  try
 //  CloseFile( F );
 //  except
 // end;
 Reset(F);
  Rewrite( F );
  write( F, chr( 27 ) + 'P' + chr( 15 ) );


  application.ProcessMessages;

  cdsCampos.Last;
  lastline := cdsCamposPOSY.AsInteger;

  cdsCampos.first;
  nextline := cdsCamposPOSY.asinteger;

  // **********************************************************************************
  // LOOP PRINCIAL DAS LINHAS DA NOTA
  // **********************************************************************************
  while ( y < lastline ) do
    begin
      y := y + 1;
      application.ProcessMessages;

      linha := ' '; //intTOstr(y);
      cdsCampos.Filter := 'POSY=' + inttostr( y );
      cdsCampos.Filtered := true;


      // **********************************************************************************
      // Loop Dos campos da linha atual
      // **********************************************************************************

      if ( cdsCampos.RecordCount > 0 ) then
        begin
          cdscampos.First;
          while ( not ( cdsCampos.Eof ) ) //enquANTO NAO CHEGAR NO FIM DOS CAMPOS
            and ( cdsCamposCAMPO.AsString <> 'CN_PROCODIGO' )
            and ( cdsCamposCAMPO.AsString <> 'CN_OS_DESCSERVICO' )  do
          //  and ( cdsCamposCAMPO.AsString <> 'CN_OS_VALORBASEISSQN' ) do
          //  and ( cdsCamposCAMPO.AsString <> 'CN_OS_VALORDOISSQN' ) do
            begin

              espaco := DupeString( ' ', ( cdsCamposPOSX.AsInteger ) - length( linha ) );
              nomecampo := cdsCamposCAMPO.AsString;

              if ( Pagina = QtdPaginas ) then
              begin
                valorcampo := GetValue( nomecampo );
              end
              else
              begin
                valorcampo := '---';

                IF (cdsCamposCATEGORIA.AsString ='CABECALHO') THEN
                  valorcampo := GetValue( nomecampo );

                  IF (cdsCamposCATEGORIA.AsString ='OBS') THEN
                  valorcampo := GetValue( nomecampo );  

                IF (cdsCamposCATEGORIA.AsString ='TRANSPORTADORA') THEN
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='DATA') then
                  valorcampo := GetValue( nomecampo );

                  if (cdsCamposCATEGORIA.AsString ='NATUREZA') then
                  valorcampo := GetValue( nomecampo );

                  if (cdsCamposCATEGORIA.AsString ='DESTINATARIO') then
                  valorcampo := GetValue( nomecampo );

                  IF (cdsCamposCATEGORIA.AsString ='OUTROS') THEN
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='CABECALHO LINHA 1') then
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='CABECALHO LINHA 2') THEN
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='CABECALHO LINHA 3') then
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='CABECALHO LINHA 4') then
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='NUMERO NOTA') then
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='ITENS') then
                  valorcampo := GetValue( nomecampo );

                if (cdsCamposCATEGORIA.AsString ='SERVICO') then
                  valorcampo := GetValue( nomecampo );

               // IF (cdsCamposCATEGORIA.AsString ='IMPOSTOS') THEN
                //  valorcampo := GetValue( nomecampo );

              end;

              linha := linha + espaco + valorcampo;
              cdsCampos.Next;
            end;

        // **********************************************************************************
        // ITENS DO SERVICOS
        // **********************************************************************************

          if cdsCamposCAMPO.AsString = 'CN_OS_DESCSERVICO' then
          begin
            posCampos := y;
            cdsItensServico.First;
            IF NOT CdsItensServico.IsEmpty THEN
            BEGIN
            linhainicialserv := y;
                  while not CdsItensServico.Eof do
                  begin
                        if (CdsItensServico.RecNo <= ( QtdPorPaginaServicos * PaginaAtual  )) and (CdsItensServico.RecNo > (( QtdPorPaginaServicos * (PaginaAtual-1))  ))        then
                        begin
                                cdsCampos.Filter := 'POSY=' + inttostr( y ) + ' OR POSY=' + inttostr(posCampos) ;
                                cdsCampos.Filtered := true;
                                linha := ' '; //intTOstr(y);
                                cdscampos.First;
                                while not cdsCampos.Eof do
                                begin

                                    espaco := DupeString( ' ', ( cdsCamposPOSX.AsInteger ) - length( linha ) );
                                    nomecampo := cdscAMPOSCAMPO.AsString;
                                    valorcampo := GetValue( nomecampo );
                                    linha := linha + espaco + valorcampo;
                                    cdsCampos.Next;
                                end;
                                writeln( F, linha );


                               // if not CdsItensServico.eof then
                                y := y + 1; //arrumou o pal !!!!

                        end;
                        CdsItensServico.next;
                  end;

          if ( CdsItensServico.Eof ) and ( descontado = 0 ) and  ( Pagina = QtdPaginas ) then
           begin
              if cdsCadNOT_ITENSSERVICO_DESCONTO.AsFloat > 0 then
              begin
                  linha := ' '; //intTOstr(y);
                  valorcampo := '               ************************************ Valor Total Bruto dos servicos:  ' + 'R$ ' + FormatFloat( '####,##0.00',( cdsCadNOT_ITENS_SERV_SUBTOTAL.AsFloat ) ) + ' *************************';
                  Writeln( F, valorcampo );
                  y := y + 1;

                  //Imprime os dados do desconto
                  linha := ' '; //intTOstr(y);
                  valorcampo := '               ************************************ Valor total do Desconto.......:  ' + 'R$ ' + FormatFloat( '####,##0.00', ( cdsCadNOT_ITENSSERVICO_DESCONTO.AsFloat ) ) + ' *************************';
                  writeln( F, valorcampo );
                  y := y + 1;
                  descontado := 1;
               end;
           end;

             end;



             linha := ' ';
             if (linhainicialserv <> y) and  (linhainicialserv <> 0) then
             begin
            //  y := y - 2;
             end;

          END;


        // **********************************************************************************
        // ITENS DOS PRODUTOS
        // **********************************************************************************

          if cdscAMPOSCAMPO.AsString = ( 'CN_PROCODIGO' ) then
            begin


              cdsItens.First;
              //ProdAtual := 0 ;
              while not CdsItens.Eof do
              begin
                if (cdsItens.RecNo <= ( QtdPorPagina * PaginaAtual  )) and (cdsItens.RecNo > (( QtdPorPagina * (PaginaAtual-1))  ))        then
                begin
                  linha := ' '; //intTOstr(y);
                  cdscampos.First;
                  while not cdsCampos.Eof do
                  begin
                      espaco := DupeString( ' ', ( cdsCamposPOSX.AsInteger ) - length( linha ) );
                      nomecampo := cdscAMPOSCAMPO.AsString;
                      valorcampo := GetValue( nomecampo );
                      linha := linha + espaco + valorcampo;
                      cdsCampos.Next;
                  end;
                  //IMPRIME a linha DO PRODUT0
                  writeln( F, linha );
                  //memo1.lines.Add(linha);
                  y := y + 1;
                  //PROXIMO ITEM DA NOTA
                end;
              linha := ' ';
              CdsItens.next;
              end;

            end;


            // estou mudando
            //if ( CdsItens.Eof and CdsItensServico.Eof ) and ( descontado = 0 ) then


           if ( CdsItens.Eof ) and ( descontado = 0 ) and  ( Pagina = QtdPaginas ) then
           begin
              if cdsCadNOT_DESCONTO.AsFloat > 0 then
              begin
                  linha := ' '; //intTOstr(y);
                  valorcampo := '               ************************************ Valor Total Bruto dos produtos:  ' + 'R$ ' + FormatFloat( '####,##0.00',( cdsCadNOT_ITENS_TOTALPROD.AsFloat ) ) + ' *************************';
                  Writeln( F, valorcampo );
                  y := y + 1;

                  //Imprime os dados do desconto
                  linha := ' '; //intTOstr(y);
                  valorcampo := '               ************************************ Valor total do Desconto.......:  ' + 'R$ ' + FormatFloat( '####,##0.00', ( cdsCadNOT_DESCONTO.AsFloat ) ) + ' *************************';
                  writeln( F, valorcampo );
                  y := y + 1;
                  descontado := 1;
               end;
           end;




         if     cdscAMPOSCAMPO.AsString = ('CN_OS_VALORBASEISSQN') then
         begin
                if not varISNull( cdsCadNOT_BASEISSQN.AsFloat ) then
                BEGIN
                 if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
                 BEGIN
                 REsultado  := 'XXXXXXX' ;
                 END ELSE
                 BEGIN
                 REsultado  := FormatFloat( '#####0.00', cdsCadNOT_BASEISSQN.AsFloat) ;
                 END;
               END;
         END;




    if cdscAMPOSCAMPO.AsString = ( 'CN_OS_VALORDOISSQN' ) then
    begin
       if not varISNull( cdsCadNOT_VALISSQN.AsFloat ) then
       BEGIN
        if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
        BEGIN
         REsultado := 'XXXXX';
        END ELSE
        BEGIN
         REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALISSQN.AsFloat );
        END;
      END;
    END;

end;


      writeln( F, linha );

    end;

     //write( F, chr( 12 ) );

     for  i:= 0 to 2  do
     begin
       writeln( F, '' );
     end;


  try
  finally
    CloseFile( F );
  end;
  try
  PrintFile(  'nota' + IntToStr(PaginaAtual) + '.txt', 'NOTA' );
  except
   ShowMessage('Impressora NOTA Não encontrada, o nome da impressora que você utiliza para imprimir a nota fiscal deve ser alterado para - NOTA -!!!!! ');
   END;
   end;

procedure TFrmCad_NotaFiscalServico.GerarBoletos1Click(Sender: TObject);
begin
  inherited;
     CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
end;

function TFrmCad_NotaFiscalServico.GetValue( var nomecampo: string ): string;
var
  STMP, dt, resultado: string;
  valor: real;
begin
  REsultado := ' ';

  {  if ( nomecampo = 'CN_SAIDA' ) then
    begin
    if DMLOOKUP.cdsCOFCFOP_ENTSAI.AsString = 'S' theN BegiN
        REsultado := 'XXX';
        cdsCad.Edit;
        cdsCadNOT_ENTRADASAIDA.AsInteger := 0;
        cdsCad.Post;
    END;
    if DMLOOKUP.cdsCOFCFOP_ENTSAI.Asstring = 'E' then
    BEGIN
        REsultado := ' ';
        cdsCad.Edit;
        CdsCadNOT_ENTRADASAIDA.AsInteger := 1;
        cdsCad.Post;
    END;
    end; }

  {if ( nomecampo = 'CN_ENTRADA' ) then
    begin
      if DMLOOKUP.cdsCOFCFOP_ENTSAI.AsString = 'S' then begin
        REsultado := ' ';
      //  CdsCadNOT_ENTRADASAIDA.AsInteger := 0;
      end;
      if DMLOOKUP.cdsCOFCFOP_ENTSAI.Asstring = 'E' then  begin
        REsultado := 'XXX';
       // CdsCadNOT_ENTRADASAIDA.AsInteger := 1;
      end;
    end; }

        // mudei para ficar somente saida
        REsultado := 'XXX';
        cdsCad.Edit;
        cdsCadNOT_ENTRADASAIDA.AsInteger := 0; //0 igual a saida...
        cdsCad.Post;




  if ( nomecampo = 'CN_CODIGONOTA' ) or ( nomecampo = 'CN_NOTAFISCALFATURA' ) then
    REsultado := cdsCadNOT_NR.asstring;
  if ( nomecampo = 'CN_CNPJ' ) then
    REsultado := DmHidra.cdsFiliaisFIL_CNPJ.AsString;
  if ( nomecampo = 'CN_NATUREZA' ) then
    REsultado := DMLOOKUP.cdsCOFCFOP_ABREVEADO.AsString;
  if ( nomecampo = 'CN_CFOP' ) then
    REsultado := DMLOOKUP.cdsCOFCFOP_COF.AsString;
  if ( nomecampo = 'CN_INSESTST' ) then
    REsultado := '';

    //NÃO TEM QUE SER USADO!
 // if ( nomecampo = 'CN_INSEST' ) then
 //   REsultado := nulotostring( DmHidra.cdsFiliaisFIL_INSCEST.AsString );

  if ( nomecampo = 'CN_DESTINATARIO') then
    REsultado := cdsLookCliCLI_RAZAO.AsString;
  if ( nomecampo = 'CN_DESTCPFCNPJ')  then
    REsultado := cdsLookCliCLI_CPFCNPJ.AsString;

  if ( nomecampo = 'CN_DTEMISSAO' ) then
    REsultado := cdsCadNOT_DATAEMISSAO.AsString;

  if ( nomecampo = 'CN_DTSAIDA' ) then
    REsultado := cdsCadNOT_DATASAIDA.AsString;

     // adicionado por marcos para impressão de horas da saida
    if ( nomecampo = 'CN_HSSAIDA' ) then
    REsultado := cdsCadNOT_HORASAIDA.AsString;

  if ( nomecampo = 'CN_DESTENDERECO' ) then
    REsultado := nulotostring( cdsLookCliCLI_END_ENDERECO.AsString );

  if ( nomecampo = 'CN_DESTBAIRRO' ) then
    begin
      if VarISnull( cdsLookCliCLI_END_BAIRRO.AsString ) then
        REsultado := ' '
      else
        REsultado := cdsLookCliCLI_END_BAIRRO.AsString;
    end;
  if ( nomecampo = 'CN_DESTCEP' ) then
    REsultado := nulotostring( cdsLookCliCLI_END_CEP.AsString );

  if ( nomecampo = 'CN_DESTMUNICIPIO' ) then
    REsultado := cdsLookCliCLI_END_CID_NOME.AsString;
  if ( nomecampo = 'CN_DESTUF' ) then
    begin

      REsultado := cdsLookCliCLI_END_CID_UF.AsString;
    end;
  if ( nomecampo = 'CN_DESTINSCEST' ) then
    REsultado := nulotostring( cdsLookCliCLI_RGINSC.AsString );

  if ( nomecampo = 'CN_DESTFONE' ) then
    REsultado := cdsLookCliCLI_FONE.AsString;

  {        if  (nomecampo = 'CN_HORASAIDA' ) then
                  REsultado := QryCLIFOR[''];
          if  (nomecampo = 'CN_FATURA' ) then
                  REsultado := QryCLIFOR[''];
  }
  //****************************************DUPLICATAS*******************************
   try
    if ( nomecampo = 'DUPLICATA1' )then
    REsultado := cdsCadDUPLICATA1.AsString;
    if ( nomecampo = 'VENCIMENTO1' )then
    REsultado := cdsCadVENCIMENTO1.AsString;
    if ( nomecampo = 'VALOR1' )then
    REsultado := cdsCadVALOR1.AsString;

    if ( nomecampo = 'DUPLICATA2' )then
    REsultado := cdsCadDUPLICATA2.AsString;
    if ( nomecampo = 'VENCIMENTO2' )then
    REsultado := cdsCadVENCIMENTO2.AsString;
    if ( nomecampo = 'VALOR2' )then
    REsultado := cdsCadVALOR2.AsString;

    if ( nomecampo = 'DUPLICATA3' ) then
    REsultado := cdsCadDUPLICATA3.AsString;
    if ( nomecampo = 'VENCIMENTO3' ) then
    REsultado := cdsCadVENCIMENTO3.AsString;
    if ( nomecampo = 'VALOR3' ) then
    REsultado := cdsCadVALOR3.AsString;

    if ( nomecampo = 'DUPLICATA4' ) then
    REsultado := cdsCadDUPLICATA4.AsString;
    if ( nomecampo = 'VENCIMENTO4' ) then
    REsultado := cdsCadVENCIMENTO4.AsString;
    if ( nomecampo = 'VALOR4' ) then
    REsultado := cdsCadVALOR4.AsString;

    if ( nomecampo = 'DUPLICATA5' ) then
    REsultado := cdsCadDUPLICATA5.AsString;
    if ( nomecampo = 'VENCIMENTO5' ) then
    REsultado := cdsCadVENCIMENTO5.AsString;
    if ( nomecampo = 'VALOR5' ) then
    REsultado := cdsCadVALOR5.AsString;

    if ( nomecampo = 'DUPLICATA6' ) then
    REsultado := cdsCadDUPLICATA6.AsString;
    if ( nomecampo = 'VENCIMENTO6' ) then
    REsultado := cdsCadVENCIMENTO6.AsString;
    if ( nomecampo = 'VALOR6' ) then
    REsultado := cdsCadVALOR6.AsString;
    except
    end;
  //******************************************FIM DUPLICATAS***************************


  if ( nomecampo = 'CN_PROCODIGO' ) then
    REsultado := nulotostring( cdsItensPRO_CODIGO.AsString );

  if ( nomecampo = 'CN_PRODESC' ) then
    REsultado := RemoveAcentos( nulotostring( cdsItensPRO_NOME.asstring ) );

  {       if  (nomecampo = 'CN_PROSITTRIB' ) then
  REsultado := NOTAITENS['NOME'];
}
  if ( nomecampo = 'CN_PROUNID' ) then
    REsultado := nulotostring( 'UN' );
  if ( nomecampo = 'CN_PROQTD' ) then
    REsultado := nulotostring( cdsItensNI_QTD.AsString );
  if ( nomecampo = 'CN_PROVALUNIT' ) then
    REsultado := Format( '%9.9s', [ FormatFloat( '#####0.00', cdsItensNI_VALORUN.AsFloat ) ] );
  if ( nomecampo = 'CN_PROVALTOTAL' ) then
    REsultado := Format( '%11.11s', [ FormatFloat( '#######0.00', cdsItensNI_SUBTOT.asfloat ) ] );
  //                REsultado := cdsCadItensFrm['VALORTOT'];
  if ( nomecampo = 'CN_PROICMS' ) then
    REsultado := nulotostring( cdsCadNOT_ALIQICM.AsFloat );
  if ( nomecampo = 'CN_PROIPI' ) then
    REsultado := cdsCadNOT_ALIQIPI.AsString;
// ALTEREDA PARA SER VISTO POSTERIORMENTE. .DANDO PAU. NA ARAGUAIA DIESEL
//  if ( nomecampo = 'CN_OBSLINHA_VALORPRODUTO' ) then
//    begin
//      REsultado := '***  VALOR DO(S) PRODUTOS(S):  ' + cdsCadNOT_ITENS_TOTALPROD.AsString + '  ***';
//    end;
//  if ( nomecampo = 'CN_OBSLINHA_VALORDESCONTOP' ) then
//    begin
//      REsultado := '***  VALOR DO(S) DESCONTO(S) PRODUTOS(S):  ' + cdsCadNOT_DESCONTO.AsString + '  ***';
//    end;

  if not ( cdsParamsCN_OBSLINHA_PRODUTO.AsString = '' ) then
    begin
      if ( nomecampo = 'CN_OBSLINHA_PRODUTO' ) then
        begin
          REsultado := cdsParamsCN_OBSLINHA_PRODUTO.AsString;
        end;
    end;
  if not ( cdsParamsCN_OBSLINHA_PRODUTO1.AsString = '' ) then
    begin
      if ( nomecampo = 'CN_OBSLINHA_PRODUTO1' ) then
        begin
          REsultado := cdsParamsCN_OBSLINHA_PRODUTO1.AsString;
        end;
    end;

    if ( nomecampo = 'CN_PROVALIPI' ) then
    BEGIN
    if not varISNull( cdsCadNOT_ALIQIPI.AsFloat ) then
    BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXXXX';
    END ELSE
    BEGIN
      REsultado := Format( '%8.8s', [ FormatFloat( '####0.00', ( ( cdsItensNI_SUBTOT.AsFloat / 100 ) * cdsCadNOT_ALIQIPI.AsFloat ) ) ] );
    END;
    END;
    END;


  if ( nomecampo = 'CN_ICMS' ) then
    begin
    if not varISNull( cdsCadNOT_VALICM.currency ) then
    BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXXXX';
    END ELSE
    BEGIN
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALICM.AsFloat );
    END;
    END;
    END;


    if ( nomecampo = 'CN_ICMSBASE' ) then
    begin
      if not varISNull( cdsCadNOT_BASEICM.AsFloat ) then
          BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXXXX';
    END ELSE
    BEGIN
        REsultado := FormatFloat( '#####0.00', cdsCadNOT_BASEICM.AsFloat );
    END;
    END;
    END;



  // --------------------------------------------------      arrumar aqui.. o valor da nota.. não aparecer mais zero.. e sim xxxxx

  //**************        ////////////////////prestação de serviço ////////////////////////////////
  try
    //CdsItensServico.RecNo := 1;

         if ( nomecampo = 'CN_OS_VALORBASEISSQN' ) then
    begin
    if not varISNull( cdsCadNOT_BASEISSQN.AsFloat ) then
          BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXXXX';
    END ELSE
    BEGIN
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_BASEISSQN.AsFloat );
    END;
    END;
    END;


  if ( nomecampo = 'CN_OS_VALORDOISSQN' ) then
    begin
    if not varISNull( cdsCadNOT_VALISSQN.AsFloat ) then
          BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXX';
    END ELSE
    BEGIN
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALISSQN.AsFloat );
    END;
    END;
    END;


    if ( nomecampo = 'CN_OS_DESCSERVICO' ) then
      REsultado := RemoveAcentos( nulotostring( CdsItensServicoSER_DESCRICAO.AsString ) );
    if ( nomecampo = 'CN_OS_QTDPROD' ) then
      REsultado := nulotostring( CdsItensServicoNI_QTD.AsString );
    if ( nomecampo = 'CN_OS_VALORUNIT' ) then
      REsultado := Format( '%9.9s', [ FormatFloat( '#####0.00', CdsItensServicoNI_VALORUN.AsFloat ) ] );
    if ( nomecampo = 'CN_OS_VALORTOTAL' ) then
      REsultado := Format( '%11.11s', [ FormatFloat( '#######0.00', CdsItensServicoNI_VALORTOTAL.asfloat ) ] );

    if ( nomecampo = 'CN_OS_ALIQISSQN' ) then
      REsultado := nulotostring( CdsItensServicoNI_ALIQISSQN.AsFloat );
  except
  end;
           //IMPRESSAO DO SUBTOTAL DO SERVIÇO
  if ( nomecampo = 'CN_OS_VALORTOTALSERVICOS' ) then
    begin
      if not varISNull( cdsCadNT_VALORTOTALSERVICO.AsFloat ) then
       //ANTERIOR REsultado := FormatFloat( '#####0.00', cdsCadNT_VALORTOTALSERVICO.AsFloat );
        REsultado := FormatFloat( '#####0.00', cdsCadNOT_ITENS_SERV_SUBTOTAL.AsFloat );
    end;
    //SERVIÇOS RETIRADO POIS ESTA DANDO DEFEITO.. NO IMPRESSÃO DO  CLIENTE ARAGUAIA DIESEL
    
//  if ( nomecampo = 'CN_OS_OBSLINHA_VALSERVICO' ) then
//    REsultado := '***  VALOR DO(S) SERVICO(S):  ' + cdsCadNOT_ITENS_SERV_SUBTOTAL.AsString + '  ***';
//  if ( nomecampo = 'CN_OS_OBSLINHA_VALDESSERV' ) then
//    REsultado := '***  VALOR DO(S) DESCONTO(S) SERVICO(S):  ' + cdsCadNOT_ITENSSERVICO_DESCONTO.AsString + '  ***';

  ////********************** fim prestação de serviço da nota fiscal ******************************
  if ( nomecampo = 'CN_SUBSTICMS' ) then
    begin
if not varISNull( cdsCadNOT_BASESUBS.AsFloat ) then
          BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXXXX';
    END ELSE
    BEGIN
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_BASESUBS.AsFloat );
    END;
    END;
    END;


  if ( nomecampo = 'CN_VALSUBSTICMS' ) then
    begin
    if not varISNull( cdsCadNOT_VALSUBS.AsFloat ) then
          BEGIN
    if DmHidra.cdsParamsEMPRESAOPSUPERSIMPLES.AsString = 'Sim' then
    BEGIN
      REsultado := 'XXXXXXX';
    END ELSE
    BEGIN
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALSUBS.AsFloat );
    END;
    END;
    END;



  if ( nomecampo = 'CN_VALFRETE' ) then
    if not varISNull( cdsCadNOT_VALFRETE.AsFloat ) then
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALFRETE.AsFloat );
  if ( nomecampo = 'CN_VALSEGURO' ) then
    if not varISNull( cdsCadNOT_VALSEGURO.AsFloat ) then
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALSEGURO.AsFloat );
  if ( nomecampo = 'CN_OUTRASDESP' ) then
    if not varISNull( cdsCadNOT_DESPACESS.AsFloat ) then
      resultado := FormatFloat( '#####0.00', cdsCadNOT_DESPACESS.AsFloat );
  if ( nomecampo = 'CN_VALTOTPROD' ) then
    if not varISNull( cdsCadNOT_TOTITENS.asfloat ) then
      resultado := FormatFloat( '#####0.00', ( cdsCadNOT_TOTITENS.AsFloat ) );


  // --------------------------------------------------

       {
         x  CN_SUBSTICMS BASESUBS
         x  CN_VALSUBSTICMS VALORSUBS
           CN_VALFRETE    VALORFRETE
           CN_VALSEGURO   VALORSEGURO
           CN_OUTRASDESP  DESPACESS
           CN_VALTOTPROD  TOTITENS
          CN_TRANSFRETEPORCONTA FRETE

       }

  if ( nomecampo = 'CN_VALTOTIPI' ) then
    if not varISNull( cdsCadNOT_VALIPI.AsFloat ) then
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_VALIPI.AsFloat );
  if ( nomecampo = 'CN_VALTOTNOTA' ) then
    if not varISNull( cdsCadNOT_TOTNOTA.AsFloat ) then
      REsultado := FormatFloat( '#####0.00', cdsCadNOT_TOTNOTA.AsFloat );
  {
   CN_TRANSPLACA PLACA
  }
      /////////////////////////////////////////////////////////////// 1 parte
  if ( nomecampo = 'CN_TRANSRAZAO' ) then
    if not ( cdsCadNOT_TRANSRAZAO.AsString = '' ) then    //1
      REsultado := cdsCadNOT_TRANSRAZAO.AsString;

  if ( nomecampo = 'CN_TRANSFRETEPORCONTA' ) then BEGIN
    if cdsCadFRETE.AsInteger = 0 then    begin
      resultado := '1'
   end  else  begin
      resultado := '2';
   END;
   END;

  if ( nomecampo = 'CN_TRANSPLACA' ) then
    if not ( cdsCadNOT_TRANSPLACA.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSPLACA.AsString;

  if  (nomecampo = 'CN_TRANSUF' ) then
    if not ( cdsCadNOT_TRANSUF.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSUF.AsString;

  if ( nomecampo = 'CN_TRANSCNPJCPF' ) then
    if not ( cdsCadNOT_TRANSRAZAO.AsString = '' ) then
      REsultado := DMLOOKUP.cdsTransportadoresTRA_CNPJCPF.AsString;
      /////////////////////////////////////////////////////////////// 2 parte

  if ( nomecampo = 'CN_TRANSENDERECO' ) then
    if not ( cdsCadNOT_TRANSENDERECO.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSENDERECO.AsString;

  if ( nomecampo = 'CN_TRANSMUNICIPIO' ) then
    if not ( cdsCadNOT_TRANSMUNICIPIO.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSMUNICIPIO.AsString;

  if ( nomecampo = 'CN_TRANSUF2' ) then
    if not ( cdsCadNOT_TRANSUF2.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSUF2.AsString;

  if ( nomecampo = 'CN_TRANSINSCRICAOESTADUAL' ) then
    if not ( cdsCadNOT_TRANSINSCRICAO.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSINSCRICAO.AsString;

/////////////////////////////////////////////////////////////// 3 parte
  if ( nomecampo = 'CN_TRANSQTD' ) then
    if not ( cdsCadNOT_TRANSQTD.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSQTD.AsString;

  if ( nomecampo = 'CN_TRANSESPECIE' ) then
    if not ( cdsCadNOT_TRANSESPECIE.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSESPECIE.AsString;

  if ( nomecampo = 'CN_TRANSMARCA' ) then
    if not ( cdsCadNOT_TRANSMARCA.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSMARCA.AsString;

  if ( nomecampo = 'CN_TRANSNUMERO' ) then
    if not ( cdsCadNOT_TRANSNUMERO.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSNUMERO.AsString;

  if ( nomecampo = 'CN_TRANSPESOBRUTO' ) then
    if not ( cdsCadNOT_TRANSPESOBRUTO.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSPESOBRUTO.AsString;

  if ( nomecampo = 'CN_TRANSPESOLIQUIDO' ) then
    if not ( cdsCadNOT_TRANSPESOLIQUIDO.AsString = '' ) then
      REsultado := cdsCadNOT_TRANSPESOLIQUIDO.AsString;

  ///////////////////////////////////////////////////////////////  FINAL

  if ( nomecampo = 'CN_FATURA' ) then
    begin
      {
      STMP:='';
      cdsParcelas.First;
      while not cdsParcelas.Eof do
      begin
              dt:= cdsParcelasVLP_DATAVCTO.AsString;
              valor := cdsParcelasVLP_VALOR.asfloat;
              STMP := STMP +  dt + ' - ' + FormatFloat('####,##0.00',valor) + ' ; ';
              cdsParcelas.Next;
              end;
      REsultado := STMP;
      if (DMLoja.cdsLookCofTUTULOS.AsString <> 'SIM') then
              REsultado := '';
      }
      REsultado := '';
    end;



  //////////////////////////////////////////////////LINHAS DA OBS
  if ( nomecampo = 'CN_OBSLINHA0' ) then
    begin
      //obsMEmo.Text := //cdsCadOBS.;
      if DBRichEdit1.Lines.Count > 0 then
        REsultado := DBRichEdit1.Lines[ 0 ];
      //gavalor := ' ';
    end;
  if ( nomecampo = 'CN_OBSLINHA1' ) then
    begin
      if DBRichEdit1.Lines.Count > 1 then
        REsultado := DBRichEdit1.Lines[ 1 ];
    end;
  if ( nomecampo = 'CN_OBSLINHA2' ) then
    begin
      if DBRichEdit1.Lines.Count > 2 then
        REsultado := DBRichEdit1.Lines[ 2 ];
    end;
  if ( nomecampo = 'CN_OBSLINHA3' ) then
    begin
      if DBRichEdit1.Lines.Count > 3 then
        REsultado := DBRichEdit1.Lines[ 3 ];
    end;
  if ( nomecampo = 'CN_OBSLINHA4' ) then
    begin
      if DBRichEdit1.Lines.Count > 4 then
        REsultado := DBRichEdit1.Lines[ 4 ];
    end;
  if ( nomecampo = 'CN_OBSLINHA5' ) then
    begin
      if DBRichEdit1.Lines.Count > 5 then
        REsultado := DBRichEdit1.Lines[ 5 ];
    end;
  if ( nomecampo = 'CN_OBSLINHA6' ) then
    begin
      if DBRichEdit1.Lines.Count > 6 then
        REsultado := DBRichEdit1.Lines[ 6 ];
    end;
  if ( nomecampo = 'CN_OBSLINHA7' ) then
    begin
      if DBRichEdit1.Lines.Count > 7 then
        REsultado := DBRichEdit1.Lines[ 7 ];
    end;  
    ////////////////////////////////////////////////////////

  if ( nomecampo = 'CN_FIM' ) then
    REsultado := '.  ';
  GetValue := UPPERCASE( RemoveAcentos( resultado ) );
end;

function TFrmCad_NotaFiscalServico.nulotostring( valor: variant ): variant;
begin
  if varisnull( valor ) then
    nulotostring := ''
  else
    nulotostring := valor;
end;


procedure TFrmCad_NotaFiscalServico.Opesdetributao1Click(Sender: TObject);
begin
  inherited;

  Panel2.Visible := True;
  Panel2.SetFocus;
   cdsItens.Edit;
  //LockWindowUpdate( Handle );
 {try
  with Tfrmcad_alteracaoitensnfe.Create( self ) do
  begin

      cdsItens.Close  ;
      cdsItens.Params.ParamByName('FIL_CODIGO').AsInteger := dmhidra.Filial;
      cdsItens.Params.ParamByName('NOT_CODIGO').AsInteger := Self.cdsItensNOT_CODIGO.AsInteger;
      cdsItens.Params.ParamByName('NI_CODIGO').AsInteger := Self.cdsItensNI_CODIGO.AsInteger;
      cdsItens.Open;
      cdsItens.Edit;
      ShowModal;

  end;
  finally

  end;

 // LockWindowUpdate(0);   }
end;

procedure TFrmCad_NotaFiscalServico.fechaabre;
begin
try

    frmcad_alteracaoitensnfe.close;

except;
end;

  Self.cdsItens.close;
  Self.cdsItens.Open;
end;


procedure TFrmCad_NotaFiscalServico.CalculaTotal;
begin
  if not ( cdsCad.State in [ DsEdit, dsInsert ] ) then
    begin
      cdsCad.Edit;
    end;

  QrySumTOT.Close;
  QrySumTOT.ParamByName( 'FIL_CODIGO' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  QrySumTOT.ParamByName( 'NOT_CODIGO' ).AsInteger := cdsCadNOT_CODIGO.AsInteger;
  QrySumTOT.Open;

  QrySumTOTSERV.Close;
  QrySumTOTSERV.ParamByName( 'FIL_CODIGO' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
  QrySumTOTSERV.ParamByName( 'NOT_CODIGO' ).AsInteger := cdsCadNOT_CODIGO.AsInteger;
  QrySumTOTSERV.Open;

  cdsCadNOT_TOTITENS.AsCurrency            := (QrySumTOTNI_VALOR_TOTAL.AsCurrency);  //VALOR TOTAL PRODUTO
  cdsCadNT_VALORTOTALSERVICO.AsCurrency    := (QrySumTOTSERVTOT.AsCurrency); //VALOR TOTAL SERVIÇO


  IF cdsCadNOT_CALCULARAUTOMATICO.AsInteger = 1 THEN     // se estiver marcado ele calcula automaticamente
  BEGIN

  cdsCadNOT_BASEICM.AsFloat                 :=QrySumTOTNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
  cdsCadNOT_BASESUBS.AsFloat                :=QrySumTOTNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;
  cdsCadNOT_BASEIPI.AsFloat                 :=QrySumTOTNI_IPI_VALOR_BASE_CALCULO.AsCurrency;
  cdsCadNOT_BASEPIS.AsFloat                 :=QrySumTOTNI_PIS_VALOR_BASE_CALCULO.AsCurrency;
  cdsCadNOT_BASECOFINS.AsFloat              :=QrySumTOTNI_COFINS_VALOR_BASE_CALCULO.AsCurrency;

  cdsCadNOT_VALICM.AsFloat                  :=QrySumTOTNI_ICMS_VALOR.AsCurrency;
  cdsCadNOT_VALSUBS.AsFloat                 :=QrySumTOTNI_ICMSSUBS_VALOR.AsCurrency;
  cdsCadNOT_VALIPI.AsFloat                  :=QrySumTOTNI_IPI_VALOR.AsCurrency;
  cdsCadNOT_VALPIS.AsFloat                  :=QrySumTOTNI_PIS_VALOR.AsCurrency;
  cdsCadNOT_VALCOFINS.AsFloat               :=QrySumTOTNI_COFINS_VALOR.AsCurrency;

  //cdsCadNOT_ALIQICM.AsFloat                 :=QrySumTOTNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
  //cdsCadNOT_ALIQSUBS.AsFloat                :=QrySumTOTNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
  //cdsCadNOT_ALIQIPI.AsFloat                 :=QrySumTOTNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
  //cdsCadNOT_ALIQPIS.AsFloat                 :=QrySumTOTNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;
  //cdsCadNOT_ALIQCOFINS.AsFloat              :=QrySumTOTNI_ICMS_VALOR_BASE_CALCULO.AsCurrency;


  cdsCadNOT_VALFRETE.AsFloat                 :=QrySumTOTNI_VALOR_FRETE.AsCurrency;
  cdsCadNOT_VALSEGURO.AsFloat                :=QrySumTOTNI_VALORSEGURO.AsCurrency;
  cdsCadNOT_DESCONTO.AsFloat                 :=QrySumTOTNI_VALOR_DESCONTO.AsCurrency; 

  END;

  cdsCadNOT_TOTNOTA.AsFloat := 0;
  cdsCadNOT_TOTNOTA.AsFloat := (( cdsCadNOT_TOTITENS.AsCurrency + cdsCadNOT_ACRECIMO.AsCurrency + cdsCadNT_VALORTOTALSERVICO.AsCurrency + cdsCadNOT_VALFRETE.AsCurrency + cdsCadNOT_VALSEGURO.AsCurrency) - cdsCadNOT_DESCONTO.AsCurrency);





end;

procedure TFrmCad_NotaFiscalServico.cdsCadBeforeOpen(DataSet: TDataSet);
begin
 // inherited;
 MemoResp.Text      := '';
 memoLog.Text       := '';
 memoRespWS.Text    := '';
 MemoDados.Text     := '';
 //WBResposta.Text    := '';

 MemoResp.Text      := cdsCadMEMORESP.AsString;
 memoLog.Text       := cdsCadMEMOLOG.AsString;
 memoRespWS.Text    := cdsCadMEMORESPWS.AsString;
 MemoDados.Text     := cdsCadMEMODADOS.AsString;
// WBResposta.Text    := cdsCadWBRESPOSTA.AsString;

end;

procedure TFrmCad_NotaFiscalServico.cdsCadBeforePost(DataSet: TDataSet);
begin
  inherited;


 if cdsCadNOT_TIPO.AsString = 'NFE' then BEGIN
  QRYNFEESTATUS.Close;
  QRYNFEESTATUS.Open;
          if (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 5) or (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 6) then
       
  BEGIN
  Application.MessageBox('Esse cadastro não pode ser Deletado. ' + #13#10 +
  'Porque a NF-e foi emitido!', 'ATENÇÃO!', MB_OK +
   MB_ICONSTOP);
  cdsCad.Cancel;
  Abort;
  END;
 END;

  VALIDAANTESDAIMPORTACAO;

  if cdsCadNOT_TIPO.AsString = 'NFE' then
  cdsCadNOT_STATUS_NFE.AsInteger := 9
  ELSE
  cdsCadNOT_STATUS_NFE.AsInteger := 0;  


if cdsCadNOT_EFCSTATUS.AsInteger = 1  then
begin
  Application.MessageBox('Já foi realizada a impressão desse cupom com sucesso'
    + #13#10 + 'e o mesmo não pode ser alterado em nada!', 'ATENÇÃO!', MB_OK +
    MB_ICONSTOP);
    Abort;
end;


cdsCadMEMORESP.AsString     :=      MemoResp.Text;
cdsCadMEMOLOG.AsString      :=      memoLog.Text;
cdsCadMEMORESPWS.AsString   :=      memoRespWS.Text;
cdsCadMEMODADOS.AsString    :=      MemoDados.Text;
//cdsCadWBRESPOSTA.AsString    :=     WBResposta.Text;



  if cdscad.State in [ dsinsert ] then
    begin
      DmHidra.QryMax.Close;
      DmHidra.QryMax.SQL.Text   := 'SELECT MAX(NOT_CODIGO) CODIGO FROM NOTA WHERE FIL_CODIGO=' + IntToStr( DmHidra.Filial );
      DmHidra.QryMax.Open;
      cdsCadNOT_CODIGO.AsInteger:= DmHidra.QryMaxCODIGO.asinteger + 1;
      DmHidra.QryMax.Close;

      DmHidra.QryMax.SQL.Text   := 'SELECT MAX(NOT_NR) CODIGO FROM NOTA WHERE FIL_CODIGO=' + IntToStr( dmHidra.Filial );
      DmHidra.QryMax.Open;
      cdsCadNOT_NR.AsInteger    :=   DmHidra.QryMaxCODIGO.asinteger + 1;

      cdsCadNOT_SITUACAO.AsString := '0';
      END;

     // cdsCadNOT_NR.AsFloat := DmHidra.GetSequencial( 'NOTA' );
     // DmHidra.SetSequencial( 'NOTA', cdsCadNOT_NR.AsFloat + 1 );
      try
      if cdsCadCLI_CODIGO.AsString <> '' then
      begin
      DmHidra.Qry.Close;
      DmHidra.Qry.SQL.Text := 'SELECT CLI_CPFCNPJ FROM CLIENTES WHERE CLI_CODIGO =' + cdsCadCLI_CODIGO.AsString;
      DmHidra.Qry.Open;
      cdsCadNOT_CPFCNPJ.AsString := DmHidra.Qry.Fields[ 0 ].AsString;
      DmHidra.Qry.Close;
      end;
      except
      end;
       CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.cdsItensAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
//cdsItens.Close;
//cdsItens.open;
// CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.cdsItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsItens.ApplyUpdates( 0 );
  CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.cdsItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsItens.ApplyUpdates( 0 );
  CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.cdsItensBeforePost(DataSet: TDataSet);
var
x1:Integer;
begin
  inherited;


 if cdsCadNOT_TIPO.AsString = 'NFE' then BEGIN
  QRYNFEESTATUS.Close;
  QRYNFEESTATUS.Open;
        if (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 5) or (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 6) then
        BEGIN
  Application.MessageBox('Esse cadastro não pode ser Deletado. ' + #13#10 +
  'Porque a NF-e foi emitido!', 'ATENÇÃO!', MB_OK +
   MB_ICONSTOP);
  cdsItens.Cancel;
  Abort;
  END;
 END;

  if cdsCadNOT_EFCSTATUS.AsInteger = 1  then
  begin
  Application.MessageBox('Já foi realizada a impressão desse cupom com sucesso'
  + #13#10 + 'e o mesmo não pode ser alterado em nada!', 'ATENÇÃO!', MB_OK +
  MB_ICONSTOP);
  Abort;
  end;


    cdsItensNI_CODIGO.AsInteger :=0;  //SO PARA SIMPLES RECEBIMENTO ESTA FUNÇÃO ESTA IMPLEMENTADA NO BANCO DE DADOS PARA GERAR AUTOMATICAMENTE....

    for x1 := 0 to cdsItens.FieldCount - 1 do
    if cdsItens.Fields[ x1 ].DataType = ftFloat then
    begin
    if not (cdsItens.Fields[ x1 ].AsFloat > 0) then
    cdsItens.Fields[ x1 ].AsFloat := 0;
    end;

  cdsItensNOT_CODIGO.AsInteger  := cdsCadNOT_CODIGO.AsInteger                                                          ;
  cdsItensFIL_CODIGO.AsInteger  := DmHidra.Filial;
  cdsItensemp_CODIGO.AsInteger  := DmHidra.Empresa;
  cdsItensEMP_GRUPO.AsInteger   := DmHidra.Grupo;
 

  cdsItensNI_SUBTOT.AsFloat :=  (cdsItensNI_VALORUN.AsFloat * cdsItensNI_QTD.AsFloat  ) ;
  cdsItensNI_VALOR_TOTAL.AsFloat := (((cdsItensNI_VALORUN.AsFloat * cdsItensNI_QTD.AsFloat  ) + cdsItensNI_VALOR_FRETE.AsCurrency) - cdsItensNI_VALOR_DESCONTO.AsCurrency );


    //********************************************* CALCULO DE IMPOSTOS ***************************************************************/

    //* Configuracao icms  */
    if (Self.cdsItensNI_ICMS_ALIQUOTA.AsCurrency > 0) then
    begin
    self.cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency                 := self.cdsItensNI_VALOR_TOTAL.AsCurrency;
    if (Self.CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency > 0) then //* Se base de calculo for maior   */
    self.cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency                 := ((self.cdsItensni_valor_total.AsCurrency * CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency)*(self.cdsItensNI_ICMS_ALIQUOTA.AsCurrency))
    else
    self.cdsItensNI_ICMS_VALOR.AsCurrency                              := (self.cdsItensni_valor_total.AsCurrency * self.cdsItensNI_ICMS_ALIQUOTA.AsCurrency / 100);
    end;

    //* Configuracao icms subistituicao */
    //* NEW.ni_icmssubs_valor_base_calculo = NEW.ni_valor_total; */
    //* new.ni_icmssubs_aliquota =:tributacoes_icms_aliquota; */
    //* new.ni_icms_aliquota =:tributacoes_icms_aliquota;  */
    //* NI_ICMSSUBS_VALOR               = NI_ICMSSUBS_VALOR_BASE_CALCULO   * NI_ICMSSUBS_ALIQUOTA  / 100); */
    //* R$ 100,00  X 41,17% = R$ 41,17 X 17% = R$ 7,00  */


    //* Configuracao IPI  */
    if (Self.cdsItensNI_IPI_ALIQUOTA.AsCurrency > 0) then
    begin
    Self.cdsItensNI_IPI_VALOR_BASE_CALCULO.AsFloat := Self.cdsItensNI_VALOR_TOTAL.AsFloat;
    Self.cdsItensni_ipi_valor.AsFloat              := (Self.cdsItensni_ipi_valor_base_calculo.AsFloat  * Self.cdsItensni_ipi_aliquota.AsFloat / 100);
    END;

    //* Configuracao PIS  */
    if (Self.cdsItensNI_PIS_ALIQUOTA.AsCurrency > 0) then
    begin
    Self.cdsItensni_pis_valor_base_calculo.AsFloat        := Self.cdsItensni_valor_total.AsFloat;
    if (Self.cdsItensni_pis_aliquota_tipo.AsFloat = 0) then
    Self.cdsItensni_pis_valor.AsFloat                     := (Self.cdsItensni_pis_valor_base_calculo.AsFloat  * Self.cdsItensni_pis_aliquota.AsFloat / 100)
    else
    Self.cdsItensni_pis_valor.AsFloat                     := (Self.cdsItensni_qtd.AsFloat  * Self.cdsItensNI_PIS_ALIQUOTA.AsFloat);
    end;

    //* Configuracao COFIS  */
    if (Self.cdsItensNI_COFINS_ALIQUOTA.AsCurrency > 0) then
    begin
    Self.cdsItensni_cofins_valor_base_calculo.AsFloat   := Self.cdsItensNI_VALOR_TOTAL.AsFloat;
    if (Self.cdsItensni_cofins_aliquota_tipo.AsFloat    = 0) then
    Self.cdsItensni_cofins_valor.AsFloat                := (Self.cdsItensni_cofins_valor_base_calculo.AsFloat  * Self.cdsItensni_cofins_aliquota.AsFloat / 100)
    else
    Self.cdsItensni_cofins_valor.AsFloat                := (Self.cdsItensni_qtd.AsFloat  * Self.cdsItensni_cofins_aliquota.AsFloat);
    end;
    end;


procedure TFrmCad_NotaFiscalServico.cdsItensPRO_CODIGOChange(Sender: TField);
begin
  inherited;
  DmHidra.QryNomeProd.Close;
  DmHidra.QryNomeProd.ParamByName( 'CODIGO' ).AsString := cdsItensPRO_CODIGO.AsString;
  DmHidra.QryNomeProd.Open;

  CdsLookTributacoes.Close;
  CdsLookTributacoes.Open;

  if not DmHidra.QryNomeProd.IsEmpty then
    begin
      self.cdsItensPRO_NOME.AsString            := DmHidra.QryNomeProdPRO_NOME.AsString;
      Self.cdsItensPRO_CODIGO_NCM.AsString      := DmHidra.QryNomeProdPRO_CODIGO_NCM.AsString;
      Self.cdsItensTRIBUTACOES_CODIGO.AsInteger := DmHidra.QryNomeProdTRIBUTACOES_CODIGO.AsInteger;
      Self.cdsItensNI_EAN.AsString              := DmHidra.QryNomeProdPRO_CODBARRAS.AsString;
      Self.cdsItensNI_UNID.AsString             := DmHidra.QryNomeProdPRO_UNIDADE.AsString;
      Self.cdsItensNI_CFOP.AsString             := RemoveChrInvalidos(Self.cdsCadCFOP_COF.AsString);
      self.cdsItensNI_VALORUN.AsFloat           := DmHidra.QryNomeProdPRO_VALOR.AsFloat;
      SELF.cdsItensNI_CST.AsString              := Self.CdsLookTributacoesSTICMSA_CODIGO.AsString + Self.CdsLookTributacoesSTICMSB_CODIGO.AsString;


    //********************************************* CALCULO DE IMPOSTOS ***************************************************************/
      Self.cdsItensNI_ICMS_ALIQUOTA.AsCurrency     := CdsLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA.AsFloat;
      //Self.cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency     := CdsLookTributacoesTRIBUTACOES_IC_ALIQUOTA.AsFloat;
      Self.cdsItensNI_IPI_ALIQUOTA.AsCurrency      := CdsLookTributacoesTRIBUTACOES_IPI_ALIQUOTA.AsFloat;
      Self.cdsItensNI_PIS_ALIQUOTA.AsCurrency      := CdsLookTributacoesTRIBUTACOES_PIS_ALIQUOTA.AsFloat;
      Self.cdsItensNI_COFINS_ALIQUOTA.AsCurrency   := CdsLookTributacoesTRIBUTACOES_COFINS_ALIQUOTA.AsFloat;



    //* Configuracao icms  */
    if (Self.cdsItensNI_ICMS_ALIQUOTA.AsCurrency > 0) then
    begin
    self.cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsFloat                 := self.cdsItensNI_VALOR_TOTAL.AsFloat;
    if (Self.CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsFloat > 0) then //* Se base de calculo for maior   */
    self.cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsFloat                 := ((self.cdsItensni_valor_total.AsFloat * CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsFloat)*(self.cdsItensNI_ICMS_ALIQUOTA.AsFloat))
    else
    self.cdsItensNI_ICMS_VALOR.AsFloat                              := (self.cdsItensni_valor_total.AsFloat * self.cdsItensNI_ICMS_ALIQUOTA.AsFloat / 100);
    end;

    //* Configuracao icms subistituicao */
    //* NEW.ni_icmssubs_valor_base_calculo = NEW.ni_valor_total; */
    //* new.ni_icmssubs_aliquota =:tributacoes_icms_aliquota; */
    //* new.ni_icms_aliquota =:tributacoes_icms_aliquota;  */
    //* NI_ICMSSUBS_VALOR               = NI_ICMSSUBS_VALOR_BASE_CALCULO   * NI_ICMSSUBS_ALIQUOTA  / 100); */
    //* R$ 100,00  X 41,17% = R$ 41,17 X 17% = R$ 7,00  */


    //* Configuracao IPI  */
    if (Self.cdsItensNI_IPI_ALIQUOTA.AsCurrency > 0) then
    begin
    Self.cdsItensNI_IPI_VALOR_BASE_CALCULO.AsFloat := Self.cdsItensNI_VALOR_TOTAL.AsFloat;
    Self.cdsItensni_ipi_valor.AsFloat              := (Self.cdsItensni_ipi_valor_base_calculo.AsFloat  * Self.cdsItensni_ipi_aliquota.AsFloat / 100);
    END;

    //* Configuracao PIS  */
    if (Self.cdsItensNI_PIS_ALIQUOTA.AsCurrency > 0) then
    begin
    Self.cdsItensni_pis_valor_base_calculo.AsFloat        := Self.cdsItensni_valor_total.AsFloat;
    if (Self.cdsItensni_pis_aliquota_tipo.AsFloat = 0) then
    Self.cdsItensni_pis_valor.AsFloat                     := (Self.cdsItensni_pis_valor_base_calculo.AsFloat  * Self.cdsItensni_pis_aliquota.AsFloat / 100)
    else
    Self.cdsItensni_pis_valor.AsFloat                     := (Self.cdsItensni_qtd.AsFloat  * Self.cdsItensNI_PIS_ALIQUOTA.AsFloat);
    end;

    //* Configuracao COFIS  */
    if (Self.cdsItensNI_COFINS_ALIQUOTA.AsCurrency > 0) then
    begin
    Self.cdsItensni_cofins_valor_base_calculo.AsFloat   := Self.cdsItensNI_VALOR_TOTAL.AsFloat;
    if (Self.cdsItensni_cofins_aliquota_tipo.AsFloat    = 0) then
    Self.cdsItensni_cofins_valor.AsFloat                := (Self.cdsItensni_cofins_valor_base_calculo.AsFloat  * Self.cdsItensni_cofins_aliquota.AsFloat / 100)
    else
    Self.cdsItensni_cofins_valor.AsFloat                := (Self.cdsItensni_qtd.AsFloat  * Self.cdsItensni_cofins_aliquota.AsFloat);
    end;
    end
    end;

procedure TFrmCad_NotaFiscalServico.CdsItensServicoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CdsItensServico.ApplyUpdates( 0 );
  CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.CdsItensServicoAfterPost(DataSet: TDataSet);
begin
  inherited;
  CdsItensServico.ApplyUpdates( 0 );
  CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.CdsItensServicoBeforePost(DataSet: TDataSet);
begin
  inherited;

 if cdsCadNOT_TIPO.AsString = 'NFE' then BEGIN
  QRYNFEESTATUS.Close;
  QRYNFEESTATUS.Open;
        if (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 5) or (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 6) then
        BEGIN
  Application.MessageBox('Esse cadastro não pode ser Deletado. ' + #13#10 +
  'Porque a NF-e foi emitido!', 'ATENÇÃO!', MB_OK +
   MB_ICONSTOP);
   CdsItensServico.Cancel;
   Abort;
  END;
 END;

   if CdsItensServico.State in [ dsinsert ] then
    begin
      DmHidra.QryMax.Close;
      DmHidra.QryMax.SQL.Text := 'SELECT MAX(NI_CODIGO) CODIGO FROM NOTA_ITENS_SERVICO' ;
      DmHidra.QryMax.Open;
      CdsItensServicoNI_CODIGO.AsInteger := DmHidra.QryMaxCODIGO.asinteger + 1;
    end;
  CdsItensServicoFIL_CODIGO.AsInteger := DmHidra.Filial;
  CdsItensServicoNOT_CODIGO.AsInteger := cdsCadNOT_CODIGO.AsInteger;
  CdsItensServicoNI_VALORTOTAL.AsFloat := RoundTo(CdsItensServicoNI_QTD.AsFloat * CdsItensServicoNI_VALORUN.AsFloat,-2);
  CdsItensServicoNI_TOTALISSQN.AsFloat := RoundTo(( CdsItensServicoNI_VALORTOTAL.AsFloat / 100 ) * CdsItensServicoNI_ALIQISSQN.AsFloat,-2);

  CdsItensServicoNOT_CODIGO.AsInteger := cdsCadNOT_CODIGO.AsInteger;
  CdsItensServicoFIL_CODIGO.AsInteger := DmHidra.Filial;
  CdsItensServicoemp_CODIGO.AsInteger := DmHidra.Empresa;
  CdsItensServicoEMP_GRUPO.AsInteger := DmHidra.Grupo;
end;

procedure TFrmCad_NotaFiscalServico.CdsItensServicoPRO_CODIGOChange(Sender: TField);
begin
  inherited;
 DmHidra.QryNomeServico.Close;
  DmHidra.QryNomeServico.ParamByName( 'CODIGO' ).AsString := CdsItensServicoPRO_CODIGO.AsString;
  DmHidra.QryNomeServico.Open;
  try
    if not DmHidra.QryNomeServico.IsEmpty then
      begin
        self.CdsItensServicoSER_DESCRICAO.AsString  := DmHidra.QryNomeServicoSER_DESCRICAO.AsString;
        self.CdsItensServicoNI_VALORUN.AsFloat      := DmHidra.QryNomeProdPRO_VALOR.AsFloat;

       // Self.CdsItensServicoNI_ALIQISSQN.AsFloat := DMLOOKUP.cdsCOFCFOP_ISSQN.AsFloat;
        if DmHidra.QryNomeServicoSER_QLIQISSQN.AsFloat < 1 then
          Self.CdsItensServicoNI_ALIQISSQN.AsFloat := 5;
      end;
  except
  end;
end;

procedure TFrmCad_NotaFiscalServico.cdsParamsAfterPost(DataSet: TDataSet);
begin
  inherited;
   CDSparams.ApplyUpdates(0);
end;

procedure TFrmCad_NotaFiscalServico.cdsPesqAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not ( cdsPESQ.Aggregates[ 0 ].Value = null ) then
    begin
      Edit1.Text := FormatFloat( '###,##0.00', cdsPESQ.Aggregates[ 0 ].Value );
      edtQtd.Text := intTOstr( cdsPESQ.RecordCount );

    end else
    begin
      Edit1.Text := '00,00';
      edtQtd.Text := '00,00';
    end;
end;

procedure TFrmCad_NotaFiscalServico.cdsTitAfterOpen(DataSet: TDataSet);
begin
  inherited;
   cdsTit.Filter :=  'TIT_NFNUMERO = ' + cdscadNOT_NR.asstring;
   cdsTit.Filtered := True;
end;

procedure TFrmCad_NotaFiscalServico.cdsTitBeforePost(DataSet: TDataSet);
begin
  inherited;
   if ( cdsTitTIT_CODIGO.IsNull ) or ( cdsTitTIT_CODIGO.Value = 0 ) then
    begin
      DmHidra.QryMax.Close;
      DmHidra.QryMax.SQL.Text := 'SELECT MAX(TIT_CODIGO) CODIGO FROM TITULOS WHERE FIL_CODIGO=' + IntToStr( DmHidra.FILIAL );
      DmHidra.QryMax.Open;
      cdsTitTIT_CODIGO.AsInteger := DmHidra.QryMaxCODIGO.asinteger + 1;
    end;
  cdsTitCLI_CODIGO.Value := cdsCadCLI_CODIGO.Value;
end;

procedure TFrmCad_NotaFiscalServico.CheckBox1Click(Sender: TObject);
begin
  inherited;
    //if CheckBox1.Checked = true then
    //begin

    //if not cdscad.IsEmpty then
    //begin
    //cdsCad.Edit;
//end;
//END
end;

procedure TFrmCad_NotaFiscalServico.chkEfetivadosClick(Sender: TObject);
begin
  inherited;
  STATUS := 'IMPRESSO';
end;

procedure TFrmCad_NotaFiscalServico.chkTODOSClick(Sender: TObject);
begin
  inherited;
 STATUS := ''' OR ''''=''';
end;

procedure TFrmCad_NotaFiscalServico.GerarNFe(NumNFe : String);
var
NFe: TNFe;
NFeW: TNFeW;
i, j, k,qtditem: integer;
s: string;
ReferenciadaTipoNFe: boolean;
Opcao1: boolean;
begin
  with dmhidra.ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := DMLOOKUP.cdsCOFCFOP_DESCRICAO.AsString; //'VENDA PRODUCAO DO ESTAB.';
     Ide.indPag    := ipVista;
     Ide.modelo    := 55;
     Ide.serie     := 1;
     Ide.nNF       := cdsCadNOT_NR.AsInteger;//StrToInt(NumNFe);
     Ide.dEmi      := Date;
     Ide.dSaiEnt   := Date;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := teNormal;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.verProc   := '11.0.0.0'; //Versão do seu sistema
     Ide.cUF       := NotaUtil.UFtoCUF(DmHidra.cdsFiliaisFIL_END_CID_UF.AsString);//NotaUtil.UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := DmHidra.cdsFiliaisFIL_END_COD_IBGEMUNIC.AsInteger; //StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;                                          //StrToInt(edtEmitCodCidade.Text)

//Para NFe referenciada use os campos abaixo
{     with Ide.NFref.Add do
      begin
        refNFe       := ''; //NFe Eletronica

        RefNF.cUF    := 0;  // |
        RefNF.AAMM   := ''; // |
        RefNF.CNPJ   := ''; // |
        RefNF.modelo := 1;  // |- NFe Modelo 1/1A
        RefNF.serie  := 1;  // |
        RefNF.nNF    := 0;  // |

        RefNFP.cUF     := 0;  // |
        RefNFP.AAMM    := ''; // |
        RefNFP.CNPJCPF := ''; // |
        RefNFP.IE      := ''; // |- NF produtor Rural
        RefNFP.modelo  := ''; // |
        RefNFP.serie   := 1;  // |
        RefNFP.nNF     := 0;  // |

        RefECF.modelo  := ECFModRef2B; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;
}
      Emit.CNPJCPF           := DmHidra.cdsFiliaisFIL_CNPJ.AsString   ;//edtEmitCNPJ.Text;
      Emit.IE                := DmHidra.cdsFiliaisFIL_INSCEST.AsString;//edtEmitIE.Text;
      Emit.xNome             := DmHidra.cdsFiliaisFIL_NOME.AsString   ;//edtEmitRazao.Text;
      Emit.xFant             := DmHidra.cdsFiliaisFIL_NOMEFANTASIA.AsString   ;//edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := DmHidra.cdsFiliaisFIL_FONE.AsString   ;//edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(RemoveChrInvalidos(DmHidra.cdsFiliaisFIL_END_CEP.AsString))   ;//StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := DmHidra.cdsFiliaisFIL_END_ENDERECO.AsString   ;//edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := DmHidra.cdsFiliaisFIL_END_NUMERO.AsString   ;//edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := DmHidra.cdsFiliaisFIL_END_COMPLEMENTO.AsString   ;//edtEmitComp.Text;
      Emit.EnderEmit.xBairro := DmHidra.cdsFiliaisFIL_END_BAIRRO.AsString   ;//edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := DmHidra.cdsFiliaisFIL_END_COD_IBGEMUNIC.AsInteger;   ;//StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := DmHidra.cdsFiliaisFIL_END_CID_NOME.AsString   ;//edtEmitCidade.Text;
      Emit.EnderEmit.UF      := DmHidra.cdsFiliaisFIL_END_CID_UF.AsString   ;//edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := DmHidra.cdsFiliaisFIL_INSCEST.AsString   ;//'';
      Emit.IM                := ''; // Preencher no caso de existir serviços na nota
      Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      Emit.CRT               := crtRegimeNormal;

//Para NFe Avulsa preencha os campos abaixo
{      Avulsa.CNPJ    := '';
      Avulsa.xOrgao  := '';
      Avulsa.matr    := '';
      Avulsa.xAgente := '';
      Avulsa.fone    := '';
      Avulsa.UF      := '';
      Avulsa.nDAR    := '';
      Avulsa.dEmi    := now;
      Avulsa.vDAR    := 0;
      Avulsa.repEmi  := '';
      Avulsa.dPag    := now;             }

      Dest.CNPJCPF           := RemoveChrInvalidos(cdsLookCliCLI_CPFCNPJ.AsString)   ;//'05481336000137';
      Dest.IE                := RemoveChrInvalidos(cdsLookCliCLI_RGINSC.AsString)   ;//'687138770110';
      Dest.ISUF              := '';
      Dest.xNome             := (cdsLookCliCLI_RAZAO.AsString)   ;//'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := (cdsLookCliCLI_FONE.AsString)   ;//'1532599600';
      Dest.EnderDest.CEP     := StrToInt(RemoveChrInvalidos(cdsLookCliCLI_END_CEP.AsString))   ;//18270410;
      Dest.EnderDest.xLgr    := (cdsLookCliCLI_END_ENDERECO.AsString)   ;//'Praça Anita Costa';
      Dest.EnderDest.nro     := (cdsLookCliCLI_END_NUMERO.AsString)   ;//'0034';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := (cdsLookCliCLI_END_BAIRRO.AsString)   ;//'Centro';
      Dest.EnderDest.cMun    := (cdsLookCliCLI_END_COD_IBGEMUNIC.AsInteger)   ;//3554003;
      Dest.EnderDest.xMun    := (cdsLookCliCLI_END_CID_NOME.AsString)   ;//'Tatuí';
      Dest.EnderDest.UF      := (cdsLookCliCLI_END_CID_UF.AsString)   ;//'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//***************************************************************************************************
(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo do detalhamento de Produtos e Serviços da NF-e - <det> - Ocorrência 1-990 *)
(* ----------------------------------------------------------------------------------------------------------------- *)
 qtditem := 0; // quantidade de item adicionado na nfe.
 cdsItens.First;
  while not cdsItens.Eof do
  begin

Det.Add;
Det[qtditem].Prod.nItem := qtditem + 1; // H02 - Número do item DE 1 a 990
Det[qtditem].Prod.cProd := cdsItensPRO_CODIGO.AsString; // I02 - Código do produto ou serviço
Det[qtditem].Prod.cEAN := cdsItensNI_EAN.AsString; // I03 - GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barra
Det[qtditem].Prod.xProd := cdsItensPRO_NOME.AsString;  // I04 - Descrição do produto ou serviço
Det[qtditem].Prod.NCM := cdsItensPRO_CODIGO_NCM.AsString;  // I05 - Código NCM (Em caso de serviço, não incluir a TAG.)
Det[qtditem].Prod.EXTIPI := ''; // I06 - Código EX da TIPI (Em caso de serviço, não incluir a TAG.)
//Det[qtditem].Prod.genero := 0; // I07 - Gênero do Produto ou Serviço (Tabela de Capítulos da NCM)(Em caso de serviço, não incluir a TAG.)
Det[qtditem].Prod.CFOP := cdsItensNI_CFOP.AsString;  // I08 - Código Fiscal de Operações e Prestações

Det[qtditem].Prod.uCom := cdsItensNI_UNID.AsString;  // I09 - Unidade Comercial
Det[qtditem].Prod.qCom := cdsItensNI_QTD.AsCurrency;  // I10 - Quantidade Comercial
Det[qtditem].Prod.vUnCom := cdsItensNI_SUBTOT.AsCurrency; ; // I10a Valor Unitário de comercialização
Det[qtditem].Prod.vProd := cdsItensNI_VALOR_TOTAL.AsCurrency;  // I11 - Valor Total Bruto dos Produtos ou Serviços
Det[qtditem].Prod.uTrib := cdsItensNI_UNID.AsString;   // I13 - Unidade Tributável
Det[qtditem].Prod.qTrib := cdsItensNI_QTD.AsCurrency;  // I14 - Quantidade Tributável
Det[qtditem].Prod.vUnTrib := cdsItensNI_VALOR_TOTAL.AsCurrency; // I14a Valor Unitário de tributação

Det[qtditem].infAdProd := cdsItensNI_INFORMACAOADICIONAL.AsString; // - Informações Adicionais do Produto
(* EXEMPLO *) // Det[qtditem].Prod.uCom := 'CX';
// Det[qtditem].Prod.qCom := 2; Vendidas 2 caixas ( com 10 unidades cada )
// Det[qtditem].Prod.vUnCom := 50; R$ 50,00 cada caixa
// Det[qtditem].Prod.vProd := 100; R$ 100,00 Valor dos produtos
// Det[qtditem].Prod.uTrib := 'UN';
// Det[qtditem].Prod.qTrib := 20; 2 caixas X 10 unidades por caixa = 20 unidades
// Det[qtditem].Prod.vUnTrib := 5; R$ 100,00 / 20 unidades = R$ 5,00 cada unidade

Det[qtditem].Prod.cEANTrib := ''; // I12 - GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras ??
Det[qtditem].Prod.vFrete := cdsItensNI_VALOR_FRETE.AsCurrency; // I15 - Valor Total do Frete
Det[qtditem].Prod.vSeg := cdsItensNI_VALORSEGURO.AsCurrency; // I16 - Valor Total do Seguro
Det[qtditem].Prod.vDesc := cdsItensNI_VALOR_DESCONTO.AsCurrency; // I17 - Valor do Desconto
//***************************************************************************************************
// Tag da Declaração de Importação - <DI> - Ocorrência 0-N

//for j := 0 to 1 do
//begin
//Det[qtditem].Prod.DI.Add;
//Det[qtditem].Prod.DI[j].nDi := ''; // I19 - Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
//Det[qtditem].Prod.DI[j].dDi := null; // I20 - Data de Registro da DI/DSI/DA
//Det[qtditem].Prod.DI[j].xLocDesemb := ''; // I21 - Local de desembaraço
//Det[qtditem].Prod.DI[j].UFDesemb := ''; // I22 - Sigla da UF onde ocorreu o Desembaraço Aduaneiro
//Det[qtditem].Prod.DI[j].dDesemb := null; // I23 - Data do Desembaraço Aduaneiro
//Det[qtditem].Prod.DI[j].cExportador := ''; // I24 - Código do exportador
//for k := 0 to 1 do
//begin
//Det[qtditem].Prod.DI[j].adi.Add; // Tag de Adições - <adi> - Ocorrência 1-N
//Det[qtditem].Prod.DI[j].adi[k].nAdicao := 0; // I26 - Numero da adição
//Det[qtditem].Prod.DI[j].adi[k].nSeqAdi := 0; // I27 - Numero seqüencial do item dentro da adição
//Det[qtditem].Prod.DI[j].adi[k].cFabricante := ''; // I28 - Código do fabricante estrangeiro
//Det[qtditem].Prod.DI[j].adi[k].vDescDI := 0; // I29 - Valor do desconto do item da DI  adição
//end;
//end;
//***************************************************************************************************
// TAG de grupo do detalhamento de Veículos novos - <veicProd> - Ocorrência 0-1

// Este grupo será criado no XML somente se o campo <chassi> for informado.
//Det[qtditem].prod.veicProd.tpOP := toVendaDireta; // J02 - Tipo da operação
// (1)=toVendaConcessionaria
// (2)=toFaturamentoDireto
// (3)=toVendaDireta
// (0)=toOutros
//Det[qtditem].prod.veicProd.chassi := ''; // J03 - Chassi do veículo
//Det[qtditem].prod.veicProd.cCor := ''; // J04 - Cor
//Det[qtditem].prod.veicProd.xCor := ''; // J05 - Descrição da Cor
//Det[qtditem].prod.veicProd.pot := ''; // J06 - Potência Motor
//Det[qtditem].prod.veicProd.CM3 := ''; // J07 - CM3 (Potência)
//Det[qtditem].prod.veicProd.pesoL := ''; // J08 - Peso Líquido
//Det[qtditem].prod.veicProd.pesoB := ''; // J09 - Peso Bruto
//Det[qtditem].prod.veicProd.nSerie := ''; // J10 - Serial (série)
//Det[qtditem].prod.veicProd.tpComb := ''; // J11 - Tipo de combustível
//Det[qtditem].prod.veicProd.nMotor := ''; // J12 - Número de Motor
//Det[qtditem].prod.veicProd.CMKG := ''; // J13 - CMKG
//Det[qtditem].prod.veicProd.dist := ''; // J14 - Distância entre eixos
//Det[qtditem].prod.veicProd.RENAVAM := ''; // J15 - RENAVAM (Não informar a TAG na exportação)
//Det[qtditem].prod.veicProd.anoMod := 0; // J16 - Ano Modelo de Fabricação
//Det[qtditem].prod.veicProd.anoFab := 0; // J17 - Ano de Fabricação
//Det[qtditem].prod.veicProd.tpPint := ''; // J18 - Tipo de Pintura
//Det[qtditem].prod.veicProd.tpVeic := 0; // J19 - Tipo de Veículo (Utilizar Tabela RENAVAM)
//Det[qtditem].prod.veicProd.espVeic := 0; // J20 - Espécie de Veículo (Utilizar Tabela RENAVAM)
//Det[qtditem].prod.veicProd.VIN := ''; // J21 - Condição do VIN
//Det[qtditem].prod.veicProd.condVeic := cvAcabado; // J22 - Condição do Veículo (1-Acabado; 2-Inacabado; 3-Semi-acabado)
//Det[qtditem].prod.veicProd.cMod := 0; // J23 - Código Marca Modelo (Utilizar Tabela RENAVAM)
//***************************************************************************************************
// TAG de grupo do detalhamento de Medicamentos - <med> - Ocorrência 0-N
//for j := 0 to 1 do
//begin
//Det[qtditem].prod.med.add;
//Det[qtditem].prod.med[j].nLote := ''; // K02 - Número do Lote do medicamento
//Det[qtditem].prod.med[j].qLote := 0; // K03 - Quantidade de produto no Lote do medicamento
//Det[qtditem].prod.med[j].dFab := null; // K04 - Data de fabricação
//Det[qtditem].prod.med[j].dVal := null; // K05 - Data de validade
//Det[qtditem].prod.med[j].vPMC := 0; // K06 - Preço máximo consumidor
//end;
//***************************************************************************************************
// TAG de grupo do detalhamento de Armamento - <arma> - Ocorrência 0-N
//for j := 0 to 1 do
//begin
//Det[qtditem].prod.arma.add;
//Det[qtditem].prod.arma[j].tpArma := taUsoPermitido; // L02 - Indicador do tipo de arma de fogo
// (0)=taUsoPermitido
// (1)=taUsoRestrito
//Det[qtditem].prod.arma[j].nSerie := 0; // L03 - Número de série da arma
//Det[qtditem].prod.arma[j].nCano := 0; // L04 - Número de série do cano
//Det[qtditem].prod.arma[j].descr := ''; // L05 - Descrição completa da arma, compreendendo: calibre, marca, capacidade, etc)
//end;
//***************************************************************************************************
// TAG de grupo de informações específicas para combustíveis

// líquidos - <comb> - Ocorrência 0-1
// Se for informado algum dos valores abaixo:
// a TAG grava o grupo no XML ********************************************
//Det[qtditem].prod.comb.cProdANP := 0; // L102 - Código de produto da ANP - codificação de produtos do SIMP
//Det[qtditem].prod.comb.CODIF := ''; // L103 - Código de autorização / registro do CODIF
//Det[qtditem].prod.comb.qTemp := 0; // L104 - Quantidade de combustível faturada à temperatura ambiente.
// TAG de grupo da CIDE - <CIDE> - Ocorrência 0-1
//Det[qtditem].prod.comb.CIDE.qBCprod := 0; // L106 - BC da CIDE em quantidad
//Det[qtditem].prod.comb.CIDE.vAliqProd := 0; // L107 - Valor da alíquota da CIDE
//Det[qtditem].prod.comb.CIDE.vCIDE := 0; // L108 - Valor da CIDE
// TAG de grupo do ICMS - <ICMS> - Ocorrência 1-1
//Det[qtditem].prod.comb.ICMS.vBCICMS := 0; // L110 - BC do ICMS
//Det[qtditem].prod.comb.ICMS.vICMS := 0; // L111 - Valor do ICMS
//Det[qtditem].prod.comb.ICMS.vBCICMSST := 0; // L112 - BC do ICMS ST retido
//Det[qtditem].prod.comb.ICMS.vICMSST := 0; // L113 - Valor do ICMS ST retido
// TAG de grupo do ICMSST de operação interestadual - <ICMSInter> - Ocorrência 0-1
//Det[qtditem].prod.comb.ICMSInter.vBCICMSSTDest := 0; // L115 - BC do ICMS ST da UF de destino
//Det[qtditem].prod.comb.ICMSInter.vICMSSTDest := 0; // L116 - Valor do ICMS ST da UF de destino
// TAG de ICMS para consumo em UF diversa da UF de localização do destinatário do produto - <ICMSCons> - Ocorrência 0-1
//Det[qtditem].prod.comb.ICMSCons.vBCICMSSTCons := 0; // L118 - BC do ICMS ST da UF de consumo
//Det[qtditem].prod.comb.ICMSCons.vICMSSTCons := 0; // L119 - Valor do ICMS ST da UF de consumo
//Det[qtditem].prod.comb.ICMSCons.UFcons := ''; // L120 - Sigla da UF de consumo

// TAG de grupo do ICMS da Operação própria e ST - <ICMS> - Ocorrência 1-1

    CdsLookTributacoes.Close;        // TRAZ OS TRIBUTOS REFERENTE AO PRODUTO DO MOMENTO
    CdsLookTributacoes.Open;

if CdsLookTributacoesSTICMSA_CODIGO.AsString = '0' then
Det[qtditem].Imposto.ICMS.orig := oeNacional; // N11 - Origem da mercadoria
if CdsLookTributacoesSTICMSA_CODIGO.AsString = '1' then
Det[qtditem].Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta; // N11 - Origem da mercadoria
if CdsLookTributacoesSTICMSA_CODIGO.AsString = '2' then
Det[qtditem].Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil; // N11 - Origem da mercadoria
// (0)=oeNacional
// (1)=oeEstrangeiraImportacaoDireta


if CdsLookTributacoesSTICMSB_CODIGO.AsString = '00' then
Det[qtditem].Imposto.ICMS.CST := cst00; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '10' then
Det[qtditem].Imposto.ICMS.CST := cst10; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '20' then
Det[qtditem].Imposto.ICMS.CST := cst20; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '30' then
Det[qtditem].Imposto.ICMS.CST := cst30; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '40' then
Det[qtditem].Imposto.ICMS.CST := cst40; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '41' then
Det[qtditem].Imposto.ICMS.CST := cst41; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '50' then
Det[qtditem].Imposto.ICMS.CST := cst50; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '51' then
Det[qtditem].Imposto.ICMS.CST := cst51; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '60' then
Det[qtditem].Imposto.ICMS.CST := cst60; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '70' then
Det[qtditem].Imposto.ICMS.CST := cst70; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '90' then
Det[qtditem].Imposto.ICMS.CST := cst90; // N12 - Tributação do ICMS
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
if Det[qtditem].Imposto.ICMS.CST = cst00 then
begin
Det[qtditem].Imposto.ICMS.modBC       := dbiMargemValorAgregado; // N13 - Modalidade de determinação da BC do ICMS
Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
end;
if Det[qtditem].Imposto.ICMS.CST = cst10 then
begin
Det[qtditem].Imposto.ICMS.modBC       := dbiMargemValorAgregado; // N13 - Modalidade de determinação da BC do ICMS
Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
Det[qtditem].Imposto.ICMS.modBCST     := dbisMargemValorAgregado; // N18 - Modalidade de determinação da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pMVAST      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency; // N19 - Percentual da margem de valor Adicionado do ICMS ST
Det[qtditem].Imposto.ICMS.pRedBCST    := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;  // N21 - Valor da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; ; // N22 - Alíquota do imposto do ICMS ST
Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; ; // N23 - Valor do ICMS ST
end;
if Det[qtditem].Imposto.ICMS.CST = cst20 then
begin
Det[qtditem].Imposto.ICMS.modBC       := dbiMargemValorAgregado; // N13 - Modalidade de determinação da BC do ICMS
Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N14 - Percentual da Redução de BC do ICMS
Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
end;
if Det[qtditem].Imposto.ICMS.CST = cst30 then
begin
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
Det[qtditem].Imposto.ICMS.pMVAST      :=  CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency;// N19 - Percentual da margem de valor Adicionado do ICMS ST
Det[qtditem].Imposto.ICMS.pRedBCST    :=  CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // N22 - Alíquota do imposto do ICMS ST
Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
if Det[qtditem].Imposto.ICMS.CST = cst51 then
begin
Det[qtditem].Imposto.ICMS.modBC       := dbiMargemValorAgregado; // N13 - Modalidade de determinação da BC do ICMS
Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency;; // N14 - Percentual da Redução de BC do ICMS
Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_IPI_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
end;
if Det[qtditem].Imposto.ICMS.CST = cst60 then
begin
Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
if Det[qtditem].Imposto.ICMS.CST = cst70 then
begin
Det[qtditem].Imposto.ICMS.modBC       := dbiMargemValorAgregado; // N13 - Modalidade de determinação da BC do ICMS
Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N14 - Percentual da Redução de BC do ICMS
Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
Det[qtditem].Imposto.ICMS.modBCST     := dbisMargemValorAgregado; // N18 - Modalidade de determinação da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pMVAST      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency; // N19 - Percentual da margem de valor Adicionado do ICMS ST
Det[qtditem].Imposto.ICMS.pRedBCST    := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // N22 - Alíquota do imposto do ICMS ST
Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
if Det[qtditem].Imposto.ICMS.CST = cst90 then
begin
Det[qtditem].Imposto.ICMS.modBC       := dbiMargemValorAgregado; // N13 - Modalidade de determinação da BC do ICMS
Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N14 - Percentual da Redução de BC do ICMS
Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
Det[qtditem].Imposto.ICMS.modBCST     := dbisMargemValorAgregado; // N18 - Modalidade de determinação da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pMVAST      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency; // N19 - Percentual da margem de valor Adicionado do ICMS ST
Det[qtditem].Imposto.ICMS.pRedBCST    := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // N22 - Alíquota do imposto do ICMS ST
Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
// N13 - Modalidade de determinação da BC do ICMS
// (0)=dbiMargemValorAgregado
// (1)=dbiPauta
// (2)=dbiPrecoTabelado
// (3)=dbiValorOperacao


// N18 - Modalidade de determinação da BC do ICMS ST
// (0)=dbisPrecoTabelado  Preço tabelado ou máximo sugerido;
// (1)=dbisListaNegativa - Lista Negativa (valor);
// (2)=dbisListaPositiva - Lista Positiva (valor);
// (3)=dbisListaNeutra - Lista Neutra (valor);
// (4)=dbisMargemValorAgregado - Margem Valor Agregado (%);
// (5)=dbisPauta - Pauta (valor);)
//***************************************************************************************************
// TAG de grupo do IPI - <IPI> - Ocorrência 0-1

{Det[qtditem].Imposto.IPI.clEnq := ''; // O02 - Classe de enquadramento do IPI para Cigarros e Bebidas
Det[qtditem].Imposto.IPI.CNPJProd := ''; // O03 - CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
Det[qtditem].Imposto.IPI.cSelo := ''; // O04 - Código do selo de controle IPI
Det[qtditem].Imposto.IPI.qSelo := 0; // O05 - Quantidade de selo de controle
Det[qtditem].Imposto.IPI.cEnq := ''; // O06 - Código de Enquadramento Legal do IPI (Tabela a ser criada pela RFB, informar 999 enquanto a tabela não for criada)
Det[qtditem].Imposto.IPI.CST := ipi00; // O09 - Código da situação tributária do IPI   }

// (00)=ipi00 - Entrada com recuperação de crédito
// (49)=ipi49 - Outras entradas
// (50)=ipi50 - Saída tributada
// (99)=ipi99 - Outras saídas
// (01)=ipi01 - Entrada tributada com alíquota zero
// (02)=ipi02 - Entrada isenta
// (03)=ipi03 - Entrada não-tributada
// (04)=ipi04 - Entrada imune
// (05)=ipi05 - Entrada com suspensão
// (51)=ipi51 - Saída tributada com alíquota zero
// (52)=ipi52 - Saída isenta
// (53)=ipi53 - Saída não-tributada
// (54)=ipi54 - Saída imune
// (55)=ipi55 - Saída com suspensão

if (CdsLookTributacoesSTIPI_CODIGO.AsString = '00') then
Det[qtditem].Imposto.IPI.CST := ipi00;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '49') then
Det[qtditem].Imposto.IPI.CST := ipi49;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '50') then
Det[qtditem].Imposto.IPI.CST := ipi50;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '99') then
Det[qtditem].Imposto.IPI.CST := ipi99;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '01') then
Det[qtditem].Imposto.IPI.CST := ipi01;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '02') then
Det[qtditem].Imposto.IPI.CST := ipi02;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '03') then
Det[qtditem].Imposto.IPI.CST := ipi03;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '04') then
Det[qtditem].Imposto.IPI.CST := ipi04;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '05') then
Det[qtditem].Imposto.IPI.CST := ipi05;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '51') then
Det[qtditem].Imposto.IPI.CST := ipi51;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '52') then
Det[qtditem].Imposto.IPI.CST := ipi52;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '53') then
Det[qtditem].Imposto.IPI.CST := ipi53;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '54') then
Det[qtditem].Imposto.IPI.CST := ipi54;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '55') then
Det[qtditem].Imposto.IPI.CST := ipi55;


if (Det[qtditem].Imposto.IPI.CST = ipi00) or
(Det[qtditem].Imposto.IPI.CST = ipi49) or
(Det[qtditem].Imposto.IPI.CST = ipi50) or
(Det[qtditem].Imposto.IPI.CST = ipi99) then
begin
//if Opcao1 then
//begin
Det[qtditem].Imposto.IPI.vBC         := cdsItensNI_IPI_VALOR_BASE_CALCULO.AsCurrency; // O10 - Valor da BC do IPI
Det[qtditem].Imposto.IPI.pIPI        := cdsItensNI_IPI_ALIQUOTA.AsCurrency; // 013 - Alíquota do IPI
Det[qtditem].Imposto.IPI.vIPI        := cdsItensNI_IPI_VALOR.AsCurrency; // O14 - Valor do IPI
//end;
//if not opcao1 then
//begin
Det[qtditem].Imposto.IPI.qUnid := 0; // O11 - Qtde total na unidade padrão para tributação (somente para os produtos tributados por unidade)
Det[qtditem].Imposto.IPI.vUnid := 0; // O12 - Valor por Unidade Tributável
Det[qtditem].Imposto.IPI.vIPI := 0; // O14 - Valor do IPI
//end;
end;

// TAG de grupo do Imposto de Importação - <II> - Ocorrência 0-1

// Informar apenas quando o item for sujeito ao II
Det[qtditem].Imposto.II.vBc := 0; // P02 - Valor da BC do Imposto de Importação
Det[qtditem].Imposto.II.vDespAdu := 0; // P03 - Valor das despesas aduaneiras
Det[qtditem].Imposto.II.vII := 0; // P04 - Valor do Imposto de Importação
Det[qtditem].Imposto.II.vIOF := 0; // P05 - Valor do Imposto sobre Operações Financeiras

// TAG de grupo do PIS - <PIS> - Ocorrência 1-1

Det[qtditem].Imposto.PIS.CST := pis01; // Q06 - Código de Situação Tributária do PIS
// (01)=pis01  Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
// (02)=pis02 - Operação Tributável (base de cálculo = valor da operação (alíquota diferenciada));
// (03)=pis03 - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto )
// (04)=pis04 - Operação Tributável (tributação monofásica (alíquota zero));
// (06)=pis06 - Operação Tributável (alíquota zero);
// (07)=pis07 - Operação Isenta da Contribuição;
// (08)=pis08 - Operação Sem Incidência da Contribuição;
// (09)=pis09 - Operação com Suspensão da Contribuição;
// (99)=pis99 - Outras Operações;

if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '01') then
Det[qtditem].Imposto.PIS.CST := pis01;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '02') then
Det[qtditem].Imposto.PIS.CST := pis02;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '03') then
Det[qtditem].Imposto.PIS.CST := pis03;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '04') then
Det[qtditem].Imposto.PIS.CST := pis04;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '06') then
Det[qtditem].Imposto.PIS.CST := pis06;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '07') then
Det[qtditem].Imposto.PIS.CST := pis07;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '08') then
Det[qtditem].Imposto.PIS.CST := pis08;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '09') then
Det[qtditem].Imposto.PIS.CST := pis09;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '99') then
Det[qtditem].Imposto.PIS.CST := pis99;

if (Det[qtditem].Imposto.PIS.CST = pis01) or
(Det[qtditem].Imposto.PIS.CST = pis02) then
begin
Det[qtditem].Imposto.PIS.vBC          := cdsItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // Q07 - Valor da Base de Cálculo do PIS
Det[qtditem].Imposto.PIS.pPIS         := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // Q08 - Alíquota do PIS (em percentual)
Det[qtditem].Imposto.PIS.qBCProd      := cdsItensNI_QTD.AsCurrency; // Q10 - Quantidade Vendida
Det[qtditem].Imposto.PIS.vAliqProd    := 0; // Q11 - Alíquota do PIS (em reais)
Det[qtditem].Imposto.PIS.vPIS         := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;

if (Det[qtditem].Imposto.PIS.CST = pis03) then
begin
Det[qtditem].Imposto.PIS.qBCProd    := cdsItensNI_QTD.AsCurrency; // Q10 - Quantidade Vendida
Det[qtditem].Imposto.PIS.vAliqProd  := cdsItensNI_PIS_ALIQUOTA.AsCurrency;; // Q11 - Alíquota do PIS (em reais)
Det[qtditem].Imposto.PIS.vPIS       := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;
if (Det[qtditem].Imposto.PIS.CST = pis03) and (cdsItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0)then
begin
Det[qtditem].Imposto.PIS.vBC        := cdsItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // Q07 - Valor da Base de Cálculo do PIS
Det[qtditem].Imposto.PIS.pPIS       := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // Q08 - Alíquota do PIS (em percentual)
Det[qtditem].Imposto.PIS.vPIS       := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;
if (Det[qtditem].Imposto.PIS.CST = pis03) and (not (cdsItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0))then
begin
Det[qtditem].Imposto.PIS.qBCProd    := cdsItensNI_QTD.AsCurrency; // Q10 - Quantidade Vendida
Det[qtditem].Imposto.PIS.vAliqProd  := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // Q11 - Alíquota do PIS (em reais)
Det[qtditem].Imposto.PIS.vPIS       := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;

// TAG do grupo de PIS Substituição Tributária - <PISST> - Ocorrência 0-1

{if opcao1 then
begin
Det[qtditem].Imposto.PISST.vBc      := cdsItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // R02 - Valor da Base de Cálculo do PIS
Det[qtditem].Imposto.PISST.pPis     := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // R03 - Alíquota do PIS (em percentual)
Det[qtditem].Imposto.PISST.vPIS     := cdsItensNI_PIS_VALOR.AsCurrency; // R06 - Valor do PIS
end;
if not opcao1 then
begin
Det[qtditem].Imposto.PISST.qBCProd := 0; // R04 - Quantidade Vendida
Det[qtditem].Imposto.PISST.vAliqProd := 0; // R05 - Alíquota do PIS (em reais)
Det[qtditem].Imposto.PISST.vPIS := 0; // R06 - Valor do PIS
end;}

// TAG de grupo do COFINS - <COFINS> - Ocorrência 1-1

Det[qtditem].Imposto.COFINS.CST := cof01; // S06 - Código de Situação Tributária do COFINS
// (01)  Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
// (02) - Operação Tributável (base de cálculo = valor da operação
// (03) - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto);
// (04) - Operação Tributável (tributação monofásica (alíquota zero));
// (06) - Operação Tributável (alíquota zero);
// (07) - Operação Isenta da Contribuição;
// (08) - Operação Sem Incidência da Contribuição;
// (09) - Operação com Suspensão da Contribuição;
// (99) - Outras Operações;

if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '01') then
Det[qtditem].Imposto.COFINS.CST := cof01;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '02') then
Det[qtditem].Imposto.COFINS.CST := cof02;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '03') then
Det[qtditem].Imposto.COFINS.CST := cof03;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '04') then
Det[qtditem].Imposto.COFINS.CST := cof04;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '06') then
Det[qtditem].Imposto.COFINS.CST := cof06;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '07') then
Det[qtditem].Imposto.COFINS.CST := cof07;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '08') then
Det[qtditem].Imposto.COFINS.CST := cof08;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '09') then
Det[qtditem].Imposto.COFINS.CST := cof09;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '99') then
Det[qtditem].Imposto.COFINS.CST := cof99;


if (Det[qtditem].Imposto.COFINS.CST = cof01) or (Det[qtditem].Imposto.COFINS.CST = cof02) then
begin
Det[qtditem].Imposto.COFINS.vBC             := cdsItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // S07 - Valor da Base de Cálculo da COFINS
Det[qtditem].Imposto.COFINS.pCOFINS         := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S08 - Alíquota da COFINS (em percentual)
Det[qtditem].Imposto.COFINS.vCOFINS         := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;
if Det[qtditem].Imposto.COFINS.CST = cof03 then
begin
Det[qtditem].Imposto.COFINS.vBCProd         := cdsItensNI_COFINS_VALOR.AsCurrency; // S09 - Valor do COFINS
Det[qtditem].Imposto.COFINS.vAliqProd       := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S10 - Alíquota do COFINS (em reais)
Det[qtditem].Imposto.COFINS.vCOFINS         := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;
if ( Det[qtditem].Imposto.COFINS.CST = cof99) and (cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0) then
begin
Det[qtditem].Imposto.COFINS.vBC             := cdsItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // S07 - Valor da Base de Cálculo da COFINS
Det[qtditem].Imposto.COFINS.pCOFINS         := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S08 - Alíquota da COFINS (em percentual)
Det[qtditem].Imposto.COFINS.vCOFINS         := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;
if ( Det[qtditem].Imposto.COFINS.CST = cof99) and (not (cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0)) then
begin
Det[qtditem].Imposto.COFINS.qBCProd := cdsItensNI_QTD.AsCurrency; // S09 - Quantidade Vendida
Det[qtditem].Imposto.COFINS.vAliqProd := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S10 - Alíquota do COFINS (em reais)
Det[qtditem].Imposto.COFINS.vCOFINS := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;

// TAG do grupo de COFINS Substituição Tributária - <COFINSST> - Ocorrência 0-1

{if (DMLOOKUP.CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '05') then
begin
if (cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0) then
begin
Det[qtditem].Imposto.COFINSST.vBC         := cdsItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // T02 - Valor da Base de Cálculo da COFINS
Det[qtditem].Imposto.COFINSST.pCOFINS     := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // T03 - Alíquota da COFINS (em percentual)
Det[qtditem].Imposto.COFINSST.vCOFINS     := cdsItensNI_COFINS_VALOR.AsCurrency; // T06 - Valor do COFINS
end else begin
Det[qtditem].Imposto.COFINSST.qBCProd     := cdsItensNI_QTD.AsCurrency; // T04 - Quantidade Vendida
Det[qtditem].Imposto.COFINSST.vAliqProd   := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // T05 - Alíquota do COFINS (em reais)
Det[qtditem].Imposto.COFINSST.vCOFINS     := cdsItensNI_COFINS_VALOR.AsCurrency; // T06 - Valor do COFINS
end;
end;

// TAG do grupo do ISSQN - <ISSQN> - Ocorrência 0-1

Det[qtditem].Imposto.ISSQN.vBC := 0; // U02 - Valor da Base de Cálculo do ISSQN
Det[qtditem].Imposto.ISSQN.vAliq := 0; // U03 - Alíquota do ISSQN
Det[qtditem].Imposto.ISSQN.vISSQN := 0; // U04 - Valor do ISSQN
Det[qtditem].Imposto.ISSQN.cMunFG := 0; // U05 - Código do município de ocorrência do fato gerador do ISSQN
Det[qtditem].Imposto.ISSQN.cListServ := 0; // U06 - Código da Lista de Serviços  }


  cdsItens.Next;
  end;

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Valores Totais da NF-e - <total> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// TAG de grupo de Valores Totais referentes ao ICMS - <ICMSTot> - Ocorrência 1-1
Total.ICMSTot.vBC         := cdscadNOT_BASEICM.AsCurrency; // W03 - Base de Cálculo do ICMS
Total.ICMSTot.vICMS       := cdsCadNOT_VALICM.AsCurrency; // W04 - Valor Total do ICMS
Total.ICMSTot.vBCST       := cdsCadNOT_BASESUBS.AsCurrency; // W05 - Base de Cálculo do ICMS ST
Total.ICMSTot.vST         := cdsCadNOT_VALSUBS.AsCurrency; // W06 - Valor Total do ICMS ST
Total.ICMSTot.vProd       := cdsCadNOT_TOTITENS.AsCurrency; // W07 - Valor Total dos produtos e serviços
Total.ICMSTot.vFrete      := cdsCadNOT_VALFRETE.AsCurrency; // W08 - Valor Total do Frete
Total.ICMSTot.vSeg        := cdsCadNOT_VALSEGURO.AsCurrency; // W09 - Valor Total do Seguro
Total.ICMSTot.vDesc       := cdsCadNOT_DESCONTO.AsCurrency; // W10 - Valor Total do Desconto
Total.ICMSTot.vII         := 0; // W11 - Valor Total do II
Total.ICMSTot.vIPI        := cdsCadNOT_VALIPI.AsCurrency; // W12 - Valor Total do IPI
Total.ICMSTot.vPIS        := cdsCadNOT_VALPIS.AsCurrency; // W13 - Valor do PIS
Total.ICMSTot.vCOFINS     := cdsCadNOT_VALCOFINS.AsCurrency; // W14 - Valor do COFINS
Total.ICMSTot.vOutro      := cdsCadNOT_ACRECIMO.AsCurrency; // W15 - Outras Despesas acessórias
Total.ICMSTot.vNF         := cdsCadNOT_TOTNOTA.AsCurrency; // W16 - Valor Total da NF-e

// TAG de grupo de Valores Totais referentes ao ISSQN - <ISSQNtot> - Ocorrência 0-1
Total.ISSQNtot.vServ := 0; // W18 - Valor Total dos Serviços sob nãoincidência ou não tributados pelo ICMS
Total.ISSQNtot.vBC := 0; // W19 - Base de Cálculo do ISS
Total.ISSQNtot.vISS := 0; // W20 - Valor Total do ISS
Total.ISSQNtot.vPIS := 0; // W21 - Valor do PIS sobre serviços
Total.ISSQNtot.vCOFINS := 0; // W22 - Valor do COFINS sobre serviços


// TAG de grupo de Retenções de Tributos - <retTrib> - Ocorrência 0-1
Total.retTrib.vRetPIS := 0; // W24 - Valor Retido de PIS
Total.retTrib.vRetCOFINS := 0; // W25 - Valor Retido de COFINS
Total.retTrib.vRetCSLL := 0; // W26 - Valor Retido de CSLL
Total.retTrib.vBCIRRF := 0; // W27 - Base de Cálculo do IRRF
Total.retTrib.vIRRF := 0; // W28 - Valor Retido do IRRF
Total.retTrib.vBCRetPrev := 0; // W29 - Base de Cálculo da Retenção da Previdência Social
Total.retTrib.vRetPrev := 0; // W30 - Valor da Retenção da Previdência Social

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Informações do Transporte da NF-e - <transp> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)
if cdsCadFRETE.AsInteger = 0 then
Transp.modFrete := mfContaEmitente; // X02 - Modalidade do frete
if cdsCadFRETE.AsInteger = 0 then
Transp.modFrete := mfContaDestinatario;
// (0)=mfContaEmitente  por conta do emitente;
// (1)=mfContaDestinatario  por conta do destinatário)
// TAG de grupo Transportador - <transporta> - Ocorrência 0-1
Transp.Transporta.CNPJCPF     := cdscadNOT_TRANSCNPJCPF.AsString; // X05 - Informar o CNPJ ou o CPF do Transportador, preenchendo os zeros não significativos.
Transp.Transporta.xNome       := cdsCadNOT_TRANSRAZAO.AsString; // X06 - Razão Social ou nome
Transp.Transporta.IE          := cdsCadNOT_TRANSINSCRICAO.AsString; // X07 - Inscrição Estadual
Transp.Transporta.xEnder      := cdsCadNOT_TRANSENDERECO.AsString; // X08 - Endereço Completo
Transp.Transporta.xMun        := cdsCadNOT_TRANSMUNICIPIO.AsString; // X09 - Nome do município
Transp.Transporta.UF          := cdsCadNOT_TRANSUF2.AsString; // X10 - Sigla da UF
// TAG de grupo de Retenção do ICMS do transporte - <retTransp> - Ocorrência 0-1
Transp.retTransp.vServ := 0; // X12 - Valor do Serviço
Transp.retTransp.vBCRet := 0; // X13 - BC da Retenção do ICMS
Transp.retTransp.pICMSRet := 0; // X14 - Alíquota da Retenção
Transp.retTransp.vICMSRet := 0; // X15 - Valor do ICMS Retido
Transp.retTransp.CFOP := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
Transp.retTransp.cMunFG := 0; // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)
// TAG de grupo Veículo - <veicTransp> - Ocorrência 0-1
Transp.veicTransp.placa := ''; // X19 - Placa do Veículo
Transp.veicTransp.UF := ''; // X20 - Sigla da UF
Transp.veicTransp.RNTC := ''; // X21 - Registro Nacional de Transportador de Carga (ANTT)

for i := 0 to 1 do
begin
Transp.Reboque.Add; // TAG de grupo Reboque - <reboque> - Ocorrência 0-2
Transp.Reboque[qtditem].placa := ''; // X23 - Placa do Veículo
Transp.Reboque[qtditem].UF := ''; // X24 - Sigla da UF
Transp.Reboque[qtditem].RNTC := ''; // X25 - Registro Nacional de Transportador de Carga (ANTT)
end;

for i := 0 to 1 do
begin
Transp.Vol.add; // TAG de grupo Volumes - <vol> - Ocorrência 0-N
Transp.Vol[qtditem].qVol := 0; // X27 - Quantidade de volumes transportados
Transp.vol[qtditem].esp := ''; // X28 - Espécie dos volumes transportados
Transp.Vol[qtditem].marca := ''; // X29 - Marca dos volumes transportados
Transp.Vol[qtditem].nVol := ''; // X30 - Numeração dos volumes transportados
Transp.Vol[qtditem].pesoL := 0; // X31 - Peso Líquido (em kg)
Transp.Vol[qtditem].pesoB := 0; // X32 - Peso Bruto (em kg)
for j := 0 to 1 do
begin
transp.Vol[qtditem].lacres.add; // TAG de grupo de Lacres - <lacres> - Ocorrência 0-N
transp.Vol[qtditem].lacres[j].nLacre := ''; // X34 - Número dos Lacres
// Para Combustíveis, um Caminhão (Toco, Truck, Carreta, Bi-Tren) pode ter até 32 bocas.
// Ou seja até 32 lacres. Cada lacre pode ser um número de até 8 digitos.
end;
end;
   end;
   end;


procedure TFrmCad_NotaFiscalServico.ConfigurarparametrosdaNFe1Click(
  Sender: TObject);
begin
  inherited;
  LockWindowUpdate( Handle );
  with TFrmcad_ParametroNFe.Create( self ) do
    begin
      FormStyle := fsMDIChild;
      Visible := True;
      LockWindowUpdate( 0 );
    end;  
end;

procedure TFrmCad_NotaFiscalServico.CriareEnviar1Click(Sender: TObject);
var
 vAux, vNumLote : String;
BEGIN
  inherited;

validacampos;
ModeloNFe;

 { dmhidra.ACBrNFe1.NotasFiscais.Clear;

  vAux := cdsCadNOT_NR.AsString;
  GerarNFe(vAux);

  dmhidra.ACBrNFe1.Enviar(0,True);

  MemoResp.Lines.Text := UTF8Encode(dmhidra.ACBrNFe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(dmhidra.ACBrNFe1.WebServices.Retorno.RetornoWS);
  LoadXML(MemoResp, WBResposta);

 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Envio NFe');
 MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(dmhidra.ACBrNFe1.WebServices.Retorno.TpAmb));
 MemoDados.Lines.Add('verAplic: '+ dmhidra.ACBrNFe1.WebServices.Retorno.verAplic);
 MemoDados.Lines.Add('cStat: '+ IntToStr(dmhidra.ACBrNFe1.WebServices.Retorno.cStat));
 MemoDados.Lines.Add('cUF: '+ IntToStr(dmhidra.ACBrNFe1.WebServices.Retorno.cUF));
 MemoDados.Lines.Add('xMotivo: '+ dmhidra.ACBrNFe1.WebServices.Retorno.xMotivo);
 MemoDados.Lines.Add('cMsg: '+ IntToStr(dmhidra.ACBrNFe1.WebServices.Retorno.cMsg));
 MemoDados.Lines.Add('xMsg: '+ dmhidra.ACBrNFe1.WebServices.Retorno.xMsg);
 MemoDados.Lines.Add('Recibo: '+ dmhidra.ACBrNFe1.WebServices.Retorno.Recibo);
 MemoDados.Lines.Add('Protocolo: '+ dmhidra.ACBrNFe1.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno;

  dmhidra.ACBrNFe1.NotasFiscais.Clear; }
end;

procedure TFrmCad_NotaFiscalServico.CupomFiscal1Click(Sender: TObject);
var
 x,i: integer;
 dValor,VUNITARIO,ALIICMS,ALIISS,VALORUNTSERV,valortotalnota: Double;
 Est,SUNITARIO,dvalorss,CODFPG : String ;
 Descricao,OBS,TIPOCODIGO,CODSERVICO,DESCRICAOSERVICO : String ;
 Consumidor : String ;
 CPF, NOME, ENDERECO : String ;
 P : Integer ;
 FPG : TACBrECFFormaPagamento ;
 operacaoECFOK, houvePgtComCartao, cupomFiscal: Boolean;
 frmFechaCupom: TFechamentoCupomForm;
 formaPgt: string;
begin
try

if cdsCadNOT_EFCSTATUS.AsInteger = 1  then
begin
 Application.MessageBox('Já foi realizada a impressão desse cupom com sucesso' 
   + #13#10 + 'e o mesmo não pode ser impresso novamente. ', 'ATENÇÃO!', MB_OK
   + MB_ICONSTOP); 
  Abort;  
end;

if cdsCadNOT_TIPO.AsString <> 'ECF' then
BEGIN
  MessageBox(Handle, 'Não é possivel imprimir o Cupom fiscal!' + #13#10 + 
  'Tipo de documento não é ECF!', 'ATENÇÃO!', MB_OK + MB_ICONSTOP);
  DBComboBox1.SetFocus;
  Abort;
END;


avisodeimpressao.Enabled := True;
  Consumidor := ' ' ;
  houvePgtComCartao := False;
  if ( cdsItens.RecordCount > 0 ) OR ( CdsItensServico.RecordCount > 0 ) then
  begin
    if dbeCodCli.Text <> '' then
    BEGIN
     cdsLookCli.Close;
     cdsLookCli.Params.ParamByName('cli_codigo').Value   := StrToInt(dbeCodCli.Text);
     cdsLookCli.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;  
    cdsLookCli.Open;
    END;

  IF DmHidra.cdsParamsUSAR_ECF.AsString = 'Sim' then
  begin

    frm_principal.ACBrECF1.DataHora;

  try
     frm_principal.ACBrECF1.TestaPodeAbrirCupom ;

  except
   ShowMessage('NÃO É POSSIVEL ABRIR CUPOM FISCAL, ESTADO ATUAL É..:'  +Est);
  END;
     TRY

     IF cdsLookCliCLI_CPFCNPJ.AsString = '' THEN
     CPF := '00.000.000/0000-00'
     ELSE
     CPF := cdsLookCliCLI_CPFCNPJ.AsString;

     IF cdsLookCliCLI_RAZAO.AsString = '' THEN
     NOME := '***'
     ELSE
     NOME := cdsLookCliCLI_RAZAO.AsString;

     IF cdsLookCliCLI_END_COMPLETO.AsString = '' THEN
     ENDERECO := '***'
     ELSE
     ENDERECO := cdsLookCliCLI_END_COMPLETO.AsString;

     frm_principal.ACBrECF1.AbreCupom(CPF,NOME,ENDERECO);
     EXCEPT

     END;
     CdsItensServico.Close;
     CdsItensServico.Open;
     CdsItensServico.First;

     cdsItens.Close;
     cdsItens.Open;
     cdsItens.First;

     while not cdsItens.Eof do
     begin
     VUNITARIO := 0;
     SUNITARIO := '';
     dvalorss := '';
    // ALIICMS := Frm_Principal.ACBrECF1.AchaICMSAliquota(ALIICMS,0);

     VUNITARIO := cdsItensNI_VALORUN.AsFloat;
     SUNITARIO := RemoveChrInvalidos(FloatToStr(VUNITARIO));

              i := DmHidra.LocalizaProduto(cdsItensPRO_CODIGO.AsString);
              DmHidra.QryNomeProd.Close;
              DmHidra.QryNomeProd.ParamByName( 'CODIGO' ).AsInteger := i;
              DmHidra.QryNomeProd.OPEN;

      dvalorss := DmHidra.cdsParamsECF_ALI_ICMS.AsString+ 'T';

      if DmHidra.QryNomeProdPI_TIPOTRIBUTACAO_ICMS.AsString <> '' then
      dvalorss := DmHidra.QryNomeProdPI_TIPOTRIBUTACAO_ICMS.AsString+'T';
     ///////////////////////////////////////////////////////////////////

    TIPOCODIGO := '';

    if cdsItensPRO_CODIGO.AsString <> '' then
    begin
    TIPOCODIGO := cdsItensPRO_CODIGO.AsString;
    end;

    if DmHidra.QryNomeProdPRO_CODFABRICANTE.AsString <> '' then
    begin
    TIPOCODIGO := DmHidra.QryNomeProdPRO_CODFABRICANTE.AsString;
    end;
    
          frm_principal.ACBrECF1.VendeItem( TIPOCODIGO, RemoveAcentos(cdsItensPRO_NOME.AsString),
                               dvalorss, StrToFloatDef(RemoveChrInvalidos(cdsItensNI_QTD.AsString), 0 ),
                               StrToFloatDef( RemoveChrInvalidos(SUNITARIO),0 ),
                               StrToFloatDef( RemoveChrInvalidos(cdsItensNI_VALOR_DESCONTO.AsString),0 ), cdsItensNI_UNID.AsString,
                               '' );
    // Form1.mResp.Lines.Add( 'Vende Item: Cod:'+ edCodigo.Text+
    //                        ' Desc'+ edDescricao.Text+
    //                        ' Aliq:'+edICMS.Text +
    //                        ' Qtd:'+edQtd.Text +
    //                        ' Preço:'+edPrecoUnita.Text +
    //                        ' Desc:'+edDesconto.Text +
    //                        ' Un:'+edUN.Text +
    //                        ' Desc:'+Desc );

  cdsItens.Next;
end;


  if DmHidra.cdsParamsECF_ALI_ISSQN.AsFloat > 0 then
  begin
  // SERVICO
  if NOT CdsItensServico.IsEmpty then  BEGIN

     while not CdsItensServico.Eof do
     begin
     // try
                frm_principal.ACBrECF1.VendeItem( Trim(RemoveChrInvalidos(CdsItensServicoPRO_CODIGO.AsString)),
                               RemoveAcentos(CdsItensServicoSER_DESCRICAO.AsString),
                               (DmHidra.cdsParamsECF_ALI_ISSQN.AsString)+'S',
                               StrToFloatDef( CdsItensServicoNI_QTD.AsString, 0 ),
                               StrToFloatDef( RemoveChrInvalidos(CdsItensServicoNI_VALORUN.AsString),0 ),
                               StrToFloatDef( '',0 ),
                               '',
                               '' );
    // Form1.mResp.Lines.Add( 'Vende Item: Cod:'+ edCodigo.Text+
    //                        ' Desc'+ edDescricao.Text+
    //                        ' Aliq:'+edICMS.Text +
    //                        ' Qtd:'+edQtd.Text +
    //                        ' Preço:'+edPrecoUnita.Text +
    //                        ' Desc:'+edDesconto.Text +
    //                        ' Un:'+edUN.Text +
    //                        ' Desc:'+Desc );

      //except

     // end;   
  CdsItensServico.Next;
  end;
  end;
  end;
  valortotalnota := 0;
  valorTotalCartao := 0;
  valortotalnota := StrToFloat(RemoveChrInvalidos(cdsCadNOT_TOTNOTA.AsString));
  cupomFiscal := DBComboBox1.Text = 'ECF';
  if cupomFiscal then begin
    frmFechaCupom := TFechamentoCupomForm.Create(Self,
      valortotalnota);
    frmFechaCupom.ShowModal;

    if frmFechaCupom.ModalResult <> mrOK then
      Abort;

    EasyTEF.numeroDeCartoes := frmFechaCupom.numCartoes;

    frmFechaCupom.cdsFechamentoCupom.First;
    while not frmFechaCupom.cdsFechamentoCupom.Eof do
    begin
      if frmFechaCupom.cdsFechamentoCupom.FieldByName('Forma').AsString = FORMA_PGTO_TEF then begin
              houvePgtComCartao := True;
        valorTotalCartao := valorTotalCartao + 
          frmFechaCupom.cdsFechamentoCupom.FieldByName('Valor').AsFloat;

        atribuirPropriedade(EasyTEF.transacao.transacao, 'Cartao Vender');
        EasyTEF.transacao.valor :=
          frmFechaCupom.cdsFechamentoCupom.FieldByName('Valor').AsFloat;
        EasyTEF.pagarNoCartao;
        if not EasyTEF.transacaoAprovada then
          Abort;

        frmFechaCupom.cdsFechamentoCupom.Delete;
        if frmFechaCupom.cdsFechamentoCupom.FieldByName('Forma').AsString <> FORMA_PGTO_TEF then
          frmFechaCupom.cdsFechamentoCupom.Next;
        // forma de pagamento que será passada para o comprovante não fiscal
        // vinculado
        formaPgt := FORMA_PGTO_TEF;
      end else
        frmFechaCupom.cdsFechamentoCupom.Next;
    end;
  end;//if

  // EasyTEF Team - 15/08/2010
  // Comentado para a entrada dos comandos do componente EasyTEF.
  //frm_principal.ACBrECF1.SubtotalizaCupom( StrToFloatDef('-'+ cdsCadNOT_FORMAPGMT.AsString,0) );

  if cdscadNOT_DESCONTO.AsFloat > 0 then
    EasyTEF.tratarCupomFiscal(tmeIniciarFechamentoCupom, [
      FormatFloat('#,##0.00', cdscadNOT_DESCONTO.AsFloat * -1)],
      operacaoECFOK)
  else if cdsCadNOT_ACRECIMO.AsFloat > 0 then
    EasyTEF.tratarCupomFiscal(tmeIniciarFechamentoCupom, [
      FormatFloat('#,##0.00', cdsCadNOT_ACRECIMO.AsFloat)],
      operacaoECFOK)
  else
    EasyTEF.tratarCupomFiscal(tmeIniciarFechamentoCupom, [
      '0'], operacaoECFOK);

 // CarregaFPG;

	with frmFechaCupom.cdsFechamentoCupom do begin

	// EasyTEF Team - 15/08/2010
	// Comentado para a entrada dos comandos do componente EasyTEF.
	//  TRY
	//  FPG := frm_principal.ACBrECF1.AchaFPGDescricao( cdsCadNOT_FORMAPGMT.AsString ) ;
	//  CODFPG    := FPG.Indice;
	//  frm_principal.ACBrECF1.EfetuaPagamento(CODFPG,cdsCadNOT_TOTITENS.AsFloat,'',false);
	//  EXCEPT
	// // ShowMessage('ERRO NA FORMA DE PAGAMENTO');
	//  END;

        First;
        // efetua todas as formas de pagamento utilizadas no cupom
        while not Eof do begin
          EasyTEF.tratarCupomFiscal(tmeEfetuarFormaPgto,
            [FieldByName('Forma').AsString,
            FormatFloat('#,##0.00', FieldByName('Valor').AsFloat)], operacaoECFOK);
          Next;
        end;//while

        // se houve pagamento com cartão
        if houvePgtComCartao then begin
          if EasyTEF.multiplosCartoes then
            for i := 0 to EasyTEF.valoresCartoes.Count - 1 do begin
              EasyTEF.tratarCupomFiscal(tmeEfetuarFormaPgto,
                [FORMA_PGTO_TEF, EasyTEF.valoresCartoes[i]], operacaoECFOK);
            end//for
          else
            EasyTEF.tratarCupomFiscal(tmeEfetuarFormaPgto,
              [FORMA_PGTO_TEF, FormatFloat('#,##0.00', valorTotalCartao)],
              operacaoECFOK);
        end;//if

		OBS:= 'Cliente.: '+cdsLookCliCLI_RAZAO.AsString +'|Cnpj\Cpf.: ' + cdsLookCliCLI_CPFCNPJ.AsString +'|'+
		cdsLookCliCLI_END_ENDERECO.AsString + ' '+ cdsLookCliCLI_END_CID_NOME.AsString +'  ' +cdsLookCliCLI_END_CID_UF.AsString + '|'+
		cdsLookCliCLI_FONE.AsString +'|'+ ' OBRIGADO, VOLTE SEMPRE!';
		
		// EasyTEF Team - 15/08/2010
		// Comentado para a entrada dos comandos do componente EasyTEF.
		//  try
		//  frm_principal.ACBrECF1.FechaCupom( OBS );
		//  Except
		//  end;

    EasyTEF.tratarCupomFiscal(tmeTerminarFechamentoCupom,
      ['Mensagem de fechamento desejada...'], operacaoECFOK);

        // colocar a mensagem de impressao aqui
        avisodeimpressao.Enabled := True;
        // imprime o(s) cupom(s) TEF na ECF após o fechamento do cupom fiscal
        try
        if houvePgtComCartao and (EasyTEF.numeroDeCartoes = 1) then begin
          if not EasyTEF.imprimirCupomECF(EasyTEF.comprovanteTEF1aVia,
             EasyTEF.comprovanteTEF2aVia, EasyTEF.comprovanteTEFResumido) then
            Abort;
        end else if houvePgtComCartao and EasyTEF.multiplosCartoes then begin
          if not EasyTEF.imprimirCuponsECF then
            Abort;
        end;//else  
        finally
         // retirar a mensagem de impressão aqui
         Avisodeimpressao.Enabled := False;
         JvgLabel1.Visible        := False;
        end;
  	end;//with
END else
begin
 Application.MessageBox('Não programado para imprimir ECF', 'ATENÇÃO!', MB_OK
   + MB_ICONSTOP);
end;

end;
 Label68.Caption := 'Impressão do cupom fiscal terminada com sucesso!';
 Label68.Visible := true;
finally
avisodeimpressao.Enabled := False;
JvgLabel1.Visible        := False;
end;
end;

procedure TFrmCad_NotaFiscalServico.dbeCodCliChange(Sender: TObject);
begin
  inherited;
  TRY
  if dbeCodCli.Text = '' then begin
      cdsLookCli.Close;
      cdsLookCli.Params[ 0 ].Value := 0;
      cdsLookCli.Open;
      Exit;
    end;
  begin
    cdsLookCli.Close;
    cdsLookCli.Params[ 0 ].Value := dbeCodCli.Text;
    cdsLookCli.Open;
  end;
  EXCEPT
  END;
end;


procedure TFrmCad_NotaFiscalServico.dbeOSExit(Sender: TObject);
begin
  inherited;

    VALIDAANTESDAIMPORTACAO;

    if (Trim( dbeOS.Text ) <> '') and (Trim( dbeOS.Text ) <> '0') then
    begin
    dbePedido.Text :='';

    while not CdsItensServico.IsEmpty do
    begin
     CdsItensServico.Delete;
     CdsItensServico.Next;
    end;

    while not cdsItens.IsEmpty do
    begin
      cdsItens.Delete;
      cdsItens.Next;
    end;

    //  inherited;
      if ( cdsCad.State in [ dsInsert, dsedit ] ) and ( cdsCadOS_CODIGO.AsString <> '' ) then
        begin

          QryOSPRONTA.Close;
          QryOSPRONTA.ParamByName( 'FILIAL' ).AsInteger := cdsCadFIL_CODIGO.AsInteger;
          QryOSPRONTA.ParamByName( 'OS' ).AsInteger := cdsCadOS_CODIGO.AsInteger;
          QryOSPRONTA.Open;

          if QryOSPRONTA.IsEmpty then begin
              ShowMessage( 'ESTÁ O.S NÃO EXISTE, OU AINDA NÃO ESTÁ EFETIVADA!' );
              Abort;
            end;

            if (cdsItens.IsEmpty OR CdsItensServico.IsEmpty) then BEGIN
            if MessageBox(Handle, 'Já existe uma nota lançada, ' + #13#10 + 
              'deseja realmente refazer o lançamento!', 'ATENÇÃO!', MB_YESNO +
              MB_ICONQUESTION) = IDNO then
            begin
            Abort;
            end; 
            END;  

          ImportaNotaOS;
          ImportaServ;
          ImportaTiT;

    dbePedido.Text := '';

    cdsCad.Post;
         Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;
        end;
    end;
end;


procedure TFrmCad_NotaFiscalServico.dbePedidoExit(Sender: TObject);
var
  S, X: string;
begin
  inherited;

  VALIDAANTESDAIMPORTACAO ;

  if (Trim( dbePedido.Text ) <> '') and (Trim( dbePedido.Text ) <> '0') then
    begin
    dbeOS.Text := '';
      if not cdsItens.IsEmpty then
        begin
          cdsItens.First;


    while not CdsItensServico.IsEmpty do
    begin
     CdsItensServico.Delete;
     CdsItensServico.Next;
    end;

    while not cdsItens.IsEmpty do
    begin
      cdsItens.Delete;
      cdsItens.Next;
    end;

        end;


      if ( cdsCad.State in [ dsInsert, dsedit ] ) and ( cdsCadPED_CODIGO.AsString <> '' ) then
        begin
          ImportaNota;
          ImportaTiT;

          S := '';
          X := '';

          while not cdsTit.Eof do
            begin
              S := FormatFloat( '###,###,##0.00', cdsTitTIT_VALOR.AsFloat ) + '   DATA VENC.: ' + cdsTitTIT_VENCIMENTO.AsString + #13#10;
              X := X + S;
              cdsTit.Next;
            end;
        // eu mudei
        //  cdsCadNOT_OBSERVACAO.AsString := X;
        end;
      cdsCad.Post;

       dbeOS.Text := '';
        Codigomaster := cdsCadNOT_CODIGO.asinteger;
        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := Codigomaster;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;
    end;




end;

procedure TFrmCad_NotaFiscalServico.dbgITensColEnter(Sender: TObject);
begin
  inherited;
  if dbgItens.Columns[ dbgItens.SelectedIndex ].ReadOnly then
    begin
      if dbgItens.SelectedIndex = ( dbgItens.Columns.Count - 1 ) then
        begin
          dbgItens.DataSource.DataSet.Append;
          dbgItens.SelectedIndex := 0;
        end
      else
        begin
          dbgItens.SelectedIndex := dbgItens.SelectedIndex + 1;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.dbgITensEnter(Sender: TObject);
begin
  inherited;
    if ( cdsCad.State in [ dsiNSERT, DSedit ] )  then
  cdscad.Post;

 // Self.cdsItens.close;
 // Self.cdsItens.Open;
end;

procedure TFrmCad_NotaFiscalServico.dbgITensExit(Sender: TObject);
begin
  inherited;
  if dbgItens.SelectedIndex = 0 then
    begin
      if cdsItensPRO_CODIGO.AsString = '' then
        begin
        //JvDBCalcEdit7.SetFocus  ;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.dbgITensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if ( ssShift in Shift ) and ( key = 46 ) then
    begin
      cdsItens.Delete;

    end;

  if ( Key = VK_F2 ) and ( not TDBGrid( Sender ).ReadOnly ) then
    begin
      with TFrmCad_Produtos.Create( self ) do
        begin
          ModoPesquisa := true;
          ModoPesq;
          if not ( self.cdsItens.State in [ dsiNSERT, DSedit ] ) then self.cdsItens.Append;
          self.cdsItensPRO_CODIGO.AsString := cdsPesqPRO_CODIGO.AsString;
          Free;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.dbgITensKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if ( key = #13 ) and ( not dbgItens.ReadOnly ) then
    begin
      if ( dbgItens.Columns.Count - 1 ) = dbgItens.SelectedIndex then
        begin
          dbgItens.DataSource.DataSet.Append;
          dbgItens.SelectedIndex := 0;
        end
      else
        begin
          dbgItens.SelectedIndex := dbgItens.SelectedIndex + 1;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.Columns[ DBGrid1.SelectedIndex ].ReadOnly then
    begin
      if DBGrid1.SelectedIndex = ( DBGrid1.Columns.Count - 1 ) then
        begin
          DBGrid1.DataSource.DataSet.Append;
          DBGrid1.SelectedIndex := 0;
        end
      else
        begin
          DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.DBGrid1ColExit(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex = 0 then
    begin
      if CdsItensServicoPRO_CODIGO.AsString = '' then
        begin
          PageControl1.ActivePageIndex := 2;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if cdsCad.State in [ dsEdit, DsInsert ] then
    begin
      cdsCad.Post;
    end;
end;

procedure TFrmCad_NotaFiscalServico.DBGrid1Exit(Sender: TObject);
begin
  inherited;
//CalculaTotal;
end;

procedure TFrmCad_NotaFiscalServico.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if ( ssShift in Shift ) and ( key = 46 ) then
    begin
      CdsItensServico.Delete;
    end;

  if ( Key = VK_F2 ) and ( not TDBGrid( Sender ).ReadOnly ) then
    begin
      with TFrmCad_Servico.Create( self ) do
        begin
          ModoPesquisa := true;
          ModoPesq;
          if not ( self.CdsItensServico.State in [ dsiNSERT, DSedit ] ) then self.CdsItensServico.Append;
          self.CdsItensServicoPRO_CODIGO.AsString := cdsPesqSER_CODIGO.AsString;
          Free;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if ( key = #13 ) and ( not DBGrid1.ReadOnly ) then
    begin
      if ( DBGrid1.Columns.Count - 1 ) = DBGrid1.SelectedIndex then
        begin
          DBGrid1.DataSource.DataSet.Append;
          DBGrid1.SelectedIndex := 0;
        end
      else
        begin
          DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1;
        end;
    end;
end;

procedure TFrmCad_NotaFiscalServico.Deletaritens1Click(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Deseja realmente deletar esse item da NFe?', 
  'ATENÇÃO!', MB_YESNO + MB_ICONQUESTION) = IDYES then
begin
  cdsItens.Delete;
  cdsItens.Close;
  cdsItens.Open;
end;

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFAbrirComprovanteNaoFiscalVinculado(
  var operacaoECFOk: Boolean; valorCupom: string);
var
  codFormaPgto: string;
  formaPgto: string;
  acbrFormaPgto: TACBrECFFormaPagamento;
  i: Integer;
  procedure executarAchaFPGDescricao;
  begin
    try
      acbrFormaPgto := Frm_Principal.ACBrECF1.AchaFPGDescricao(formaPgto);
    except
      on E: Exception do
        if i = NUM_TENTATIVAS then begin
          ShowMessage(E.Message);
          operacaoECFOk := False;
        end;
    end;//try..except
  end;//procedure
begin
  // EasyTEF Team - 11/08/2010
  // A forma de pagamento TEF deve estar cadastrada na impressora fiscal
	formaPgto := FORMA_PGTO_TEF;
  if valorCupom = '0,00' then
    valorCupom := FormatFloat('#,##0.00', valorTotalCartao);

  acbrFormaPgto := nil;
  // executa o comando AchaFPGDescricao. Caso haja erros, executa novamente,
  // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
  for i := 1 to NUM_TENTATIVAS do begin
    executarAchaFPGDescricao;
    if acbrFormaPgto <> nil then
      Break
    else
      Sleep(TIME_OUT_RETENTAR_ACBR);
  end;//for
  if acbrFormaPgto = nil then
    MessageDlg(Format('Forma de pagamento ''%s'' nao encontrada.',
    	[formaPgto]), mtError, [mbOK], 0)
  else begin
    operacaoECFOk := True;
    codFormaPgto := acbrFormaPgto.Indice;
    // executa o comando AbreCupomVinculado. Caso haja erros, executa novamente,
    // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
    for i := 1 to NUM_TENTATIVAS do begin
      try
        Frm_Principal.ACBrECF1.AbreCupomVinculado(
          Frm_Principal.ACBrECF1.NumCupom, codFormaPgto,
          StrToFloat(valorCupom));
        operacaoECFOk := True;
        Break;
      except
        on E: Exception do begin
          if i = NUM_TENTATIVAS then begin
            ShowMessage(E.Message);
            operacaoECFOk := False;
          end else
            Sleep(TIME_OUT_RETENTAR_ACBR);
          operacaoECFOk := False;
        end;//on E:
      end;//try..except
    end;//for
  end;//else

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFAbrirRelatorioGerencial(
  Sender: TObject);
begin
  inherited;
  try
    frm_principal.acbrecf1.AbreRelatorioGerencial;
  except
    // exceção abafada propositalmente
  end;//try..except

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFAntesEnviarRequisicao(
  requisicao: TStringList);
begin
  inherited;
  // EasyTEF Team - 11/08/2010
  // este evento serve para verificar os comandos que o EasyTEFVespague irá
  // enviar para o V&Spague Client
;
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFColetarDadosAplicacao(
  Sender: TObject; tipoColeta: array of TColetaDados; valoresColeta: OleVariant;
  var retornoTipoColeta, retornoValoresColeta: OleVariant);
begin
  inherited;
  // por enquanto, vamos trabalhar com o V&Spague em modo foreground,
  // depois programaremos o sistema com a interface totalmente contralada
  // pelo sistema
;
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFEfetuarFormaPagamento(
  var operacaoECFOk: Boolean; params: array of string; var retorno: string);
var
  codFormaPgto: string;
  formaPgto: string;
  valorFormaPgto: Double;
  acbrFormaPgto: TACBrECFFormaPagamento;
  i: Integer;
  procedure executarAchaFPGDescricao;
  begin
    try
      acbrFormaPgto := frm_principal.acbrecf1.AchaFPGDescricao(formaPgto);
    except
      on E: Exception do
        if i = NUM_TENTATIVAS then
          ShowMessage(E.Message);
    end;//try..except
  end;//procedure
begin

	if frm_principal.acbrecf1.ECF.Estado <> estPagamento then begin
    // executa o comando SubtotalizaCupom. Caso haja erros, executa novamente,
    // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
    for i := 1 to NUM_TENTATIVAS do begin
      try
        frm_principal.acbrecf1.SubtotalizaCupom;
        operacaoECFOk := True;
        Break;
      except
        on E: Exception do begin
          if i = NUM_TENTATIVAS then begin
            ShowMessage(E.Message);
            operacaoECFOk := False;
          end else
            Sleep(TIME_OUT_RETENTAR_ACBR);
          operacaoECFOk := False;
        end;//on E:
      end;//try..except
    end;//for
  end;//if

  formaPgto := params[0];
  valorFormaPgto := StrToFloat(RemoveChrInvalidos(params[1]));
  acbrFormaPgto := nil;

  // executa o comando AchaFPGDescricao. Caso haja erro, tenta executar
  // até NUM_TENTATIVAS vezes
  for i := 1 to NUM_TENTATIVAS do begin
    executarAchaFPGDescricao;
    if acbrFormaPgto <> nil then begin
      operacaoECFOk := True;
      Break;
    end else
      Sleep(TIME_OUT_RETENTAR_ACBR);
  end;//for

  if acbrFormaPgto = nil then
    MessageDlg(Format('Forma de pagamento ''%s'' nao encontrada.',
      [formaPgto]), mtError, [mbOK], 0)
  else begin
    operacaoECFOk := True;
    codFormaPgto := acbrFormaPgto.Indice;
    // executa o comando EfetuaPagamento. Caso haja erro, tenta executar
    // até NUM_TENTATIVAS vezes
    for i := 1 to NUM_TENTATIVAS do begin
      try
        frm_principal.acbrecf1.EfetuaPagamento(codFormaPgto, valorFormaPgto, '',
          acbrFormaPgto.PermiteVinculado);
        operacaoECFOk := True;
        Break;
      except
        on E: Exception do begin
          if i = NUM_TENTATIVAS then begin
            ShowMessage(E.Message);
            operacaoECFOk := False;
          end else
            Sleep(TIME_OUT_RETENTAR_ACBR);
        end;//on E:
      end;//try..except
    end;//for
  end;//else

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFEncerrarCupomFiscal(
  Sender: TObject);
var
  i: Integer;
begin
  if not frm_principal.acbrecf1.Ativo then
    frm_principal.acbrecf1.Ativar;
  
  try
    frm_principal.acbrecf1.FechaRelatorio;
  except
    //copiado do exemplo acbr ECFTeste
  end;//try..except
  // executa o comando CancelaCupom. Caso haja erros, executa novamente,
  // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
  for i := 1 to NUM_TENTATIVAS do begin
    try
      frm_principal.acbrecf1.CancelaCupom;
      Break;
    except
      on E: Exception do begin
        if i = NUM_TENTATIVAS then
          ShowMessage(E.Message)
        else
          Sleep(TIME_OUT_RETENTAR_ACBR);
      end;//on E:
    end;//try..except
  end;//for

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFFecharComprovanteNaoFiscalVinculado(
  Sender: TObject);
begin
  inherited;
  try
    frm_principal.acbrecf1.FechaRelatorio;
  except
    //possível exceção abafada
  end;//try..except

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFFecharRelatorioGerencial(
  var operacaoECFOk: Boolean);
begin
  inherited;
  if not Frm_Principal.ACBrECF1.Ativo then
    Frm_Principal.ACBrECF1.Ativar;
  try
    Frm_Principal.ACBrECF1.FechaRelatorio;
    operacaoECFOk := True;
  except
    // copiado do exemplo ACBr ECFTeste
    operacaoECFOk := False;
  end;//try..except

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFGerarSequencial(
  var sequencial: Integer);
begin
  inherited;
  with qryAux, SQL do begin
    Clear;
    Add('SELECT GEN_ID(GEN_TEF_VESPAGUE, 1) FROM rdb$database');
    Open;
    sequencial := Fields[0].AsInteger;
    Close;
  end;
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFGravarSequencialCorreto(
  sequencial: Integer);
begin
  inherited;
  with qryAux, SQL do begin
    Clear;
    Add('SET GENERATOR GEN_TEF_VESPAGUE TO ' + IntToStr(sequencial - 1));
    ExecSQL;
  end;
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFImpressoraTemPapel(
  var operacaoECFOk: Boolean);
begin
  inherited;
  operacaoECFOk := True;
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFImprimirLeituraX(
  var operacaoECFOk: Boolean);
begin
  inherited;
  operacaoECFOk := True;
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFImprimirRelatorioGerencial(
  imagemCupomTef: TStrings; var impressaoOk: Boolean);
var
  i: Integer;
begin
  impressaoOk := True;
  for i := 0 to imagemCupomTEF.Count - 1 do
    try
      frm_principal.acbrecf1.LinhaRelatorioGerencial(imagemCupomTef[i]);
    except
      impressaoOk := False;
    end;//try..except

end;

procedure TFrmCad_NotaFiscalServico.EasyTEFIniciarFechamentoCupomFiscal(
  var operacaoECFOk: Boolean; params: array of string; var retorno: string);
var
  i: Integer;
begin
  if frm_principal.acbrecf1.ECF.Estado = estVenda then begin
    // executa o comando SubtotalizaCupom. Caso haja erros, executa novamente,
    // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
    for i := 1 to NUM_TENTATIVAS do begin
      try
        frm_principal.acbrecf1.SubtotalizaCupom(StrToFloat(params[0]));
        operacaoECFOk := True;
        Break;
      except
        on E: Exception do begin
          if i = NUM_TENTATIVAS then begin
//            ShowMessage(E.Message);
//            operacaoECFOk := False;
          end else
            Sleep(TIME_OUT_RETENTAR_ACBR);
        end;//on E:
      end;//try..except
    end;//for
    operacaoECFOk := True;
  end;//if 
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFSubTotalizarCupom(
  var operacaoECFOk: Boolean; params: array of string; var retorno: string);
var
  i: Integer;
  procedure executarSubTotal;
  begin
    try
      retorno := FloatToStr(frm_principal.acbrecf1.Subtotal);
      operacaoECFOk := True;
    except
      on E: Exception do
        if i = NUM_TENTATIVAS then begin
          ShowMessage(E.Message);
          operacaoECFOk := False;
        end;//if
    end;//try..except
  end;//procedure
begin
  retorno := '';
  // executa o comando Subtotal. Caso haja erros, executa novamente,
  // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
  for i := 1 to NUM_TENTATIVAS do begin
    executarSubTotal;
    if retorno <> '' then
      Break
    else
      Sleep(TIME_OUT_RETENTAR_ACBR);
  end;//for
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFTerminarCancelamentoMultiplosCartoes(
  Sender: TObject);
begin
  inherited;
  // EasyTEF Team - 11/08/2010
  // Aqui é necessário colocar o código que limpa a tela, colocando-a em
  // estado inicial pré-venda / emissão de cupom fiscal
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFTerminarFechamentoCupom(
  var operacaoECFOk: Boolean; params: array of string; var retorno: string);
var
  i: Integer;
begin
  // executa o comando FechaCupom. Caso haja erros, executa novamente,
  // até NUM_TENTATIVAS vezes, até não ocorrer mais o erro.
  for i := 1 to NUM_TENTATIVAS do begin
    try
      frm_principal.acbrecf1.FechaCupom(params[0]);
      operacaoECFOk := True;
      Break;
    except
      on E: Exception do begin
        if i = NUM_TENTATIVAS then begin
          ShowMessage(E.Message);
          operacaoECFOk := False;
        end else
          Sleep(TIME_OUT_RETENTAR_ACBR);
      end;//on E:
    end;//try..except
  end;//for
end;

procedure TFrmCad_NotaFiscalServico.EasyTEFUsarComprovanteNaoFiscalVinculado(
  imagemCupomTef: TStrings; var impressaoOk: Boolean);
var
  i: Integer;
begin
  impressaoOk := True;
  for i := 0 to imagemCupomTef.Count - 1 do
    try
      frm_principal.acbrecf1.LinhaCupomVinculado(imagemCupomTef[i]);
    except
      impressaoOk := False;
    end;//try..except
end;

procedure TFrmCad_NotaFiscalServico.FormCreate(Sender: TObject);
begin
  inherited;

  FILTARFILIAL:=0;
  STATUS := ''' OR ''''=''';
  cdsCOF.Close;
  cdsCOF.Open;

CdsLookTributacoes.Close;
CdsLookTributacoes.Open;

end;

procedure TFrmCad_NotaFiscalServico.FormShow(Sender: TObject);
begin
  inherited;
  Panel2.Top:= 206;
  Panel2.Left := 10;

  cdsCad.close;
  cdsCad.Open;

  DMLOOKUP.cdsCOF.close;
  DMLOOKUP.cdsCOF.open;

      cdsLookCli.Close;
      cdsLookCli.Params[ 0 ].Value := 0;
      cdsLookCli.Open;

  try
  IF DmHidra.cdsParamsUSAR_ECF.AsString = 'Sim' then
  begin
  Frm_Principal.ecfativo;
  end;
  except
  end;

 // btnVisible := True;
  try
  LerConfiguracao;
  except
  //Application.MessageBox('Erro no carregamento dos parametros da ',
  //  'ERRO!!', MB_OK + MB_ICONSTOP);
  end;

  // EasyTEF Team - 11/08/2010
  // Colocar parametrização no sistema para caso usar TEF dedicado, FEITO
  // então fazer a atribuição:
  // EasyTEFVespague1.autoVerificarTEF := True;

  EasyTEF.host := 'localhost';
  if DmHidra.cdsParamsTEF_EASYFEFIP.AsInteger = 1 then
    EasyTEF.autoVerificarTEF := True;

end;

procedure TFrmCad_NotaFiscalServico.edtValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  if key <> #13 then
    exit;
  QryPesq.Close;
  QryPesq.SQL.Clear;
  QryPesq.SQL.Text := 'SELECT N.*, C.* FROM NOTA N';
  QryPesq.SQL.Add( 'LEFT OUTER JOIN CLIENTES C ON N.CLI_CODIGO=C.CLI_CODIGO' );
  QryPesq.SQL.Add( 'WHERE (N.NOT_STATUS=''' + STATUS + ''')' );
  QryPesq.SQL.Add( 'AND N.FIL_CODIGO='+ IntToStr(DmHidra.Filial) );

  case cmbPor.ItemIndex of
    0: QryPesq.SQL.Add( ' AND UPPER(N.NOT_CODIGO ) LIKE ''' + AnsiUpperCase( edtValue.Text ) + '%''' );
    1: QryPesq.SQL.Add( ' AND N.NOT_NR =' + edtValue.Text );
    2: QryPesq.SQL.Add( ' AND N.PED_CODIGO =''' + edtValue.Text + '''' );
    3: QryPesq.SQL.Add( ' AND N.CLI_CODIGO =''' + edtValue.Text + '''' );
    4: QryPesq.SQL.Add( ' AND UPPER(C.CLI_RAZAO ) LIKE ''' + AnsiUpperCase( edtValue.Text ) + '%''' );
    5: QryPesq.SQL.Add( ' AND UPPER(N.OS_CODIGO ) LIKE ''' + AnsiUpperCase( edtValue.Text ) + '%''' );

    else ;
  end;

  case RadioGroup1.ItemIndex of  
   1: QryPesq.SQL.Add( 'AND N.NOT_TIPO=''NFE'''  );
   2: QryPesq.SQL.Add( 'AND N.NOT_TIPO=''ECF'''  );
  end;

   if not ( cmbPor.ItemIndex = 0 ) or ( edtValue.Text = '' ) then
   begin
      if ComboBox3.ItemIndex <> 0  then
        begin
          if ComboBox3.ItemIndex = 1  then begin
          QryPesq.SQL.Add( 'AND N.DATA BETWEEN :D1 AND :D2 ' );
          end;
        //  if ComboBox3.ItemIndex = 2  then  begin
        //  QryPesq.SQL.Add('AND N.OS_DATAEFETIVACAO BETWEEN :D1 AND :D2');
        //  end;
          QryPesq.Params.Clear;
          QryPesq.Params.CreateParam( ftDate, 'D1', ptInput );
          QryPesq.Params.CreateParam( ftDate, 'D2', ptInput );
          QryPesq.Params[ 0 ].AsDate := StrToDate( edtini.Text );
          QryPesq.Params[ 1 ].AsDate := StrToDate( edtfim.Text );
        end;
    end;    


  QryPesq.SQL.Add( 'ORDER BY N.NOT_NR' );
 // QryPesq.SQL.SaveToFile('SQL.TXT');

  cdsPesq.Close;
  cdsPesq.Open;

  if not cdsPesq.IsEmpty then
    begin
      gridPesq.SetFocus;
    end;
end;

procedure TFrmCad_NotaFiscalServico.gridPesqKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not ( KEY = #13 ) then
    EXIT;

        cdsCad.Close;
        cdsCad.Params.ParamByName('NOT_CODIGO').Value := cdsPesqNOT_CODIGO.AsInteger;
        cdsCad.Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
        cdsCad.Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
        cdsCad.Params.ParamByName('FIL_CODIGO').value  := DmHidra.Filial;
        cdsCad.Open;

  MontaTela( 'browse' );
  Key := #0;


end;

procedure TFrmCad_NotaFiscalServico.QryCadBeforeOpen(DataSet: TDataSet);
begin
 // inherited;

end;

procedure TFrmCad_NotaFiscalServico.QryCOFBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with TSQLQuery(Dataset) do
  begin
  //Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
     Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
  //   Params.ParamByName('TRIBUTACOES_CODIGO').Value  := cdsItensTRIBUTACOES_CODIGO.AsInteger;
  end;
end;

procedure TFrmCad_NotaFiscalServico.QRYITBeforeOpen(DataSet: TDataSet);
begin
  inherited;
    with TSQLQuery(Dataset) do
  begin
     Params.ParamByName('FIL_CODIGO').Value  := DmHidra.FILIAL;
     Params.ParamByName('OS_CODIGO').Value   := cdsCadOS_CODIGO.AsInteger;
     //Params.ParamByName('FIL_CODIGO').AsInteger  := DmHidra.Filial;
  end;

end;

procedure TFrmCad_NotaFiscalServico.QryItensBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with TSQLQuery(Dataset) do
  begin
     Params.ParamByName('NOT_CODIGO').Value   := cdsCadNOT_CODIGO.Value;
     Params.ParamByName('FIL_CODIGO').Value  := DmHidra.Filial;
  end;
end;

procedure TFrmCad_NotaFiscalServico.QryItensServicoBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  with TSQLQuery(Dataset) do
  begin
     Params.ParamByName('NOT_CODIGO').Value   := cdsCadNOT_CODIGO.Value;
     Params.ParamByName('FIL_CODIGO').Value  := DmHidra.Filial;
  end;

end;

procedure TFrmCad_NotaFiscalServico.QryLookCliBeforeOpen(DataSet: TDataSet);
begin
  inherited;
 with TSQLQuery(Dataset) do
  begin
    // Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
     Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
    // Params.ParamByName('FIL_CODIGO').Value  := DmHidra.Filial;
  end;
end;

procedure TFrmCad_NotaFiscalServico.QryLookTributacoesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  with TSQLQuery(Dataset) do
  begin
  Params.ParamByName('CODIGO').Value  := cdsItensTRIBUTACOES_CODIGO.AsInteger;
  //Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
     Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
  //Params.ParamByName('FIL_CODIGO').Value  := DmHidra.Filial;
  end;
end;

procedure TFrmCad_NotaFiscalServico.QryParamsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  QryParams.Params[ 0 ].AsInteger := DmHidra.Filial;
end;

procedure TFrmCad_NotaFiscalServico.RadioButton1Click(Sender: TObject);
begin
  inherited;
STATUS := 'EM ANDAMENTO';
end;

procedure TFrmCad_NotaFiscalServico.RadioButton2Click(Sender: TObject);
begin
  inherited;
STATUS := 'CANCELADA';
end;

procedure TFrmCad_NotaFiscalServico.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  with TFrmCad_Clientes.create( self ) do begin

      FormStyle := fsMDIChild;
      Visible := True;
    end;
end;

procedure TFrmCad_NotaFiscalServico.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  with TFrmCad_Clientes.create( self ) do begin

      cdsCad.Close;
      cdsCad.Params[ 0 ].AsInteger := Self.cdsCadCLI_CODIGO.AsInteger;
      cdsCad.Open;

      FormStyle := fsMDIChild;
      Visible := True;
    end;
end;

procedure TFrmCad_NotaFiscalServico.SpeedButton27Click(Sender: TObject);
begin
  inherited;
calculaimpostos;
end;

procedure TFrmCad_NotaFiscalServico.SpeedButton3Click(Sender: TObject);
begin
  inherited;
cdsParams.Post;
end;

procedure TFrmCad_NotaFiscalServico.SpeedButton4Click(Sender: TObject);
begin
  inherited;
     LockWindowUpdate( Handle );
  with TFrmCad_CFOP.Create( self ) do
    begin
      FormStyle := fsMDIChild;
      Visible := True;
    end;
      LockWindowUpdate(0);
   end;

procedure TFrmCad_NotaFiscalServico.SpeedButton5Click(Sender: TObject);
begin
  inherited;
calculaimpostos;
end;

procedure TFrmCad_NotaFiscalServico.SpeedButton6Click(Sender: TObject);
begin
  inherited;
     LockWindowUpdate( Handle );
  with TFrmCad_CFOP.Create( self ) do
    begin
      FormStyle := fsMDIChild;
      Visible := True;
    end;
      LockWindowUpdate(0);
end;

procedure TFrmCad_NotaFiscalServico.SQLQuery1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with TSQLQuery(Dataset) do
  begin
     Params.ParamByName('FIL_CODIGO').AsInteger   := DmHidra.FILIAL;
     Params.ParamByName('PED_CODIGO').AsInteger  := cdsCadPED_CODIGO.AsInteger;
     //Params.ParamByName('FIL_CODIGO').AsInteger  := DmHidra.Filial;
  end;
end;

procedure TFrmCad_NotaFiscalServico.SQLQuery3BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with TSQLQuery(Dataset) do
  begin
  //Params.ParamByName('EMP_GRUPO').Value   := DmHidra.Grupo;
     Params.ParamByName('EMP_CODIGO').Value  := DmHidra.Empresa;
  //Params.ParamByName('TRIBUTACOES_CODIGO').Value  := cdsItensTRIBUTACOES_CODIGO.AsInteger;
  end;
end;

procedure TFrmCad_NotaFiscalServico.LerConfiguracao;
Var IniFile  : String ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
     DMLOOKUP.cdsLookConfNfe.Close;
     DMLOOKUP.cdsLookConfNfe.Open;
  try
      {$IFDEF ACBrNFeOpenSSL}

         dmhidra.ACBrNFe1.Configuracoes.Certificados.Certificado  := DMLOOKUP.cdsLookConfNfeNFE_CERTIFICADOCAMINHO.AsString;
         dmhidra.ACBrNFe1.Configuracoes.Certificados.Senha        := DMLOOKUP.cdsLookConfNfeNFE_CERTIFICADOSENHA.AsString;
         
      {$ELSE}

         dmhidra.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DMLOOKUP.cdsLookConfNfeNFE_CERTIFICADONUMEROSERIE.AsString;

      {$ENDIF}


      dmhidra.ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(DMLOOKUP.cdsLookConfNfeNFE_GERALFORMADEEMISSAO.AsInteger));//StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));
    // ja estou salvando no proprio cadastro de nfe
    // dmhidra.ACBrNFe1.Configuracoes.Geral.Salvar        := DMLOOKUP.cdsLookConfNfeNFE_GERALSALVARARQENVRESP.AsInteger;//
    //  dmhidra.ACBrNFe1.Configuracoes.Geral.PathSalvar   := DMLOOKUP.cdsLookConfNfeNFE_GERALSALVARARQENVRESP.AsInteger;//


      dmhidra.ACBrNFe1.Configuracoes.WebServices.UF         := DMLOOKUP.cdsLookConfNfeNFE_WEBSERVICEUFDESTINO.AsString;//cbUF.Text;
      dmhidra.ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(DMLOOKUP.cdsLookConfNfeNFE_WEBSERVICEAMBIENTE.AsInteger));//StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
      dmhidra.ACBrNFe1.Configuracoes.WebServices.Visualizar := DMLOOKUP.cdsLookConfNfeNFE_WEBSERVICEVISUALIZARMSG.AsBoolean;//ckVisualizar.Checked;

      dmhidra.ACBrNFe1.Configuracoes.WebServices.ProxyHost := DMLOOKUP.cdsLookConfNfeNFE_PROXYHOST.AsString;//edtProxyHost.Text;
      dmhidra.ACBrNFe1.Configuracoes.WebServices.ProxyPort := DMLOOKUP.cdsLookConfNfeNFE_PROXYPORTA.AsString;//edtProxyPorta.Text;
      dmhidra.ACBrNFe1.Configuracoes.WebServices.ProxyUser := DMLOOKUP.cdsLookConfNfeNFE_PROXYUSUARIO.AsString;//edtProxyUser.Text;
      dmhidra.ACBrNFe1.Configuracoes.WebServices.ProxyPass := DMLOOKUP.cdsLookConfNfeNFE_PROXYSENHA.AsString;//edtProxySenha.Text;

     // if dmhidra.ACBrNFe1.DANFE <> nil then
     //  begin
         dmhidra.ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(DMLOOKUP.cdsLookConfNfeNFE_GERALDANFERETRATO.AsInteger));//StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         dmhidra.ACBrNFe1.DANFE.Logo       := DMLOOKUP.cdsLookConfNfeNFE_GERALCAMINHOLOGOMARCA.AsString;//edtLogoMarca.Text;
     //  end;  

  finally

  end;

end;


procedure TFrmCad_NotaFiscalServico.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

procedure TFrmCad_NotaFiscalServico.StatusServio1Click(Sender: TObject);
begin
  inherited;
 dmhidra.ACBrNFe1.WebServices.StatusServico.Executar;
 MemoResp.Lines.Text := UTF8Encode(dmhidra.ACBrNFe1.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(dmhidra.ACBrNFe1.WebServices.StatusServico.RetornoWS);
 LoadXML(MemoResp, WBResposta);
 PageControl2.ActivePageIndex := 1;
 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(dmhidra.ACBrNFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +dmhidra.ACBrNFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(dmhidra.ACBrNFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +dmhidra.ACBrNFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(dmhidra.ACBrNFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(dmhidra.ACBrNFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(dmhidra.ACBrNFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(dmhidra.ACBrNFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +dmhidra.ACBrNFe1.WebServices.StatusServico.xObs);
end;

procedure TFrmCad_NotaFiscalServico.VALIDAANTESDAIMPORTACAO;
begin

  if cdsCadNOT_TIPO.AsString = '' then
  begin
  Application.MessageBox('Escolha o tipo de documento correto para dar continuidade!',
    'ATENÇÃO!', MB_OK + MB_ICONSTOP);
  DBComboBox1.SetFocus;
  dbePedido.Clear;
  dbeOS.Clear;
  Abort;
  end;

  if cdsCadNOT_TIPO.AsString = 'NFE' then
  begin
  if cdsCadCFOP_COF.AsString = '' then
  begin
  Application.MessageBox('Escolha o tipo de CFOP correto para dar continuidade!',
  'ATENÇÃO!', MB_OK + MB_ICONSTOP);
   DBLookupComboBox1.SetFocus;
     dbePedido.Clear;
  dbeOS.Clear;
  Abort;
  end;     
  if cdsCadNOT_SERIE.AsString = '' then
  begin
  Application.MessageBox('Escolha o tipo de SERIE correto para dar continuidade!',
  'ATENÇÃO!', MB_OK + MB_ICONSTOP);
   DBEdit5.SetFocus;
     dbePedido.Clear;
  dbeOS.Clear;
  Abort;
  end;

end;
end;

procedure TFrmCad_NotaFiscalServico._btnOkClick(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Deseja realmente salvar esse item da NFe?',
  'ATENÇÃO!', MB_YESNO + MB_ICONQUESTION) = IDYES then
begin

cdsItens.Post;
Panel2.Visible := False;
end;
end;

procedure TFrmCad_NotaFiscalServico.Abrircadastrodeprodutos1Click(
  Sender: TObject);
begin
  inherited;
   LockWindowUpdate( Handle );
  with TFrmCad_Produtos.Create( self ) do
    begin               
      cdscad.Close;
      cdscad.Params.ParamByName('CODIGO').AsString := cdsItensPRO_CODIGO.AsString;
      cdscad.Params.ParamByName('EMP_GRUPO').VALUE := cdsItensEMP_GRUPO.AsInteger;
      cdscad.Params.ParamByName('EMP_CODIGO').VALUE := cdsItensEMP_CODIGO.AsInteger;
      cdscad.Open;      
      FormStyle := fsMDIChild;
      Visible := True;
    end;
     LockWindowUpdate( 0 );
end;

procedure TFrmCad_NotaFiscalServico.AbrirGerenciadordeNFe2Click(
  Sender: TObject);
begin
  inherited;
WinExec('C:\DotCompany\Sistemas.exe',SW_SHOW);
end;

procedure TFrmCad_NotaFiscalServico.atribuirPropriedade(propriedade: TStrings;
  valor: string; limparPropriedade: Boolean);
begin
  if limparPropriedade then
    propriedade.Clear;
  propriedade.Add(valor);
end;

procedure TFrmCad_NotaFiscalServico.avisodeimpressaoTimer(Sender: TObject);
var visiveltipo:Boolean;
begin
  inherited;

 IF JvgLabel1.Visible =TRUE then
 JvgLabel1.Visible := False else
 JvgLabel1.Visible := TRUE;
  Application.ProcessMessages;


end;

procedure TFrmCad_NotaFiscalServico.btnExcluirClick(Sender: TObject);
begin

if cdsCadNOT_EFCSTATUS.AsInteger = 1  then
begin
  Application.MessageBox('Esse cadastro não pode ser Deletado. ' + #13#10 +
  'Porque o cupom Fiscal foi emitido com sucesso!', 'ATENÇÃO!', MB_OK +
   MB_ICONSTOP);
  Abort;
end;

 if cdsCadNOT_TIPO.AsString = 'NFE' then
 BEGIN
  //  9  Iniciou e não vez nenhuma validação
  //  5  Validou.
  //  6  Cancelado.
        QRYNFEESTATUS.Close;
        QRYNFEESTATUS.Open;
        if (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 5) or (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 6) then
        BEGIN
        Application.MessageBox('Esse cadastro não pode ser Deletado. ' + #13#10 +
        'Porque a NF-e foi emitido!', 'ATENÇÃO!', MB_OK +
        MB_ICONSTOP);
        Abort;
end;
END;
  inherited;

end;

procedure TFrmCad_NotaFiscalServico.calculaimpostos;
begin
 cdsItensNI_ICMS_VALOR    .AsFloat       := (NI_ICMS_VALOR_BASE_CALCULO.Value      * NI_ICMS_ALIQUOTA.Value       / 100);
 cdsItensNI_ICMSSUBS_VALOR.AsFloat       := (NI_ICMSSUBS_VALOR_BASE_CALCULO.Value  * NI_ICMSSUBS_ALIQUOTA.Value   / 100);
 cdsItensNI_IPI_VALOR     .AsFloat       := (NI_IPI_VALOR_BASE_CALCULO.Value       * NI_IPI_ALIQUOTA.Value        / 100);

 if cdsItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0 then
 cdsItensNI_PIS_VALOR     .AsFloat       := (NI_PIS_VALOR_BASE_CALCULO.Value       * NI_PIS_ALIQUOTA.Value        / 100)
 else
 cdsItensNI_PIS_VALOR     .AsFloat       := (cdsItensNI_QTD.AsFloat                * NI_PIS_ALIQUOTA.Value             );

 if cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0 then
 cdsItensNI_COFINS_VALOR  .AsFloat       := (NI_COFINS_VALOR_BASE_CALCULO.Value    * NI_COFINS_ALIQUOTA.Value     / 100)
 else
 cdsItensNI_COFINS_VALOR  .AsFloat       := (cdsItensNI_QTD.AsFloat                * NI_COFINS_ALIQUOTA.Value     / 100)

end;

procedure TFrmCad_NotaFiscalServico.calculaimpostostritutacao;
begin
 // estou fazendo ainda... depois finalizar.. MarcoS Ribeiro.
 NI_ICMS_ALIQUOTA.Value :=   CdsLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA.AsFloat;
 NI_ICMS_ALIQUOTA.Value :=   CdsLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA.AsFloat;





 cdsItensNI_ICMS_VALOR    .AsFloat       := (NI_ICMS_VALOR_BASE_CALCULO.Value      * NI_ICMS_ALIQUOTA.Value       / 100);
 cdsItensNI_ICMSSUBS_VALOR.AsFloat       := (NI_ICMSSUBS_VALOR_BASE_CALCULO.Value  * NI_ICMSSUBS_ALIQUOTA.Value   / 100);
 cdsItensNI_IPI_VALOR     .AsFloat       := (NI_IPI_VALOR_BASE_CALCULO.Value       * NI_IPI_ALIQUOTA.Value        / 100);

 if cdsItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0 then
 cdsItensNI_PIS_VALOR     .AsFloat       := (NI_PIS_VALOR_BASE_CALCULO.Value       * NI_PIS_ALIQUOTA.Value        / 100)
 else
 cdsItensNI_PIS_VALOR     .AsFloat       := (cdsItensNI_QTD.AsFloat                * NI_PIS_ALIQUOTA.Value             );

 if cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0 then
 cdsItensNI_COFINS_VALOR  .AsFloat       := (NI_COFINS_VALOR_BASE_CALCULO.Value    * NI_COFINS_ALIQUOTA.Value     / 100)
 else
 cdsItensNI_COFINS_VALOR  .AsFloat       := (cdsItensNI_QTD.AsFloat                * NI_COFINS_ALIQUOTA.Value     / 100)

end;

procedure TFrmCad_NotaFiscalServico.edtValueChange(Sender: TObject);
begin
  inherited;
{if not (edtValue.Text = '') then   begin

        QryPesq.Close;
        QryPesq.SQL.Text := 'SELECT * FROM TABELA WHERE 0=0 ';


        case  cmbPor.ItemIndex of
X              0: QryPesq.SQL.Add( ' AND CODIGO =' + edtValue.Text );
X              1: QryPesq.SQL.Add( ' AND UPPER(CLI_RAZAO) LIKE ''' + AnsiUpperCase( edtValue.Text ) + '%''');
        else ;

        end;

        //OK 0 Código
       // OK 1 NOME


        cdsPesq.Close;
        cdsPesq.Open;

        IF NOT cdsPesq.IsEmpty THEN
        BEGIN
                gridPesq.SetFocus;
        END;
end;  }
end;

procedure TFrmCad_NotaFiscalServico.cdsCadAfterInsert(DataSet: TDataSet);
begin
  inherited;

  try
  cdscadNOT_FINALILDADEEMISSAO.AsString  := 'NFe Normal';
  cdscadNOT_FORMADEEMISSAO.AsString      := 'Normal'    ;
  cdscadNOT_TIPOIMPRESSAODANFE.AsString  := 'Retrato'   ;
  except
  end;
  cdsCadNOT_CALCULARAUTOMATICO.AsInteger;
  cdscadNOT_SERIE.AsString := '1';
  cdsCadFIL_CODIGO.AsInteger := DmHidra.cdsFiliaisFIL_CODIGO.AsInteger;
  cdsCadNOT_DATAEMISSAO.AsDateTime  := Date;
  cdsCadNOT_DATASAIDA.AsDateTime   := Date;
  CdscadNOT_HORASAIDA.AsDateTime   := Time;
  cdsCadNOT_OBSERVACAO.AsString := DmHidra.cdsParamsNOT_OBSERVACAO.AsString;
  cdsCadNOT_STATUS.AsString := 'EM ANDAMENTO';
  CDSCADNOT_CALCULARAUTOMATICO.AsInteger := 1;
  DBLookupComboBox1.SetFocus;
 // Label68.Visible := False;


end;

procedure TFrmCad_NotaFiscalServico.cdsCadAfterOpen(DataSet: TDataSet);
begin
  inherited;
 cdsItens.Close;
  cdsitens.Open;

  CdsItensServico.Close;
  CdsItensServico.Open;

  DMLOOKUP.cdsCOF.Close;
  DMLOOKUP.cdscof.Open;

  cdsParams.Close;
  cdsParams.open;



  if cdsCadNOT_TIPO.AsString = 'NFE' then BEGIN
  QRYNFEESTATUS.Close;
  QRYNFEESTATUS.Open;

         if (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 5) or (QRYNFEESTATUSNOT_STATUS_NFE.AsInteger = 6) then
        BEGIN
  Application.MessageBox('Esse cadastro não pode ser Deletado. ' + #13#10 +
  'Porque a NF-e foi emitido!', 'ATENÇÃO!', MB_OK +
   MB_ICONSTOP);
  //CdsItensServico.Cancel;
  //cdsItens.Cancel;
  //cdsCad.Cancel;
  CdsItensServico.ReadOnly  := True;
  cdsItens.ReadOnly         := True;
  cdsCad.ReadOnly           := True;  
  Abort;
  END;
  END;


try
  IF NOT cdsCad.IsEmpty THEN
   BEGIN
          if (dbePedido.Text <> '') and (dbePedido.Text <> '0')then
          begin
          QryTit.Close;
          QryTit.SQL.Clear;
          QryTit.SQL.Text := 'SELECT * FROM TITULOS WHERE FIL_CODIGO ='+IntToStr(DmHidra.Filial) ;
          QryTit.SQL.Add('AND PED_CODIGO ='+cdsCadPED_CODIGO.AsString);
          QryTit.SQL.Add('ORDER BY TIT_VENCIMENTO');
          //qrytit.SQL.SaveToFile('c:\x.txt');
          cdsTit.close;
          cdsTit.Open;
          cdsTit.First;

          qrytitgrupo.Close;
          qrytitgrupo.SQL.Clear;
          qrytitgrupo.SQL.Text := 'SELECT CAST(count(titulos.TIT_TIPO) AS  DOUBLE PRECISION) QTDTIPO,' ;
          qrytitgrupo.SQL.Add(' CAST (Sum(titulos.TIT_VALOR) AS DOUBLE PRECISION) TITULOVALOR, titulos.TIT_TIPO');
          qrytitgrupo.SQL.Add('FROM titulos');
          qrytitgrupo.SQL.Add(' WHERE titulos.fil_codigo ='+IntToStr(DmHidra.Filial));
          qrytitgrupo.SQL.Add(' and titulos.PED_CODIGO ='+cdsCadPED_CODIGO.AsString);
          qrytitgrupo.SQL.Add(' group by TITULOS.TIT_TIPO');
         // qrytitgrupo.SQL.SaveToFile('c:\dotcompany\x.txt');
          Cdstitgrupo.close;
          Cdstitgrupo.Open;
          Cdstitgrupo.First;
          end;

          if (dbeOS.Text <> '') and (dbeOS.Text <> '0') then begin

          QryTit.Close;
          QryTit.SQL.Clear;
          QryTit.SQL.Text := 'SELECT * FROM TITULOS WHERE FIL_CODIGO ='+IntToStr(DmHidra.Filial) ;
          QryTit.SQL.Add('AND OS_CODIGO ='+cdsCadOS_CODIGO.AsString);
          QryTit.SQL.Add('ORDER BY TIT_VENCIMENTO');
   //       qrytit.SQL.SaveToFile('c:\x.txt');
          cdsTit.close;
          cdsTit.Open;
          cdsTit.First;

          qrytitgrupo.Close;
          qrytitgrupo.SQL.Clear;
          qrytitgrupo.SQL.Text := 'SELECT CAST(count(titulos.TIT_TIPO) AS  DOUBLE PRECISION) QTDTIPO,' ;
          qrytitgrupo.SQL.Add(' CAST (Sum(titulos.TIT_VALOR) AS DOUBLE PRECISION) TITULOVALOR, titulos.TIT_TIPO');
          qrytitgrupo.SQL.Add('FROM titulos');
          qrytitgrupo.SQL.Add(' WHERE titulos.fil_codigo ='+IntToStr(DmHidra.Filial) );
          qrytitgrupo.SQL.Add(' and titulos.OS_CODIGO ='+cdsCadOS_CODIGO.AsString);
          qrytitgrupo.SQL.Add(' group by TITULOS.TIT_TIPO');
          Cdstitgrupo.close;
          Cdstitgrupo.Open;
          Cdstitgrupo.First; 
          end;

end;
except
END;

codigomaster := cdsCadNOT_CODIGO.asinteger;

end;

procedure TFrmCad_NotaFiscalServico.validacampos;
begin
if cdsLookCliCLI_END_COD_IBGEMUNIC.AsString = '' then
begin
Application.MessageBox('O Cadastro do cliente está faltando o Cód. IBGE Municipio'
  + #13#10 + 'Entre no cadastro do cliente e complete o cadastro!',
  'ATENÇÃO!', MB_OK + MB_ICONSTOP);
  Abort;
end;

if cdsLookCliCLI_END_COD_IBGEUF.AsString = '' then
begin
Application.MessageBox('O Cadastro do cliente está faltando o Cód. IBGE UF'
  + #13#10 + 'Entre no cadastro do cliente e complete o cadastro!',
  'ATENÇÃO!', MB_OK + MB_ICONSTOP);
  Abort;
end;



end;


procedure TFrmCad_NotaFiscalServico.ModeloNFe;
var
NFe: TNFe;
NFeW: TNFeW;
i, j, k,qtditem: integer;
s: string;
ReferenciadaTipoNFe: boolean;
Opcao1: boolean;
begin

// IMPORTANTE: Os laços For - Next codificados nesses modelo são meramente descritivos.
// Esse arquivo é apenas um modelo e deve ser adaptado conforme as suas necessidades.

Opcao1 := True; // Esta variavel esta sendo usada nesse modelo para indicar os locais onde
// devem ser tomadas decissões por parte do programador conforme a regras
// de negocio de cada cliente.

NFe := TNFe.create;

s := NFe.infNFe.ID; // ATENÇÃO: Esse campo representa a chave da NFe
// Não utilize esse campo para escrita (apenas para leitura)
// pois a chave é gerada automaticamente no momento da geração do arquivo

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo das informações de identificação da NF-e - <ide> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

NFe.Ide.cUF := UFparaCodigo(DmHidra.cdsFiliaisFIL_END_CID_UF.AsString); // B02 - Código da UF do emitente do Documento Fiscal - Tabela do IBGE
// Você pode utilizar a função UFparaCodigo caso não sáiba o código da UF
// ex: NFe.Ide.cUF := UFparaCodigo(MinhaUF);
NFe.Ide.cNF := -1;//-1; // B03 - Código Numérico que compõe a Chave de Acesso //mudar isso depois
// Se nenhum valor for informado será atribuido um valor aleatório
// Se for informado o valor -1; será gerado um valor baseado no numero da NFe
NFe.Ide.natOp := DMLOOKUP.cdsCOFCFOP_DESCRICAO.AsString; // B04 - Descrição da Natureza da Operação
//

if cdscadNOT_FORMAPGMTNFE.AsString = 'Pagamento à vista.' then
NFe.Ide.indPag := ipVista; // B05 - Indicador da forma de pagamento (*)
if cdscadNOT_FORMAPGMTNFE.asstring = 'Pagamento à Prazo.' then
NFe.Ide.indPag := ipPrazo; // B05 - Indicador da forma de pagamento (*)
if cdscadNOT_FORMAPGMTNFE.asstring = 'Outros' then
NFe.Ide.indPag := ipOutras; // B05 - Indicador da forma de pagamento (*)
// (0)=ipVista
// (1)=ipPrazo
// (2)=ipOutras
NFe.Ide.modelo := 55; // B06 - Código do Modelo do Documento Fiscal Utilizar o código 55 para identificação da NF-e, emitida em substituição ao modelo 1 ou 1A.
NFe.Ide.serie := cdscadNOT_SERIE.asinteger; // B07 - Série do Documento Fiscal, informar 0 (zero) para série única.
NFe.Ide.nNF := cdscadNOT_NR.asinteger; // B08 - Número do Documento Fiscal
NFe.Ide.dEmi := Date; // B09 - Data de emissão do Documento Fiscal
NFe.Ide.dSaiEnt := cdscadNOT_DATASAIDA.AsDateTime; // B10 - Data de Saída ou da Entrada da Mercadoria/Produto
if cdscadNOT_ENTRADASAIDA.AsInteger = 1 then
NFe.Ide.tpNF := tnSaida; // B11 - Tipo do Documento Fiscal (*)
if cdsCadNOT_ENTRADASAIDA.AsInteger = 0 then
NFe.Ide.tpNF := tnEntrada; // B11 - Tipo do Documento Fiscal (*)
// (0)=tnEntrada
// (1)=tnSaida
NFe.Ide.cMunFG := 0; // B12 - Código do Município de Ocorrência do Fato Gerador do ICMS ( Tab. IBGE )

if cdsCadNOT_TIPOIMPRESSAODANFE.AsString = 'Retrato' then
NFe.Ide.tpImp := tiRetrato // B11 - Tipo do Documento Fiscal (*)
else
NFe.Ide.tpImp := tiPaisagem; // B21 - Formato de Impressão do DANFE (*)
// (1)=tiRetrato
// (2)=tiPaisagem
NFe.Ide.tpEmis := teNormal; // B22 - Forma de Emissão da NF-e (*)
// (1)=teNormal
// (2)=teContingencia
// (3)=teSCAN
// (4)=teDPEC
// (5)=teFSDA
// Ex: i := NFe.Ide.cDv; // B23 - Dígito Verificador da Chave de Acesso da NF-e
// Não utilize esse campo para escrita (apenas para leitura)
// pois o digito é gerado automaticamente no momento da geração do arquivo



if DMLOOKUP.cdsLookConfNfeNFE_WEBSERVICEAMBIENTE.AsString = 'Produção' then
NFe.Ide.tpAmb := taProducao // B24 - Identificação do Ambiente (*)
else
NFe.Ide.tpAmb := taHomologacao;
// (1)=Produção
// (2)=Homologação


if cdsCadNOT_FINALILDADEEMISSAO.AsString = 'NFe Normal' then
NFe.Ide.finNFe := fnNormal; // B25 - Finalidade de emissão da NF-e (*)
if cdsCadNOT_FINALILDADEEMISSAO.AsString = 'NFe Complementar' then
NFe.Ide.finNFe := fnComplementar; // B25 - Finalidade de emissão da NF-e (*)
if cdsCadNOT_FINALILDADEEMISSAO.AsString = 'NFe De Ajuste' then
NFe.Ide.finNFe := fnAjuste; // B25 - Finalidade de emissão da NF-e (*)
// (1)=fnNormal
// (2)=fnComplementar
// (3)=fnAjuste

NFe.Ide.procEmi :=          // B26 - Processo de emissão da NF-e (*)
peAplicativoContribuinte;   // (0)=peAplicativoContribuinte - emissão de NF-e com aplicativo do contribuinte;
                            // (1)=peAvulsaFisco - emissão de NF-e avulsa pelo Fisco;
                            // (2)=peAvulsaContribuinte - emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site do Fisco;
// (3)=peContribuinteAplicativoFisco - emissão NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.
NFe.Ide.verProc := VersaoExe; // B27 - Versão do Processo de emissão da NF-e

// NFe Referenciada... fazer configuracao
{ReferenciadaTipoNFe := True; // TAG - Informação das NF/NF-e referenciadas - <NFref> - Ocorrência 0-N ********
if ReferenciadaTipoNFe then
begin // Se a nota referenciada for um NFe preencher o campo abaixo:
NFe.Ide.NFref.Add;
NFe.Ide.NFref[0].refNFe := ''; // B13 - Chave de acesso das NF-e referenciadas
end;
if not ReferenciadaTipoNFe then
begin // Se a nota referenciada não for uma NFe preencher o campos abaixo:
NFe.Ide.NFref.Add;
NFe.Ide.NFref[1].RefNF.cUF := 0; // B15 - Código da UF do emitente do Documento Fiscal - Tabela do IBGE
NFe.Ide.NFref[1].RefNF.AAMM := ''; // B16 - Ano e Mês de emissão da NF-e
NFe.Ide.NFref[1].RefNF.CNPJ := ''; // B17 - CNPJ do emitente
NFe.Ide.NFref[1].RefNF.modelo := 0; // B18 - Modelo do Documento Fiscal - Ex. 01
NFe.Ide.NFref[1].RefNF.serie := 0; // B19 - Série do Documento Fiscal - informar zero se inexistente
NFe.Ide.NFref[1].RefNF.nNF := 0; // B20 - Número do Documento Fiscal
end;   }

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de identificação do emitente da NF-e - <emit> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

NFe.Emit.CNPJCPF := DmHidra.cdsFiliaisFIL_CNPJ.AsString; // C02 - CNPJ do emitente / CPF do remetente
NFe.Emit.xNome := DmHidra.cdsFiliaisFIL_NOME.AsString; // C03 - Razão Social ou Nome do emitente
NFe.Emit.xFant := DmHidra.cdsFiliaisFIL_NOMEFANTASIA.AsString; // C04 - Nome fantasia
NFe.Emit.IE := DmHidra.cdsFiliaisFIL_INSCEST.AsString; // C17 - Inscrição Estadual do emitente
NFe.Emit.IEST := ''; // C18 - Inscrição Estadual do Substituto Tributário da UF de destino da mercadoria, quando houver a retenção do ICMS ST para a UF de destino.
NFe.Emit.IM := ''; // C19 - Inscrição Municipal (NF-e conjugada, com prestação de serviços sujeitos ao ISSQN e fornecimento de peças sujeitos ao ICMS.)
NFe.Emit.CNAE := ''; // C20 - CNAE fiscal Este campo deve ser informado quando o campo NFe.Emit.IM for informado.
// TAG de grupo do Endereço do emitente - <enderEmit> - Ocorrência 1-1 ********
NFe.Emit.enderEmit.xLgr := DmHidra.cdsFiliaisFIL_END_ENDERECO.AsString; // C06 - Logradouro
NFe.Emit.enderEmit.nro := DmHidra.cdsFiliaisFIL_END_NUMERO.AsString; // C07 - Número
NFe.Emit.enderEmit.xCpl := DmHidra.cdsFiliaisFIL_END_COMPLEMENTO.AsString; // C08 - Complemento
NFe.Emit.enderEmit.xBairro := DmHidra.cdsFiliaisFIL_END_BAIRRO.AsString; // C09 - Bairro
NFe.Emit.enderEmit.cMun := DmHidra.cdsFiliaisFIL_END_COD_IBGEMUNIC.AsInteger; // C10 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
NFe.Emit.enderEmit.xMun := ''; // C11 - Nome do município ('EXTERIOR' para operações com o exterior)
NFe.Emit.enderEmit.UF := DmHidra.cdsFiliaisFIL_END_CID_UF.AsString; // C12 - Sigla da UF ('EX' para operações com o exterior.)
NFe.Emit.enderEmit.CEP := StrToInt(RemoveChrInvalidos(DmHidra.cdsFiliaisFIL_END_CEP.AsString)); // C13 - Código do CEP
NFe.Emit.enderEmit.cPais := 1058; // C14 - Código do País (Tabela do BACEN )
NFe.Emit.enderEmit.xPais := 'BRASIL'; // C15 - Nome do País
NFe.Emit.enderEmit.fone := (DmHidra.cdsFiliaisFIL_FONE.AsString);//C16 - Telefone ( Código DDD + número do telefone. )

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Identificação do Fisco Emitente da NF-e - <avulsa> - Ocorrência 0-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// D01 - Grupo para uso exclusivo do fisco
NFe.Avulsa.CNPJ := '';
NFe.Avulsa.xOrgao := '';
NFe.Avulsa.matr := '';
NFe.Avulsa.xAgente := '';
NFe.Avulsa.fone := '';
NFe.Avulsa.UF := '';
NFe.Avulsa.nDAR := '';
//NFe.Avulsa.dEmi := '';
NFe.Avulsa.vDAR := 0;
NFe.Avulsa.repEmi := '';
//NFe.Avulsa.dPag := null;

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de identificação do Destinatário da NF-e - <dest> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

NFe.Dest.CNPJCPF := cdsLookCliCLI_CPFCNPJ.AsString ;     // E02 - CNPJ do destinatário / CPF do destinatário
NFe.Dest.xNome := cdsLookCliCLI_RAZAO.AsString ;       // E04 - Razão Social ou nome do destinatário
NFe.Dest.IE := cdsLookCliCLI_RGINSC.AsString ;          // E17 - Inscrição Estadual do destinatário
NFe.Dest.ISUF := cdsLookCliCLI_END_CID_UF.AsString ;        // E18 - Inscrição na SUFRAMA
// TAG de grupo de endereço do Destinatário da NF-e - <enderDest> - Ocorrência 1-1 *
NFe.Dest.enderDest.xLgr := cdsLookCliCLI_END_ENDERECO.AsString ; // E06 - Logradouro
NFe.Dest.enderDest.nro  := cdsLookCliCLI_END_NUMERO.AsString ; // E07 - Número
NFe.Dest.enderDest.xCpl := cdsLookCliCLI_END_COMPLEMENTO.AsString ; // E08 - Complemento
NFe.Dest.enderDest.xBairro := cdsLookCliCLI_END_BAIRRO.AsString ; // E09 - Bairro
NFe.Dest.enderDest.cMun := StrToInt(RemoveChrInvalidos(cdsLookCliCLI_END_COD_IBGEMUNIC.AsString)) ; // E10 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
NFe.Dest.enderDest.xMun := ''; // E11 - Nome do município ('EXTERIOR' para operações com o exterior)
NFe.Dest.enderDest.UF := cdsLookCliCLI_END_CID_UF.AsString ; // E12 - Sigla da UF ('EX' para operações com o exterior.)
NFe.Dest.enderDest.CEP := StrToInt(RemoveChrInvalidos(cdsLookCliCLI_END_CEP.AsString)) ; // E13 - Código do CEP
NFe.Dest.enderDest.cPais := 1058; // E14 - Código do País (Tabela do BACEN )
NFe.Dest.enderDest.xPais := 'BRASIL'; // E15 - Nome do País
NFe.Dest.enderDest.fone := cdsLookCliCLI_FONE.AsString ; // E16 - Telefone ( Código DDD + número do telefone. )


(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de identificação do Local de retirada - <retirada> - Ocorrência 0-N *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// Informar os valores desse grupo somente se o endereço de
// retirada for diferente do endereço do remetente.
// Assim se retirada.xLgr <> '' o gerador grava o grupo no XML

NFe.Retirada.CNPJCPF := ''; // F02 - CNPJ
NFe.Retirada.xLgr := ''; // F03 - Logradouro
NFe.Retirada.nro := ''; // F04 - Número
NFe.Retirada.xCpl := ''; // F05 - Complemento
NFe.Retirada.xBairro := ''; // F06 - Bairro
NFe.Retirada.cMun := 0; // F07 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
NFe.Retirada.xMun := ''; // F08 - Nome do município ('EXTERIOR' para operações com o exterior)
NFe.Retirada.UF := ''; // F09 - Sigla da UF ('EX' para operações com o exterior.)

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de identificação do Local de entrega - <entrega> - Ocorrência 0-N *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// Informar os valores desse grupo somente se o
// endereço de entrega for diferente do endereço do destinatario.
// Assim se entrega.xLgr <> '' o gerador grava o grupo no XML

NFe.Entrega.CNPJCPF := ''; // G02 - CNPJ
NFe.Entrega.xLgr := ''; // G03 - Logradouro
NFe.Entrega.nro := ''; // G04 - Número
NFe.Entrega.xCpl := ''; // G05 - Complemento
NFe.Entrega.xBairro := ''; // G06 - Bairro
NFe.Entrega.cMun := 0; // G07 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
NFe.Entrega.xMun := ''; // G08 - Nome do município ('EXTERIOR' para operações com o exterior)
NFe.Entrega.UF := ''; // G09 - Sigla da UF ('EX' para operações com o exterior.)

//***************************************************************************************************
(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo do detalhamento de Produtos e Serviços da NF-e - <det> - Ocorrência 1-990 *)
(* ----------------------------------------------------------------------------------------------------------------- *)
 qtditem := 0; // quantidade de item adicionado na nfe.
 cdsItens.First;
  while not cdsItens.Eof do
  begin

NFe.Det.Add;
NFe.Det[qtditem].Prod.nItem := qtditem + i; // H02 - Número do item DE 1 a 990
NFe.Det[qtditem].Prod.cProd := cdsItensPRO_CODIGO.AsString; // I02 - Código do produto ou serviço
NFe.Det[qtditem].Prod.cEAN := cdsItensNI_EAN.AsString; // I03 - GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barra
NFe.Det[i].Prod.xProd := cdsItensPRO_NOME.AsString;  // I04 - Descrição do produto ou serviço
NFe.Det[qtditem].Prod.NCM := cdsItensPRO_CODIGO_NCM.AsString;  // I05 - Código NCM (Em caso de serviço, não incluir a TAG.)
NFe.Det[qtditem].Prod.EXTIPI := ''; // I06 - Código EX da TIPI (Em caso de serviço, não incluir a TAG.)
//NFe.Det[qtditem].Prod.genero := 0; // I07 - Gênero do Produto ou Serviço (Tabela de Capítulos da NCM)(Em caso de serviço, não incluir a TAG.)
NFe.Det[qtditem].Prod.CFOP := cdsItensNI_CFOP.AsString;  // I08 - Código Fiscal de Operações e Prestações

NFe.Det[qtditem].Prod.uCom := cdsItensNI_UNID.AsString;  // I09 - Unidade Comercial
NFe.Det[qtditem].Prod.qCom := cdsItensNI_QTD.AsCurrency;  // I10 - Quantidade Comercial
NFe.Det[qtditem].Prod.vUnCom := cdsItensNI_SUBTOT.AsCurrency; ; // I10a Valor Unitário de comercialização
NFe.Det[qtditem].Prod.vProd := cdsItensNI_VALOR_TOTAL.AsCurrency;  // I11 - Valor Total Bruto dos Produtos ou Serviços
NFe.Det[qtditem].Prod.uTrib := cdsItensNI_UNID.AsString;   // I13 - Unidade Tributável
NFe.Det[qtditem].Prod.qTrib := cdsItensNI_QTD.AsCurrency;  // I14 - Quantidade Tributável
NFe.Det[qtditem].Prod.vUnTrib := cdsItensNI_VALOR_TOTAL.AsCurrency; // I14a Valor Unitário de tributação

NFe.Det[qtditem].infAdProd := cdsItensNI_INFORMACAOADICIONAL.AsString; // - Informações Adicionais do Produto
(* EXEMPLO *) // NFe.Det[qtditem].Prod.uCom := 'CX';
// NFe.Det[qtditem].Prod.qCom := 2; Vendidas 2 caixas ( com 10 unidades cada )
// NFe.Det[qtditem].Prod.vUnCom := 50; R$ 50,00 cada caixa
// NFe.Det[qtditem].Prod.vProd := 100; R$ 100,00 Valor dos produtos
// NFe.Det[qtditem].Prod.uTrib := 'UN';
// NFe.Det[qtditem].Prod.qTrib := 20; 2 caixas X 10 unidades por caixa = 20 unidades
// NFe.Det[qtditem].Prod.vUnTrib := 5; R$ 100,00 / 20 unidades = R$ 5,00 cada unidade

NFe.Det[qtditem].Prod.cEANTrib := ''; // I12 - GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras ??
NFe.Det[qtditem].Prod.vFrete := cdsItensNI_VALOR_FRETE.AsCurrency; // I15 - Valor Total do Frete
NFe.Det[qtditem].Prod.vSeg := cdsItensNI_VALORSEGURO.AsCurrency; // I16 - Valor Total do Seguro
NFe.Det[qtditem].Prod.vDesc := cdsItensNI_VALOR_DESCONTO.AsCurrency; // I17 - Valor do Desconto
//***************************************************************************************************
// Tag da Declaração de Importação - <DI> - Ocorrência 0-N

//for j := 0 to 1 do
//begin
//NFe.Det[qtditem].Prod.DI.Add;
//NFe.Det[qtditem].Prod.DI[j].nDi := ''; // I19 - Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
//NFe.Det[qtditem].Prod.DI[j].dDi := null; // I20 - Data de Registro da DI/DSI/DA
//NFe.Det[qtditem].Prod.DI[j].xLocDesemb := ''; // I21 - Local de desembaraço
//NFe.Det[qtditem].Prod.DI[j].UFDesemb := ''; // I22 - Sigla da UF onde ocorreu o Desembaraço Aduaneiro
//NFe.Det[qtditem].Prod.DI[j].dDesemb := null; // I23 - Data do Desembaraço Aduaneiro
//NFe.Det[qtditem].Prod.DI[j].cExportador := ''; // I24 - Código do exportador
//for k := 0 to 1 do
//begin
//NFe.Det[qtditem].Prod.DI[j].adi.Add; // Tag de Adições - <adi> - Ocorrência 1-N
//NFe.Det[qtditem].Prod.DI[j].adi[k].nAdicao := 0; // I26 - Numero da adição
//NFe.Det[qtditem].Prod.DI[j].adi[k].nSeqAdi := 0; // I27 - Numero seqüencial do item dentro da adição
//NFe.Det[qtditem].Prod.DI[j].adi[k].cFabricante := ''; // I28 - Código do fabricante estrangeiro
//NFe.Det[qtditem].Prod.DI[j].adi[k].vDescDI := 0; // I29 - Valor do desconto do item da DI  adição
//end;
//end;
//***************************************************************************************************
// TAG de grupo do detalhamento de Veículos novos - <veicProd> - Ocorrência 0-1

// Este grupo será criado no XML somente se o campo <chassi> for informado.
//NFe.Det[qtditem].prod.veicProd.tpOP := toVendaDireta; // J02 - Tipo da operação
// (1)=toVendaConcessionaria
// (2)=toFaturamentoDireto
// (3)=toVendaDireta
// (0)=toOutros
//NFe.Det[qtditem].prod.veicProd.chassi := ''; // J03 - Chassi do veículo
//NFe.Det[qtditem].prod.veicProd.cCor := ''; // J04 - Cor
//NFe.Det[qtditem].prod.veicProd.xCor := ''; // J05 - Descrição da Cor
//NFe.Det[qtditem].prod.veicProd.pot := ''; // J06 - Potência Motor
//NFe.Det[qtditem].prod.veicProd.CM3 := ''; // J07 - CM3 (Potência)
//NFe.Det[qtditem].prod.veicProd.pesoL := ''; // J08 - Peso Líquido
//NFe.Det[qtditem].prod.veicProd.pesoB := ''; // J09 - Peso Bruto
//NFe.Det[qtditem].prod.veicProd.nSerie := ''; // J10 - Serial (série)
//NFe.Det[qtditem].prod.veicProd.tpComb := ''; // J11 - Tipo de combustível
//NFe.Det[qtditem].prod.veicProd.nMotor := ''; // J12 - Número de Motor
//NFe.Det[qtditem].prod.veicProd.CMKG := ''; // J13 - CMKG
//NFe.Det[qtditem].prod.veicProd.dist := ''; // J14 - Distância entre eixos
//NFe.Det[qtditem].prod.veicProd.RENAVAM := ''; // J15 - RENAVAM (Não informar a TAG na exportação)
//NFe.Det[qtditem].prod.veicProd.anoMod := 0; // J16 - Ano Modelo de Fabricação
//NFe.Det[qtditem].prod.veicProd.anoFab := 0; // J17 - Ano de Fabricação
//NFe.Det[qtditem].prod.veicProd.tpPint := ''; // J18 - Tipo de Pintura
//NFe.Det[qtditem].prod.veicProd.tpVeic := 0; // J19 - Tipo de Veículo (Utilizar Tabela RENAVAM)
//NFe.Det[qtditem].prod.veicProd.espVeic := 0; // J20 - Espécie de Veículo (Utilizar Tabela RENAVAM)
//NFe.Det[qtditem].prod.veicProd.VIN := ''; // J21 - Condição do VIN
//NFe.Det[qtditem].prod.veicProd.condVeic := cvAcabado; // J22 - Condição do Veículo (1-Acabado; 2-Inacabado; 3-Semi-acabado)
//NFe.Det[qtditem].prod.veicProd.cMod := 0; // J23 - Código Marca Modelo (Utilizar Tabela RENAVAM)
//***************************************************************************************************
// TAG de grupo do detalhamento de Medicamentos - <med> - Ocorrência 0-N
//for j := 0 to 1 do
//begin
//NFe.Det[qtditem].prod.med.add;
//NFe.Det[qtditem].prod.med[j].nLote := ''; // K02 - Número do Lote do medicamento
//NFe.Det[qtditem].prod.med[j].qLote := 0; // K03 - Quantidade de produto no Lote do medicamento
//NFe.Det[qtditem].prod.med[j].dFab := null; // K04 - Data de fabricação
//NFe.Det[qtditem].prod.med[j].dVal := null; // K05 - Data de validade
//NFe.Det[qtditem].prod.med[j].vPMC := 0; // K06 - Preço máximo consumidor
//end;
//***************************************************************************************************
// TAG de grupo do detalhamento de Armamento - <arma> - Ocorrência 0-N
//for j := 0 to 1 do
//begin
//NFe.Det[qtditem].prod.arma.add;
//NFe.Det[qtditem].prod.arma[j].tpArma := taUsoPermitido; // L02 - Indicador do tipo de arma de fogo
// (0)=taUsoPermitido
// (1)=taUsoRestrito
//NFe.Det[qtditem].prod.arma[j].nSerie := 0; // L03 - Número de série da arma
//NFe.Det[qtditem].prod.arma[j].nCano := 0; // L04 - Número de série do cano
//NFe.Det[qtditem].prod.arma[j].descr := ''; // L05 - Descrição completa da arma, compreendendo: calibre, marca, capacidade, etc)
//end;
//***************************************************************************************************
// TAG de grupo de informações específicas para combustíveis

// líquidos - <comb> - Ocorrência 0-1
// Se for informado algum dos valores abaixo:
// a TAG grava o grupo no XML ********************************************
//NFe.Det[qtditem].prod.comb.cProdANP := 0; // L102 - Código de produto da ANP - codificação de produtos do SIMP
//NFe.Det[qtditem].prod.comb.CODIF := ''; // L103 - Código de autorização / registro do CODIF
//NFe.Det[qtditem].prod.comb.qTemp := 0; // L104 - Quantidade de combustível faturada à temperatura ambiente.
// TAG de grupo da CIDE - <CIDE> - Ocorrência 0-1
//NFe.Det[qtditem].prod.comb.CIDE.qBCprod := 0; // L106 - BC da CIDE em quantidad
//NFe.Det[qtditem].prod.comb.CIDE.vAliqProd := 0; // L107 - Valor da alíquota da CIDE
//NFe.Det[qtditem].prod.comb.CIDE.vCIDE := 0; // L108 - Valor da CIDE
// TAG de grupo do ICMS - <ICMS> - Ocorrência 1-1
//NFe.Det[qtditem].prod.comb.ICMS.vBCICMS := 0; // L110 - BC do ICMS
//NFe.Det[qtditem].prod.comb.ICMS.vICMS := 0; // L111 - Valor do ICMS
//NFe.Det[qtditem].prod.comb.ICMS.vBCICMSST := 0; // L112 - BC do ICMS ST retido
//NFe.Det[qtditem].prod.comb.ICMS.vICMSST := 0; // L113 - Valor do ICMS ST retido
// TAG de grupo do ICMSST de operação interestadual - <ICMSInter> - Ocorrência 0-1
//NFe.Det[qtditem].prod.comb.ICMSInter.vBCICMSSTDest := 0; // L115 - BC do ICMS ST da UF de destino
//NFe.Det[qtditem].prod.comb.ICMSInter.vICMSSTDest := 0; // L116 - Valor do ICMS ST da UF de destino
// TAG de ICMS para consumo em UF diversa da UF de localização do destinatário do produto - <ICMSCons> - Ocorrência 0-1
//NFe.Det[qtditem].prod.comb.ICMSCons.vBCICMSSTCons := 0; // L118 - BC do ICMS ST da UF de consumo
//NFe.Det[qtditem].prod.comb.ICMSCons.vICMSSTCons := 0; // L119 - Valor do ICMS ST da UF de consumo
//NFe.Det[qtditem].prod.comb.ICMSCons.UFcons := ''; // L120 - Sigla da UF de consumo

// TAG de grupo do ICMS da Operação própria e ST - <ICMS> - Ocorrência 1-1

    CdsLookTributacoes.Close;        // TRAZ OS TRIBUTOS REFERENTE AO PRODUTO DO MOMENTO
    CdsLookTributacoes.Open;

if CdsLookTributacoesSTICMSA_CODIGO.AsString = '0' then
NFe.Det[qtditem].Imposto.ICMS.orig := oeNacional; // N11 - Origem da mercadoria
if CdsLookTributacoesSTICMSA_CODIGO.AsString = '1' then
NFe.Det[qtditem].Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta; // N11 - Origem da mercadoria
if CdsLookTributacoesSTICMSA_CODIGO.AsString = '2' then
NFe.Det[qtditem].Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil; // N11 - Origem da mercadoria
// (0)=oeNacional
// (1)=oeEstrangeiraImportacaoDireta


if CdsLookTributacoesSTICMSB_CODIGO.AsString = '00' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst00; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '10' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst10; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '20' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst20; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '30' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst30; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '40' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst40; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '41' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst41; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '50' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst50; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '51' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst51; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '60' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst60; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '70' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst70; // N12 - Tributação do ICMS
if CdsLookTributacoesSTICMSB_CODIGO.AsString = '90' then
NFe.Det[qtditem].Imposto.ICMS.CST := cst90; // N12 - Tributação do ICMS
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
if NFe.Det[qtditem].Imposto.ICMS.CST = cst00 then
begin
NFe.Det[qtditem].Imposto.ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determinação da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst10 then
begin
NFe.Det[qtditem].Imposto.ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determinação da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
NFe.Det[qtditem].Imposto.ICMS.modBCST     := dbisMargemValorAgregado; // N18 - Modalidade de determinação da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pMVAST      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency; // N19 - Percentual da margem de valor Adicionado do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pRedBCST    := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency;  // N21 - Valor da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; ; // N22 - Alíquota do imposto do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; ; // N23 - Valor do ICMS ST
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst20 then
begin
NFe.Det[qtditem].Imposto.ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determinação da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N14 - Percentual da Redução de BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst30 then
begin
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
NFe.Det[qtditem].Imposto.ICMS.pMVAST      :=  CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency;// N19 - Percentual da margem de valor Adicionado do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pRedBCST    :=  CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // N22 - Alíquota do imposto do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst51 then
begin
NFe.Det[qtditem].Imposto.ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determinação da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency;; // N14 - Percentual da Redução de BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_IPI_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst60 then
begin
NFe.Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst70 then
begin
NFe.Det[qtditem].Imposto.ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determinação da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N14 - Percentual da Redução de BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
NFe.Det[qtditem].Imposto.ICMS.modBCST     := dbisMargemValorAgregado; // N18 - Modalidade de determinação da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pMVAST      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency; // N19 - Percentual da margem de valor Adicionado do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pRedBCST    := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // N22 - Alíquota do imposto do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
if NFe.Det[qtditem].Imposto.ICMS.CST = cst90 then
begin
NFe.Det[qtditem].Imposto.ICMS.modBC       := dbiValorOperacao; // N13 - Modalidade de determinação da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pRedBC      := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N14 - Percentual da Redução de BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.vBC         := cdsItensNI_ICMS_VALOR_BASE_CALCULO.AsCurrency; // N15 - Valor da BC do ICMS
NFe.Det[qtditem].Imposto.ICMS.pICMS       := cdsItensNI_ICMS_ALIQUOTA.AsCurrency; // N16 - Alíquota do imposto
NFe.Det[qtditem].Imposto.ICMS.vICMS       := cdsItensNI_ICMS_VALOR.AsCurrency; // N17 - Valor do ICMS
NFe.Det[qtditem].Imposto.ICMS.modBCST     := dbisMargemValorAgregado; // N18 - Modalidade de determinação da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pMVAST      := CdsLookTributacoesTRIBUTACOES_ICMS_MVA.AsCurrency; // N19 - Percentual da margem de valor Adicionado do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pRedBCST    := CdsLookTributacoesTRIBUTACOES_ICMS_REDUCAO.AsCurrency; // N20 - Percentual da Redução de BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vBCST       := cdsItensNI_ICMSSUBS_VALOR_BASE_CALCULO.AsCurrency; // N21 - Valor da BC do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.pICMSST     := cdsItensNI_ICMSSUBS_ALIQUOTA.AsCurrency; // N22 - Alíquota do imposto do ICMS ST
NFe.Det[qtditem].Imposto.ICMS.vICMSST     := cdsItensNI_ICMSSUBS_VALOR.AsCurrency; // N23 - Valor do ICMS ST
end;
// N13 - Modalidade de determinação da BC do ICMS
// (0)=dbiMargemValorAgregado
// (1)=dbiPauta
// (2)=dbiPrecoTabelado
// (3)=dbiValorOperacao


// N18 - Modalidade de determinação da BC do ICMS ST
// (0)=dbisPrecoTabelado  Preço tabelado ou máximo sugerido;
// (1)=dbisListaNegativa - Lista Negativa (valor);
// (2)=dbisListaPositiva - Lista Positiva (valor);
// (3)=dbisListaNeutra - Lista Neutra (valor);
// (4)=dbisMargemValorAgregado - Margem Valor Agregado (%);
// (5)=dbisPauta - Pauta (valor);)
//***************************************************************************************************
// TAG de grupo do IPI - <IPI> - Ocorrência 0-1

{NFe.Det[qtditem].Imposto.IPI.clEnq := ''; // O02 - Classe de enquadramento do IPI para Cigarros e Bebidas
NFe.Det[qtditem].Imposto.IPI.CNPJProd := ''; // O03 - CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
NFe.Det[qtditem].Imposto.IPI.cSelo := ''; // O04 - Código do selo de controle IPI
NFe.Det[qtditem].Imposto.IPI.qSelo := 0; // O05 - Quantidade de selo de controle
NFe.Det[qtditem].Imposto.IPI.cEnq := ''; // O06 - Código de Enquadramento Legal do IPI (Tabela a ser criada pela RFB, informar 999 enquanto a tabela não for criada)
NFe.Det[qtditem].Imposto.IPI.CST := ipi00; // O09 - Código da situação tributária do IPI   }

// (00)=ipi00 - Entrada com recuperação de crédito
// (49)=ipi49 - Outras entradas
// (50)=ipi50 - Saída tributada
// (99)=ipi99 - Outras saídas
// (01)=ipi01 - Entrada tributada com alíquota zero
// (02)=ipi02 - Entrada isenta
// (03)=ipi03 - Entrada não-tributada
// (04)=ipi04 - Entrada imune
// (05)=ipi05 - Entrada com suspensão
// (51)=ipi51 - Saída tributada com alíquota zero
// (52)=ipi52 - Saída isenta
// (53)=ipi53 - Saída não-tributada
// (54)=ipi54 - Saída imune
// (55)=ipi55 - Saída com suspensão

if (CdsLookTributacoesSTIPI_CODIGO.AsString = '00') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi00;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '49') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi49;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '50') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi50;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '99') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi99;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '01') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi01;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '02') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi02;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '03') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi03;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '04') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi04;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '05') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi05;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '51') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi51;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '52') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi52;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '53') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi53;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '54') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi54;
if (CdsLookTributacoesSTIPI_CODIGO.AsString = '55') then
NFe.Det[qtditem].Imposto.IPI.CST := ipi55;


if (NFe.Det[qtditem].Imposto.IPI.CST = ipi00) or
(NFe.Det[qtditem].Imposto.IPI.CST = ipi49) or
(NFe.Det[qtditem].Imposto.IPI.CST = ipi50) or
(NFe.Det[qtditem].Imposto.IPI.CST = ipi99) then
begin
if Opcao1 then
begin
NFe.Det[qtditem].Imposto.IPI.vBC         := cdsItensNI_IPI_VALOR_BASE_CALCULO.AsCurrency; // O10 - Valor da BC do IPI
NFe.Det[qtditem].Imposto.IPI.pIPI        := cdsItensNI_IPI_ALIQUOTA.AsCurrency; // 013 - Alíquota do IPI
NFe.Det[qtditem].Imposto.IPI.vIPI        := cdsItensNI_IPI_VALOR.AsCurrency; // O14 - Valor do IPI
end;
if not opcao1 then
begin
NFe.Det[qtditem].Imposto.IPI.qUnid := 0; // O11 - Qtde total na unidade padrão para tributação (somente para os produtos tributados por unidade)
NFe.Det[qtditem].Imposto.IPI.vUnid := 0; // O12 - Valor por Unidade Tributável
NFe.Det[qtditem].Imposto.IPI.vIPI := 0; // O14 - Valor do IPI
end;
end;

// TAG de grupo do Imposto de Importação - <II> - Ocorrência 0-1

// Informar apenas quando o item for sujeito ao II
NFe.Det[qtditem].Imposto.II.vBc := 0; // P02 - Valor da BC do Imposto de Importação
NFe.Det[qtditem].Imposto.II.vDespAdu := 0; // P03 - Valor das despesas aduaneiras
NFe.Det[qtditem].Imposto.II.vII := 0; // P04 - Valor do Imposto de Importação
NFe.Det[qtditem].Imposto.II.vIOF := 0; // P05 - Valor do Imposto sobre Operações Financeiras

// TAG de grupo do PIS - <PIS> - Ocorrência 1-1

NFe.Det[qtditem].Imposto.PIS.CST := pis01; // Q06 - Código de Situação Tributária do PIS
// (01)=pis01  Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
// (02)=pis02 - Operação Tributável (base de cálculo = valor da operação (alíquota diferenciada));
// (03)=pis03 - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto )
// (04)=pis04 - Operação Tributável (tributação monofásica (alíquota zero));
// (06)=pis06 - Operação Tributável (alíquota zero);
// (07)=pis07 - Operação Isenta da Contribuição;
// (08)=pis08 - Operação Sem Incidência da Contribuição;
// (09)=pis09 - Operação com Suspensão da Contribuição;
// (99)=pis99 - Outras Operações;

if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '01') then
NFe.Det[qtditem].Imposto.PIS.CST := pis01;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '02') then
NFe.Det[qtditem].Imposto.PIS.CST := pis02;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '03') then
NFe.Det[qtditem].Imposto.PIS.CST := pis03;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '04') then
NFe.Det[qtditem].Imposto.PIS.CST := pis04;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '06') then
NFe.Det[qtditem].Imposto.PIS.CST := pis06;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '07') then
NFe.Det[qtditem].Imposto.PIS.CST := pis07;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '08') then
NFe.Det[qtditem].Imposto.PIS.CST := pis08;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '09') then
NFe.Det[qtditem].Imposto.PIS.CST := pis09;
if (CdsLookTributacoesTRIBUTACOES_PIS_ST.AsString = '99') then
NFe.Det[qtditem].Imposto.PIS.CST := pis99;

if (NFe.Det[qtditem].Imposto.PIS.CST = pis01) or
(NFe.Det[qtditem].Imposto.PIS.CST = pis02) then
begin
NFe.Det[qtditem].Imposto.PIS.vBC          := cdsItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // Q07 - Valor da Base de Cálculo do PIS
NFe.Det[qtditem].Imposto.PIS.pPIS         := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // Q08 - Alíquota do PIS (em percentual)
NFe.Det[qtditem].Imposto.PIS.qBCProd      := cdsItensNI_QTD.AsCurrency; // Q10 - Quantidade Vendida
NFe.Det[qtditem].Imposto.PIS.vAliqProd    := 0; // Q11 - Alíquota do PIS (em reais)
NFe.Det[qtditem].Imposto.PIS.vPIS         := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;

if (NFe.Det[qtditem].Imposto.PIS.CST = pis03) then
begin
NFe.Det[qtditem].Imposto.PIS.qBCProd    := cdsItensNI_QTD.AsCurrency; // Q10 - Quantidade Vendida
NFe.Det[qtditem].Imposto.PIS.vAliqProd  := cdsItensNI_PIS_ALIQUOTA.AsCurrency;; // Q11 - Alíquota do PIS (em reais)
NFe.Det[qtditem].Imposto.PIS.vPIS       := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;
if (NFe.Det[qtditem].Imposto.PIS.CST = pis03) and (cdsItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0)then
begin
NFe.Det[qtditem].Imposto.PIS.vBC        := cdsItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // Q07 - Valor da Base de Cálculo do PIS
NFe.Det[qtditem].Imposto.PIS.pPIS       := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // Q08 - Alíquota do PIS (em percentual)
NFe.Det[qtditem].Imposto.PIS.vPIS       := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;
if (NFe.Det[qtditem].Imposto.PIS.CST = pis03) and (not (cdsItensNI_PIS_ALIQUOTA_TIPO.AsInteger = 0))then
begin
NFe.Det[qtditem].Imposto.PIS.qBCProd    := cdsItensNI_QTD.AsCurrency; // Q10 - Quantidade Vendida
NFe.Det[qtditem].Imposto.PIS.vAliqProd  := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // Q11 - Alíquota do PIS (em reais)
NFe.Det[qtditem].Imposto.PIS.vPIS       := cdsItensNI_PIS_VALOR.AsCurrency; // Q09 - Valor do PIS
end;

// TAG do grupo de PIS Substituição Tributária - <PISST> - Ocorrência 0-1

{if opcao1 then
begin
NFe.Det[qtditem].Imposto.PISST.vBc      := cdsItensNI_PIS_VALOR_BASE_CALCULO.AsCurrency; // R02 - Valor da Base de Cálculo do PIS
NFe.Det[qtditem].Imposto.PISST.pPis     := cdsItensNI_PIS_ALIQUOTA.AsCurrency; // R03 - Alíquota do PIS (em percentual)
NFe.Det[qtditem].Imposto.PISST.vPIS     := cdsItensNI_PIS_VALOR.AsCurrency; // R06 - Valor do PIS
end;
if not opcao1 then
begin
NFe.Det[qtditem].Imposto.PISST.qBCProd := 0; // R04 - Quantidade Vendida
NFe.Det[qtditem].Imposto.PISST.vAliqProd := 0; // R05 - Alíquota do PIS (em reais)
NFe.Det[qtditem].Imposto.PISST.vPIS := 0; // R06 - Valor do PIS
end;}

// TAG de grupo do COFINS - <COFINS> - Ocorrência 1-1

NFe.Det[qtditem].Imposto.COFINS.CST := cof01; // S06 - Código de Situação Tributária do COFINS
// (01)  Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
// (02) - Operação Tributável (base de cálculo = valor da operação
// (03) - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto);
// (04) - Operação Tributável (tributação monofásica (alíquota zero));
// (06) - Operação Tributável (alíquota zero);
// (07) - Operação Isenta da Contribuição;
// (08) - Operação Sem Incidência da Contribuição;
// (09) - Operação com Suspensão da Contribuição;
// (99) - Outras Operações;

if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '01') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof01;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '02') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof02;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '03') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof03;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '04') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof04;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '06') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof06;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '07') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof07;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '08') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof08;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '09') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof09;
if (CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '99') then
NFe.Det[qtditem].Imposto.COFINS.CST := cof99;


if (NFe.Det[qtditem].Imposto.COFINS.CST = cof01) or (NFe.Det[qtditem].Imposto.COFINS.CST = cof02) then
begin
NFe.Det[qtditem].Imposto.COFINS.vBC             := cdsItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // S07 - Valor da Base de Cálculo da COFINS
NFe.Det[qtditem].Imposto.COFINS.pCOFINS         := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S08 - Alíquota da COFINS (em percentual)
NFe.Det[qtditem].Imposto.COFINS.vCOFINS         := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;
if NFe.Det[qtditem].Imposto.COFINS.CST = cof03 then
begin
NFe.Det[qtditem].Imposto.COFINS.vBCProd         := cdsItensNI_COFINS_VALOR.AsCurrency; // S09 - Valor do COFINS
NFe.Det[qtditem].Imposto.COFINS.vAliqProd       := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S10 - Alíquota do COFINS (em reais)
NFe.Det[qtditem].Imposto.COFINS.vCOFINS         := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;
if ( NFe.Det[qtditem].Imposto.COFINS.CST = cof99) and (cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0) then
begin
NFe.Det[qtditem].Imposto.COFINS.vBC             := cdsItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // S07 - Valor da Base de Cálculo da COFINS
NFe.Det[qtditem].Imposto.COFINS.pCOFINS         := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S08 - Alíquota da COFINS (em percentual)
NFe.Det[qtditem].Imposto.COFINS.vCOFINS         := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;
if ( NFe.Det[qtditem].Imposto.COFINS.CST = cof99) and (not (cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0)) then
begin
NFe.Det[qtditem].Imposto.COFINS.qBCProd := cdsItensNI_QTD.AsCurrency; // S09 - Quantidade Vendida
NFe.Det[qtditem].Imposto.COFINS.vAliqProd := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // S10 - Alíquota do COFINS (em reais)
NFe.Det[qtditem].Imposto.COFINS.vCOFINS := cdsItensNI_COFINS_VALOR.AsCurrency; // S11 - Valor do COFINS
end;

// TAG do grupo de COFINS Substituição Tributária - <COFINSST> - Ocorrência 0-1

{if (DMLOOKUP.CdsLookTributacoesTRIBUTACOES_COFINS_ST.AsString = '05') then
begin
if (cdsItensNI_COFINS_ALIQUOTA_TIPO.AsInteger = 0) then
begin
NFe.Det[qtditem].Imposto.COFINSST.vBC         := cdsItensNI_COFINS_VALOR_BASE_CALCULO.AsCurrency; // T02 - Valor da Base de Cálculo da COFINS
NFe.Det[qtditem].Imposto.COFINSST.pCOFINS     := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // T03 - Alíquota da COFINS (em percentual)
NFe.Det[qtditem].Imposto.COFINSST.vCOFINS     := cdsItensNI_COFINS_VALOR.AsCurrency; // T06 - Valor do COFINS
end else begin
NFe.Det[qtditem].Imposto.COFINSST.qBCProd     := cdsItensNI_QTD.AsCurrency; // T04 - Quantidade Vendida
NFe.Det[qtditem].Imposto.COFINSST.vAliqProd   := cdsItensNI_COFINS_ALIQUOTA.AsCurrency; // T05 - Alíquota do COFINS (em reais)
NFe.Det[qtditem].Imposto.COFINSST.vCOFINS     := cdsItensNI_COFINS_VALOR.AsCurrency; // T06 - Valor do COFINS
end;
end;

// TAG do grupo do ISSQN - <ISSQN> - Ocorrência 0-1

NFe.Det[qtditem].Imposto.ISSQN.vBC := 0; // U02 - Valor da Base de Cálculo do ISSQN
NFe.Det[qtditem].Imposto.ISSQN.vAliq := 0; // U03 - Alíquota do ISSQN
NFe.Det[qtditem].Imposto.ISSQN.vISSQN := 0; // U04 - Valor do ISSQN
NFe.Det[qtditem].Imposto.ISSQN.cMunFG := 0; // U05 - Código do município de ocorrência do fato gerador do ISSQN
NFe.Det[qtditem].Imposto.ISSQN.cListServ := 0; // U06 - Código da Lista de Serviços  }


  cdsItens.Next;
  end;

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Valores Totais da NF-e - <total> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// TAG de grupo de Valores Totais referentes ao ICMS - <ICMSTot> - Ocorrência 1-1
NFe.Total.ICMSTot.vBC         := cdscadNOT_BASEICM.AsCurrency; // W03 - Base de Cálculo do ICMS
NFe.Total.ICMSTot.vICMS       := cdsCadNOT_VALICM.AsCurrency; // W04 - Valor Total do ICMS
NFe.Total.ICMSTot.vBCST       := cdsCadNOT_BASESUBS.AsCurrency; // W05 - Base de Cálculo do ICMS ST
NFe.Total.ICMSTot.vST         := cdsCadNOT_VALSUBS.AsCurrency; // W06 - Valor Total do ICMS ST
NFe.Total.ICMSTot.vProd       := cdsCadNOT_TOTITENS.AsCurrency; // W07 - Valor Total dos produtos e serviços
NFe.Total.ICMSTot.vFrete      := cdsCadNOT_VALFRETE.AsCurrency; // W08 - Valor Total do Frete
NFe.Total.ICMSTot.vSeg        := cdsCadNOT_VALSEGURO.AsCurrency; // W09 - Valor Total do Seguro
NFe.Total.ICMSTot.vDesc       := cdsCadNOT_DESCONTO.AsCurrency; // W10 - Valor Total do Desconto
NFe.Total.ICMSTot.vII         := 0; // W11 - Valor Total do II
NFe.Total.ICMSTot.vIPI        := cdsCadNOT_VALIPI.AsCurrency; // W12 - Valor Total do IPI
NFe.Total.ICMSTot.vPIS        := cdsCadNOT_VALPIS.AsCurrency; // W13 - Valor do PIS
NFe.Total.ICMSTot.vCOFINS     := cdsCadNOT_VALCOFINS.AsCurrency; // W14 - Valor do COFINS
NFe.Total.ICMSTot.vOutro      := cdsCadNOT_ACRECIMO.AsCurrency; // W15 - Outras Despesas acessórias
NFe.Total.ICMSTot.vNF         := cdsCadNOT_TOTNOTA.AsCurrency; // W16 - Valor Total da NF-e

// TAG de grupo de Valores Totais referentes ao ISSQN - <ISSQNtot> - Ocorrência 0-1
NFe.Total.ISSQNtot.vServ := 0; // W18 - Valor Total dos Serviços sob nãoincidência ou não tributados pelo ICMS
NFe.Total.ISSQNtot.vBC := 0; // W19 - Base de Cálculo do ISS
NFe.Total.ISSQNtot.vISS := 0; // W20 - Valor Total do ISS
NFe.Total.ISSQNtot.vPIS := 0; // W21 - Valor do PIS sobre serviços
NFe.Total.ISSQNtot.vCOFINS := 0; // W22 - Valor do COFINS sobre serviços


// TAG de grupo de Retenções de Tributos - <retTrib> - Ocorrência 0-1
NFe.Total.retTrib.vRetPIS := 0; // W24 - Valor Retido de PIS
NFe.Total.retTrib.vRetCOFINS := 0; // W25 - Valor Retido de COFINS
NFe.Total.retTrib.vRetCSLL := 0; // W26 - Valor Retido de CSLL
NFe.Total.retTrib.vBCIRRF := 0; // W27 - Base de Cálculo do IRRF
NFe.Total.retTrib.vIRRF := 0; // W28 - Valor Retido do IRRF
NFe.Total.retTrib.vBCRetPrev := 0; // W29 - Base de Cálculo da Retenção da Previdência Social
NFe.Total.retTrib.vRetPrev := 0; // W30 - Valor da Retenção da Previdência Social

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Informações do Transporte da NF-e - <transp> - Ocorrência 1-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)
if cdsCadFRETE.AsInteger = 0 then
NFe.Transp.modFrete := mfContaEmitente; // X02 - Modalidade do frete
if cdsCadFRETE.AsInteger = 0 then
NFe.Transp.modFrete := mfContaDestinatario;
// (0)=mfContaEmitente  por conta do emitente;
// (1)=mfContaDestinatario  por conta do destinatário)
// TAG de grupo Transportador - <transporta> - Ocorrência 0-1
NFe.Transp.Transporta.CNPJCPF     := cdscadNOT_TRANSCNPJCPF.AsString; // X05 - Informar o CNPJ ou o CPF do Transportador, preenchendo os zeros não significativos.
NFe.Transp.Transporta.xNome       := cdsCadNOT_TRANSRAZAO.AsString; // X06 - Razão Social ou nome
NFe.Transp.Transporta.IE          := cdsCadNOT_TRANSINSCRICAO.AsString; // X07 - Inscrição Estadual
NFe.Transp.Transporta.xEnder      := cdsCadNOT_TRANSENDERECO.AsString; // X08 - Endereço Completo
NFe.Transp.Transporta.xMun        := cdsCadNOT_TRANSMUNICIPIO.AsString; // X09 - Nome do município
NFe.Transp.Transporta.UF          := cdsCadNOT_TRANSUF2.AsString; // X10 - Sigla da UF
// TAG de grupo de Retenção do ICMS do transporte - <retTransp> - Ocorrência 0-1
NFe.Transp.retTransp.vServ := 0; // X12 - Valor do Serviço
NFe.Transp.retTransp.vBCRet := 0; // X13 - BC da Retenção do ICMS
NFe.Transp.retTransp.pICMSRet := 0; // X14 - Alíquota da Retenção
NFe.Transp.retTransp.vICMSRet := 0; // X15 - Valor do ICMS Retido
NFe.Transp.retTransp.CFOP := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
NFe.Transp.retTransp.cMunFG := 0; // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)
// TAG de grupo Veículo - <veicTransp> - Ocorrência 0-1
NFe.Transp.veicTransp.placa := ''; // X19 - Placa do Veículo
NFe.Transp.veicTransp.UF := ''; // X20 - Sigla da UF
NFe.Transp.veicTransp.RNTC := ''; // X21 - Registro Nacional de Transportador de Carga (ANTT)

for i := 0 to 1 do
begin
NFe.Transp.Reboque.Add; // TAG de grupo Reboque - <reboque> - Ocorrência 0-2
NFe.Transp.Reboque[qtditem].placa := ''; // X23 - Placa do Veículo
NFe.Transp.Reboque[qtditem].UF := ''; // X24 - Sigla da UF
NFe.Transp.Reboque[qtditem].RNTC := ''; // X25 - Registro Nacional de Transportador de Carga (ANTT)
end;

for i := 0 to 1 do
begin
NFe.Transp.Vol.add; // TAG de grupo Volumes - <vol> - Ocorrência 0-N
NFe.Transp.Vol[qtditem].qVol := 0; // X27 - Quantidade de volumes transportados
NFe.Transp.vol[qtditem].esp := ''; // X28 - Espécie dos volumes transportados
NFe.Transp.Vol[qtditem].marca := ''; // X29 - Marca dos volumes transportados
NFe.Transp.Vol[qtditem].nVol := ''; // X30 - Numeração dos volumes transportados
NFe.Transp.Vol[qtditem].pesoL := 0; // X31 - Peso Líquido (em kg)
NFe.Transp.Vol[qtditem].pesoB := 0; // X32 - Peso Bruto (em kg)
for j := 0 to 1 do
begin
NFe.transp.Vol[qtditem].lacres.add; // TAG de grupo de Lacres - <lacres> - Ocorrência 0-N
NFe.transp.Vol[qtditem].lacres[j].nLacre := ''; // X34 - Número dos Lacres
// Para Combustíveis, um Caminhão (Toco, Truck, Carreta, Bi-Tren) pode ter até 32 bocas.
// Ou seja até 32 lacres. Cada lacre pode ser um número de até 8 digitos.
end;
end;

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Cobrança - <cobr> - Ocorrência 0-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// >>> TAG de grupo da Fatura - <fat> - Ocorrência 0-1
NFe.Cobr.Fat.nFat := ''; // Y03 - Número da Fatura
NFe.Cobr.Fat.vOrig := 0; // Y04 - Valor Original da Fatura
NFe.Cobr.Fat.vDesc := 0; // Y05 - Valor do desconto
NFe.Cobr.Fat.vLiq := 0; // Y06 - Valor Líquido da Fatura
for i := 0 to 1 do
begin
NFe.Cobr.Dup.Add; // >>> TAG de grupo da Duplicata - <dup> - Ocorrência 0-N
NFe.Cobr.Dup[qtditem].nDup := ''; // Y08 - Número da Duplicata
NFe.Cobr.Dup[qtditem].dVenc := now; // Y09 - Data de vencimento
NFe.Cobr.Dup[qtditem].vDup := 0; // Y10 - Valor da duplicata
end;

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG de grupo de Informações Adicionais - <infAdic> - Ocorrência 0-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

NFe.InfAdic.infAdFisco := ''; // Z02 - Informações Adicionais de Interesse do Fisco
NFe.InfAdic.infCpl := ''; // Z03 - Informações Complementares de interesse do Contribuinte
for i := 0 to 9 do
begin
NFe.InfAdic.obsCont.Add; // >>> TAG de grupo do campo de uso livre do contribuinte - <obsCont> - Ocorrência 0-10
NFe.InfAdic.obsCont[qtditem].xCampo := ''; // Z05 - Identificação do campo (TAM : 1-20)
NFe.InfAdic.obsCont[qtditem].xTexto := ''; // Z06 - Conteúdo do campo (TAM : 1-60)
end;
for i := 0 to 9 do
begin
NFe.InfAdic.obsFisco.Add; // >>> TAG de grupo do campo de uso livre do Fisco - <obsFisco> - Ocorrência 0-10
NFe.InfAdic.obsFisco[qtditem].xCampo := ''; // Z08 - Identificação do campo (TAM : 1-20)
NFe.InfAdic.obsFisco[qtditem].xTexto := ''; // Z09 - Conteúdo do campo (TAM : 1-60)
end;
for i := 0 to 1 do
begin
NFe.InfAdic.procRef.Add; // >>> Tag de grupo do processo referenciado - <procRef> - Ocorrência 0-N
NFe.InfAdic.procRef[qtditem].nProc := ''; // Z08 - Indentificador do processo ou ato concessório
NFe.InfAdic.procRef[qtditem].indProc := ipSEFAZ; // Z09 - Indicador da origem do processo (0 - SEFAZ; 1 - Justiça Federal; 2 - Justiça Estadual; 3 - Secex/RFB; 9 - Outros)
end;

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG do Grupo de Exportação - <exporta> - Ocorrência 0-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// O grupo sera gravado se um dos campos abaixo for preenchido
//NFe.exporta.UFembarq := ''; // ZA02 - Sigla da UF onde ocorrerá o Embarque dos produtos
//NFe.exporta.xLocEmbarq := ''; // ZA03 - Local onde ocorrerá o Embarque dos produtos

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG do Grupo de Compra - <compra> - Ocorrência 0-1 *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// O grupo sera gravado se um dos campos abaixo for preenchido
//NFe.compra.xNEmp := ''; // ZB02 - Nota de Empenho quando se tratar de compras públicas
//NFe.compra.xPed := ''; // ZB03 - Pedido
//NFe.compra.xCont := ''; // ZB04 - Contrato de Compra

(* ----------------------------------------------------------------------------------------------------------------- *)
(* TAG do Assinatura - <signature> *)
(* ----------------------------------------------------------------------------------------------------------------- *)

// Opcionalmente pode gerar o template da assinatura - Isso não sginifica assinar o arquivo!

//NFe.signature.URI := NFe.infNFe.Id;

(****************************************************************************)
(* *)
(* G E R A R O A R Q U I V O X M L *)
(* *)
(****************************************************************************)

// Criar a class TNFeW para a geração do arquivo conforme os dados inseridos
// em NFe passar o objeto que contém os dados para a geração do arquivo xml

NFeW := TNFeW.Create(NFe);

// Informa as opções especificas de TNFeW

NFeW.schema := tsPL005C;

NFeW.Opcoes.AjustarTagNro := True; // Ajusta o tamanho do campo para 3 posições com zero a esquerda
NFew.Opcoes.GerarTagIPIparaNaoTributado := True; // No caso de produto não tributado gera a TAG especifica
NFeW.Opcoes.GerarTXTSimultaneamente := True; // Possibilita gerar um arquivo TXT do formato do programa SEFAZ-SP
NFeW.Opcoes.NormatizarMunicipios := true; // Realiza a normatização do nome do municipio conforme a tabela do IBGE
NFeW.Opcoes.PathArquivoMunicipios := 'C:\DotCompany\NotaFiscalEletronica\MunIBGE\'; // Indicar para aonde estão os arquivo com os nomes dos municipios
NFeW.Opcoes.GerarTagAssinatura := taNunca; // Opção de gerar o template da assinature em branco
NFeW.Opcoes.ValidarInscricoes := False; // Valida as Inscrições. (É melhor quando essa validação é feita no ERP)

// Informar as opções comuns ao gerador ( Abaixo opcões Default)

NFeW.Gerador.Opcoes.IdentarXML := False; // Os arquivos que serão enviados para o SEFAZ não devem estar identados
NFeW.Gerador.Opcoes.TamanhoIdentacao := 3; // Tamanho da identação do arquivo
NFeW.Gerador.Opcoes.FormatoAlerta := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'; // Formato em que a mensagem vai ser gravada a ListaDeAlertas
NFeW.Gerador.Opcoes.RetirarEspacos := True; // Retira os espaços em branco duplos nas tag do xml
NFeW.Gerador.Opcoes.SuprimirDecimais := False; // Ignora valores não significativos nas casa decimais
NFeW.Gerador.Opcoes.SomenteValidar := False; // Não gera o arquivo apenas valida as informações

// Gerar o arquivo XML


// Carrega erros

 if NFeW.Gerador.ListaDeAlertas.Count > 0 then
 memo1.Lines.Add(NFeW.gerador.ListaDeAlertas.Text);

// Gravar o arquivo no HD

//if NFeW.Gerador.ListaDeAlertas.Count = 0 then // Se não contiver nenhum erro, grava
//begin
NFeW.gerador.SalvarArquivo('C:\DotCompany\NotaFiscalEletronica\Enviadas\' + NFeW.ObterNomeArquivo); // Não é necessário informar o parametro fpXML pois ele é default
if NFeW.Opcoes.GerarTXTSimultaneamente then
NFeW.gerador.SalvarArquivo('C:\DotCompany\NotaFiscalEletronica\Enviadas\modotxt\' + NFeW.ObterNomeArquivo + '.txt',fgTXT); // Informar o parametro fgTXT para gerar o arquivo no formato TEXTO
//end;



NFeW.Free;
NFe.Free;





end;

end.
