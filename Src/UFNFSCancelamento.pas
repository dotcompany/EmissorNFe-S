unit UFNFSCancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Buttons, ComCtrls, JvMemoryDataset,
  DBClient, Provider, SqlExpr, JvBaseEdits, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Grids, DBGrids, Mask, DBCtrls, Gauges,
  FMTBcd, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TFNFSCancelamento = class(TForm)
    lblTipo: TLabel;
    lblDtFinal: TLabel;
    Label1: TLabel;
    Gauge: TGauge;
    CbTipoConsulta: TComboBox;
    Bevel3: TBevel;
    RgDataEmissao: TRadioGroup;
    dsRxCancelamento: TDataSource;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    MJustificativa: TMemo;
    Bevel1: TBevel;
    StBar: TStatusBar;
    EChave: TDBEdit;
    ECaminho: TDBEdit;
    ENRecibo: TDBEdit;
    btnConsultar: TBitBtn;
    btnCancela: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    lblJustificativa: TLabel;
    Panel2: TPanel;
    IBQCancelamento: TSQLQuery;
    HistoricoNFe: TSQLQuery;
    DspHistoricoNFe: TDataSetProvider;
    CdsHistoricoNFe: TClientDataSet;
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
    QryParametrosNFE: TSQLQuery;
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
    EDataInicial: TJvDatePickerEdit;
    EDataFinal: TJvDatePickerEdit;
    RxCancelamento: TJvMemoryData;
    RxCancelamentoDATA_EMISSAO: TDateField;
    RxCancelamentoSERIE: TStringField;
    RxCancelamentoNOTA_FISCAL: TIntegerField;
    RxCancelamentoCNPJCPF: TStringField;
    RxCancelamentoRAZAOSOCIAL: TStringField;
    RxCancelamentoVALOR: TFloatField;
    RxCancelamentoCOD_EMPRESA: TIntegerField;
    RxCancelamentoCOD_CLIENTE: TIntegerField;
    RxCancelamentoN_PROTOCOLO: TStringField;
    RxCancelamentoMARCADO: TStringField;
    RxCancelamentoCHAVE: TStringField;
    RxCancelamentovCHAVE: TStringField;
    RxCancelamentoSTATUS: TIntegerField;
    RxCancelamentoCAMINHO: TStringField;
    RxCancelamentoN_RECIBO: TStringField;
    ECodGeral: TJvCalcEdit;
    EProtocolo: TDBEdit;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IBQCancelamentoFIL_CODIGO: TIntegerField;
    IBQCancelamentoNOT_CODIGO: TIntegerField;
    IBQCancelamentoNOT_NR: TIntegerField;
    IBQCancelamentoNOT_ESPECIE: TStringField;
    IBQCancelamentoNOT_SERIE: TStringField;
    IBQCancelamentoNOT_DATAEMISSAO: TDateField;
    IBQCancelamentoNOT_DATASAIDA: TDateField;
    IBQCancelamentoPED_CODIGO: TStringField;
    IBQCancelamentoNOT_TOTNOTA: TFMTBCDField;
    IBQCancelamentoTRA_CODIGO: TIntegerField;
    IBQCancelamentoNOT_CPFCNPJ: TStringField;
    IBQCancelamentoNOT_SITUACAO: TStringField;
    IBQCancelamentoCLI_CODIGO: TIntegerField;
    IBQCancelamentoNOT_TIPO: TStringField;
    IBQCancelamentoNOT_STATUS_NFE: TIntegerField;
    IBQCancelamentoNOT_NUMERONFE: TIntegerField;
    IBQCancelamentoCLI_CPFCNPJ: TStringField;
    IBQCancelamentoCLI_RAZAO: TStringField;
    IBQCancelamentoCOD_EMPRESA: TIntegerField;
    IBQCancelamentoNOTA_FISCAL: TIntegerField;
    IBQCancelamentoSERIE: TStringField;
    IBQCancelamentoDATA_EMISSAO: TDateField;
    IBQCancelamentoCHAVE: TStringField;
    IBQCancelamentoSEQUENCIA: TIntegerField;
    IBQCancelamentoAMBIENTE: TIntegerField;
    IBQCancelamentoMODELO: TIntegerField;
    IBQCancelamentoRECIBO: TStringField;
    IBQCancelamentoSTATUS: TStringField;
    IBQCancelamentoSERVIDOR: TStringField;
    IBQCancelamentoPROTOCOLO: TStringField;
    IBQCancelamentoCOD_CLIENTE: TIntegerField;
    IBQCancelamentoCAMINHO: TStringField;
    IBQCancelamentoFIL_CODIGO_1: TIntegerField;
    IBQCancelamentoEMP_GRUPO: TIntegerField;
    IBQCancelamentoDATA: TDateField;
    IBQCancelamentoHORAS: TTimeField;
    IBQCancelamentoUSER_NOME: TStringField;
    IBQCancelamentoNOMECOMPUTADOR: TStringField;
    IBQCancelamentoIPDAMAQUINA: TStringField;
    IBQCancelamentoEMP_CODIGO: TIntegerField;
    IBQCancelamentoFIL_CNPJ: TStringField;
    procedure FormShow(Sender: TObject);
    procedure CbTipoConsultaChange(Sender: TObject);
    procedure RgDataEmissaoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConsultarClick(Sender: TObject);
    procedure EDataInicialExit(Sender: TObject);
    procedure MJustificativaExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    Procedure AtualizaStatusNotaFiscal(vStatus : String);
    procedure btnCancelaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FNFSCancelamento: TFNFSCancelamento;

implementation

uses UModulo, UFNFSEletronica, UFPrincipal, UFtpBackup;

{$R *.dfm}

Procedure TFNFSCancelamento.AtualizaStatusNotaFiscal(vStatus : String);
Begin
{  ModuloCadastro.NotaFiscal.Close;
  ModuloCadastro.NotaFiscal.SQL.Clear;
  ModuloCadastro.NotaFiscal.SQL.Add('UPDATE NF_SAIDA                     ');
  ModuloCadastro.NotaFiscal.SQL.Add('SET    STATUS       = :STATUS       ');
  ModuloCadastro.NotaFiscal.SQL.Add('WHERE  COD_EMPRESA  = :COD_EMPRESA  ');
  ModuloCadastro.NotaFiscal.SQL.Add('AND    NOTA_FISCAL  = :NOTA_FISCAL  ');
  ModuloCadastro.NotaFiscal.SQL.Add('AND    SERIE        = :SERIE        ');
  ModuloCadastro.NotaFiscal.SQL.Add('AND    DATA_EMISSAO = :DATA_EMISSAO ');

  ModuloCadastro.NotaFiscal.ParamByName('NOTA_FISCAL').Value  := RxCancelamentoNOTA_FISCAL.AsInteger;
  ModuloCadastro.NotaFiscal.ParamByName('SERIE').Value        := RxCancelamentoSERIE.AsString;
  ModuloCadastro.NotaFiscal.ParamByName('DATA_EMISSAO').Value := RxCancelamentoDATA_EMISSAO.AsDateTime;
  ModuloCadastro.NotaFiscal.ParamByName('STATUS').Value       := vStatus;
  ModuloCadastro.NotaFiscal.ExecSQL;
  ModuloCadastro.NotaFiscal.Close;
}  
End;

Function FormataChave(Chave : String): String;
Begin
  Result := Copy(Chave,  1, 2) + '-' +
            Copy(Chave,  3, 4) + '-' +
            Copy(Chave,  7, 2) + '.' +
            Copy(Chave,  9, 3) + '.' +
            Copy(Chave, 12, 3) + '/' +
            Copy(Chave, 15, 4) + '-' +
            Copy(Chave, 19, 2) + '-' +
            Copy(Chave, 21, 2) + '-' +
            Copy(Chave, 23, 3) + '-' +
            Copy(Chave, 26, 3) + '.' +
            Copy(Chave, 29, 3) + '.' +
            Copy(Chave, 32, 3) + '-' +
            Copy(Chave, 35, 3) + '.' +
            Copy(Chave, 38, 3) + '.' +
            Copy(Chave, 41, 3) + '-' +
            Copy(Chave, 44, 1);
End;

procedure TFNFSCancelamento.FormShow(Sender: TObject);
Begin
  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF          ');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := StrToInt(Modulo.codigofilial);
  QryParametrosNFE.Open;

  MJustificativa.Clear;

  CbTipoConsultaChange(Sender);
End;

procedure TFNFSCancelamento.CbTipoConsultaChange(Sender: TObject);
Begin
  Case CbTipoConsulta.ItemIndex Of
  0 : Begin
        lblTipo.Font.Color      := clBlack;
        lblTipo.Caption         := 'Data Emissão';

        lblDtFinal.Visible      := True;

        RgDataEmissao.Enabled   := True;

        EDataInicial.Visible    := True;
        EDataFinal.Visible      := True;

        Case RgDataEmissao.ItemIndex Of
        0 : Begin
               EDataInicial.Enabled := False;
               EDataInicial.Date    := Date;
               EDataFinal.Date      := Date;
               EDataFinal.Enabled   := True;
               EDataFinal.SetFocus;
            End;

        1 : Begin
               EDataFinal.Enabled    := False;
               EDataFinal.Date       := Date;

               EDataInicial.Enabled  := True;
               EDataInicial.Date     := Date - 7;
               EDataInicial.SetFocus;
            End;
        End;
      End;
  End;
End;

procedure TFNFSCancelamento.RgDataEmissaoClick(Sender: TObject);
Begin
  EDataInicial.Visible := True;
  EDataFinal.Visible   := True;

  Case RgDataEmissao.ItemIndex Of
  0 : Begin
         EDataInicial.Enabled := False;
         EDataInicial.Date    := Date;
         EDataFinal.Date      := Date;
         EDataFinal.Enabled   := True;
         EDataFinal.SetFocus;
      End;

  1 : Begin
         EDataFinal.Enabled    := False;
         EDataFinal.Date       := Date;

         EDataInicial.Enabled  := True;
         EDataInicial.Date     := Date - 7;
         EDataInicial.SetFocus;
      End;
  End;
End;

procedure TFNFSCancelamento.btnFecharClick(Sender: TObject);
Begin
  Close;
End;

procedure TFNFSCancelamento.FormClose(Sender: TObject; var Action: TCloseAction);
Begin
   Action := caFree;
End;

procedure TFNFSCancelamento.FormKeyPress(Sender: TObject; var Key: Char);
Var Z : Integer;
Begin
   If Key =  #13 Then Begin
      Key := #0;
      SelectNext(ActiveControl, True, True);
   End;

   If key = #27 Then Begin

      Z := Application.MessageBox ('Tem certeza que deseja sair do formulário?', 'A T E N Ç Ã O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2);

      If Z = MrYes Then Begin
         Close;
      End;
   End;
End;

procedure TFNFSCancelamento.btnConsultarClick(Sender: TObject);
Var
  DataInicial : TDateTime;

  S, S1 : String;
Begin

  MJustificativa.Text      := '';
  MJustificativa.Visible   := False;

  btnCancelar.Enabled      := False;

  lblJustificativa.Visible := False;

  Case CbTipoConsulta.ItemIndex Of
  0 : Begin
         Case RgDataEmissao.ItemIndex Of
         0 : Begin
               EDataInicial.Date := Date;

               If (EDataFinal.Text = '  /  /    ') Or (EDataFinal.Text = '') Then Begin
                 Application.MessageBox('Informe a data final.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);
                 EDataFinal.SetFocus;
                 Abort;
               End;

               If EDataInicial.Date > EDataFinal.Date Then Begin
                 Application.MessageBox('A data final não pode ser menor que a data inicíal.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);
                 EDataFinal.SetFocus;
                 Abort;
               End;
             End;

         1 : Begin
               EDataFinal.Date := Date;

               If (EDataInicial.Text = '  /  /    ') Or (EDataInicial.Text = '') Then Begin
                 Application.MessageBox('Informe a data inicial.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);
                 EDataInicial.SetFocus;
                 Abort;
               End;

               DataInicial := (EDataFinal.Date - 7);

               If EDataInicial.Date > EDataFinal.Date Then Begin
                 Application.MessageBox('Data final não pode ser maior que data inicial.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
                 EDataInicial.SetFocus;
                 Abort;
               End;

               If EDataInicial.Date < DataInicial Then Begin
                 Application.MessageBox('Data inicial fora do período de 7 (sete) dias para cancelamento.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
                 EDataInicial.Date := (EDataFinal.Date - 7);
                 EDataInicial.SetFocus;
                 Abort;
               End;
             End;
         End;
      End;
  End;

  S  := formatdatetime('mm/dd/yyyy', StrToDate(EDataInicial.Text));
  S1 := formatdatetime('mm/dd/yyyy', StrToDate(EDataFinal.Text));

  IBQCancelamento.Close;
  IBQCancelamento.SQL.Clear;
  IBQCancelamento.SQL.Add('select                                                                                                                   ');
  IBQCancelamento.SQL.Add('    nota.fil_codigo,                                                                                                     ');
  IBQCancelamento.SQL.Add('    nota.not_codigo,                                                                                                     ');
  IBQCancelamento.SQL.Add('    nota.not_nr,                                                                                                         ');
  IBQCancelamento.SQL.Add('    nota.not_especie,                                                                                                    ');
  IBQCancelamento.SQL.Add('    nota.not_serie,                                                                                                      ');
  IBQCancelamento.SQL.Add('    nota.not_dataemissao,                                                                                                ');
  IBQCancelamento.SQL.Add('    nota.not_datasaida,                                                                                                  ');
  IBQCancelamento.SQL.Add('    nota.ped_codigo,                                                                                                     ');
  IBQCancelamento.SQL.Add('    nota.not_totnota,                                                                                                    ');
  IBQCancelamento.SQL.Add('    nota.tra_codigo,                                                                                                     ');
  IBQCancelamento.SQL.Add('    nota.not_cpfcnpj,                                                                                                    ');
  IBQCancelamento.SQL.Add('    nota.not_situacao,                                                                                                   ');
  IBQCancelamento.SQL.Add('    nota.cli_codigo,                                                                                                     ');
  IBQCancelamento.SQL.Add('    nota.not_tipo,                                                                                                       ');
  IBQCancelamento.SQL.Add('    nota.not_status_nfe,                                                                                                 ');
  IBQCancelamento.SQL.Add('    nota.not_numeronfe,                                                                                                  ');
  IBQCancelamento.SQL.Add('    clientes.fil_codigo,                                                                                                 ');
  IBQCancelamento.SQL.Add('    clientes.cli_codigo,                                                                                                 ');
  IBQCancelamento.SQL.Add('    clientes.cli_cpfcnpj,                                                                                                ');
  IBQCancelamento.SQL.Add('    clientes.cli_razao,                                                                                                  ');
  IBQCancelamento.SQL.Add('    clientes.cli_tipo,                                                                                                   ');
  IBQCancelamento.SQL.Add('    historico_nfe.cod_empresa,                                                                                           ');
  IBQCancelamento.SQL.Add('    historico_nfe.nota_fiscal,                                                                                           ');
  IBQCancelamento.SQL.Add('    historico_nfe.serie,                                                                                                 ');
  IBQCancelamento.SQL.Add('    historico_nfe.data_emissao,                                                                                          ');
  IBQCancelamento.SQL.Add('    historico_nfe.chave,                                                                                                 ');
  IBQCancelamento.SQL.Add('    historico_nfe.sequencia,                                                                                             ');
  IBQCancelamento.SQL.Add('    historico_nfe.ambiente,                                                                                              ');
  IBQCancelamento.SQL.Add('    historico_nfe.modelo,                                                                                                ');
  IBQCancelamento.SQL.Add('    historico_nfe.recibo,                                                                                                ');
  IBQCancelamento.SQL.Add('    historico_nfe.status,                                                                                                ');
  IBQCancelamento.SQL.Add('    historico_nfe.servidor,                                                                                              ');
  IBQCancelamento.SQL.Add('    historico_nfe.protocolo,                                                                                             ');
  IBQCancelamento.SQL.Add('    historico_nfe.cod_cliente,                                                                                           ');
  IBQCancelamento.SQL.Add('    historico_nfe.caminho,                                                                                               ');
  IBQCancelamento.SQL.Add('    historico_nfe.fil_codigo,                                                                                            ');
  IBQCancelamento.SQL.Add('    historico_nfe.emp_grupo,                                                                                             ');
  IBQCancelamento.SQL.Add('    historico_nfe.data,                                                                                                  ');
  IBQCancelamento.SQL.Add('    historico_nfe.horas,                                                                                                 ');
  IBQCancelamento.SQL.Add('    historico_nfe.user_nome,                                                                                             ');
  IBQCancelamento.SQL.Add('    historico_nfe.nomecomputador,                                                                                        ');
  IBQCancelamento.SQL.Add('    historico_nfe.ipdamaquina,                                                                                           ');
  IBQCancelamento.SQL.Add('    historico_nfe.emp_codigo,                                                                                            ');
  IBQCancelamento.SQL.Add('    historico_nfe.fil_cnpj                                                                                               ');
  IBQCancelamento.SQL.Add('from historico_nfe                                                                                                       ');
  IBQCancelamento.SQL.Add('   inner join nota on (historico_nfe.cod_empresa = nota.fil_codigo) and (historico_nfe.nota_fiscal = nota.not_numeronfe) ');
  IBQCancelamento.SQL.Add('   inner join clientes on (nota.fil_codigo = clientes.fil_codigo) and (nota.cli_codigo = clientes.cli_codigo)            ');

  IBQCancelamento.SQL.Add('WHERE HISTORICO_NFE.FIL_CODIGO = ' + Modulo.codigofilial);
  IBQCancelamento.SQL.Add('AND   nota.NOT_NUMERONFE    > 0                                                    ');
  IBQCancelamento.SQL.Add('AND   nota.NOT_STATUS_NFE   = 5                                                    ');
  IBQCancelamento.SQL.Add('AND   HISTORICO_NFE.STATUS  = 100                             ');
  IBQCancelamento.SQL.Add('AND   nota.NOT_DATAEMISSAO BETWEEN ' + '''' + S + '''' + ' AND ' + '''' + S1 + ''' ');
  IBQCancelamento.SQL.Add('AND   nota.NOT_TIPO         = ''NFE''                                              ');
  //IBQCancelamento.SQL.SaveToFile('c:\dotcompany\d.txt');
  IBQCancelamento.Open;

  If IBQCancelamento.RecordCount > 0 Then Begin

    Gauge.MinValue := 0;
    Gauge.MaxValue := IBQCancelamento.RecordCount;
    Gauge.Progress := 0;

    RxCancelamento.Cancel;
    RxCancelamento.Close;
    RxCancelamento.EmptyTable;
    RxCancelamento.Open;

    IBQCancelamento.First;

    While IBQCancelamento.Eof = False Do Begin

      Application.ProcessMessages;

      Gauge.Progress := Gauge.Progress + 1;

      HistoricoNFe.Close;
      HistoricoNFe.SQL.Clear;
      HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
      HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + Modulo.codigofilial);
      HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + IntToStr(IBQCancelamentoNOTA_FISCAL.AsInteger));
      HistoricoNFe.SQL.Add('AND   STATUS       = ' + '101');
      CdsHistoricoNFe.close;
      CdsHistoricoNFe.Open;

      If CdsHistoricoNFe.RecordCount = 0 Then Begin

        HistoricoNFe.Close;
        HistoricoNFe.SQL.Clear;
        HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
        HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + Modulo.codigofilial);
        HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + IntToStr(IBQCancelamentoNOTA_FISCAL.AsInteger));
        HistoricoNFe.SQL.Add('AND   STATUS       = ' + '100');
        CdsHistoricoNFe.close;
        CdsHistoricoNFe.Open;

         If CdsHistoricoNFe.RecordCount > 0 Then Begin

            RxCancelamento.Insert;
            RxCancelamentoDATA_EMISSAO.AsDateTime := CdsHistoricoNFeDATA_EMISSAO.AsDateTime;
            RxCancelamentoCOD_CLIENTE.AsInteger   := IBQCancelamentoCLI_CODIGO.AsInteger;
            RxCancelamentoSERIE.AsString          := IBQCancelamentoNOT_SERIE.AsString;
            RxCancelamentoNOTA_FISCAL.AsInteger   := IBQCancelamentoNOT_NUMERONFE.AsInteger;
            RxCancelamentoN_PROTOCOLO.AsString    := CdsHistoricoNFePROTOCOLO.AsString;
            RxCancelamentoSTATUS.AsInteger        := CdsHistoricoNFeSTATUS.AsInteger;
            RxCancelamentoRAZAOSOCIAL.AsString    := IBQCancelamentoCLI_RAZAO.AsString;
            RxCancelamentoCHAVE.AsString          := FormataChave(CdsHistoricoNFeCHAVE.AsString);
            RxCancelamentovCHAVE.AsString         := CdsHistoricoNFeCHAVE.AsString;
            RxCancelamentoCAMINHO.AsString        := CdsHistoricoNFeCAMINHO.AsString;
            RxCancelamentoN_RECIBO.AsString       := CdsHistoricoNFeRECIBO.AsString;
            RxCancelamentoVALOR.AsFloat           := IBQCancelamentoNOT_TOTNOTA.AsFloat;
            RxCancelamentoCNPJCPF.AsString        := IBQCancelamentoCLI_CPFCNPJ.AsString;
            RxCancelamento.Post;
         End;

      End;

    IBQCancelamento.Next;
    End;

    RxCancelamento.SortOnFields('DATA_EMISSAO;NOTA_FISCAL', True, True);

  End Else Begin

    RxCancelamento.Cancel;
    RxCancelamento.Close;
    RxCancelamento.EmptyTable;
  End;

  Gauge.Progress := 0;

  
  DBGrid1.SetFocus;
End;

procedure TFNFSCancelamento.EDataInicialExit(Sender: TObject);
Var
  DataInicial : TDateTime;
Begin
  DataInicial := (EDataFinal.Date - 7);

  If EDataInicial.Date > EDataFinal.Date Then Begin
    Application.MessageBox('Data final não pode ser maior que data inicial.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    EDataInicial.SetFocus;
    Abort;
  End;

  If EDataInicial.Date < DataInicial Then Begin
    Application.MessageBox('Data inicial fora do período de 7 (sete) dias para cancelamento.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    EDataInicial.Date := (EDataFinal.Date - 7);
    EDataInicial.SetFocus;
    Abort;
  End;
End;

procedure TFNFSCancelamento.MJustificativaExit(Sender: TObject);
Begin
  If (btnFechar.Focused) Or (DBGrid1.Focused) Or (btnCancela.Focused) Then Begin
    Abort;
  End;

  If MJustificativa.Text = '' Then Begin
     Application.MessageBox('Informe a justificativa do cancelamento da NF-e.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     MJustificativa.SetFocus;
     Abort;
  End
  Else Begin
     btnCancelar.Enabled := True;
     btnCancelar.SetFocus;
  End;
End;

procedure TFNFSCancelamento.btnCancelarClick(Sender: TObject);
Var
  Z, Status, _Sequencia : Integer;
  arquivos_backup:array[0..1] of string;
  cnpj:string;
  stats:string;
  Modo:string;
Begin

  If EChave.Text = '' Then Begin
     Application.MessageBox('Chave da nota fiscal eletrônica inexistente.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     DBGrid1.SetFocus;
     Abort;
  End;

  If ECaminho.Text = '' Then Begin
     Application.MessageBox('Caminho da nota fiscal eletrônica inexistente.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     DBGrid1.SetFocus;
     Abort;
  End;

  If EProtocolo.Text = '' Then Begin
     Application.MessageBox('Nº. do protocolo da nota fiscal eletrônica inexistente.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     DBGrid1.SetFocus;
     Abort;
  End;

  If MJustificativa.Text = '' Then Begin
     Application.MessageBox('Informe a justificativa do cancelamento da NF-e.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     MJustificativa.SetFocus;
     Abort;
  End;

  {$WARNINGS OFF}

  Z := Application.MessageBox(PChar('Deseja realmente cancelar a NF-e?       '                       + #13#10 +
                                    '                                        '                       + #13#10 +
                                    'Chave.........: ' + (Trim(EChave.Text))                         + #13#10 +
                                    'Nº. Protocolo.: ' + (Trim(EProtocolo.Text))                     + #13#10 +
                                    'Nota Fiscal...: ' + (Trim(RxCancelamentoNOTA_FISCAL.AsString))  + #13#10 +
                                    'Data Emissão..: ' + (Trim(RxCancelamentoDATA_EMISSAO.AsString)) + #13#10 +
                                    '....................................................................................' + #13#10 +
                                    'Razão Social..: ' + (Trim(RxCancelamentoRAZAOSOCIAL.AsString))  + #13#10 +
                                    'C.N.P.J/C.P.F.: ' + (Trim(RxCancelamentoCNPJCPF.AsString))), 'A T E N Ç Ã O', MB_YESNO + MB_ICONQUESTION);
  If Z = MrYes Then Begin
    // Cancelamento da NF-e Após Ter Sido Validada.

    FNFSEletronica.AcbrNFe.NotasFiscais.Clear;
    FNFSEletronica.AcbrNFe.NotasFiscais.LoadFromFile(ECaminho.Text);
    FNFSEletronica.AcbrNFe.Cancelamento(MJustificativa.Text);

    Status := FNFSEletronica.AcbrNFe.WebServices.Cancelamento.cStat;

    // Gravar Mesmo Com Erro.
    // Atualizar a Tabela de Histórico

    HistoricoNFe.Close;
    HistoricoNFe.SQL.Clear;
    HistoricoNFe.SQL.Add('SELECT * FROM HISTORICO_NFE ');
    HistoricoNFe.SQL.Add('WHERE FIL_CODIGO   = ' + Modulo.codigofilial);
    HistoricoNFe.SQL.Add('AND   NOTA_FISCAL  = ' + RxCancelamentoNOTA_FISCAL.AsString);
    HistoricoNFe.SQL.Add('AND   STATUS       = ' + IntToStr(Status));
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
        HistoricoNFe.SQL.Add('       MODELO,            ');
        HistoricoNFe.SQL.Add('       PROTOCOLO,         ');
        HistoricoNFe.SQL.Add('       COD_CLIENTE,       ');
        HistoricoNFe.SQL.Add('       CAMINHO,           ');
        HistoricoNFe.SQL.Add('       FIL_CODIGO,        ');
        HistoricoNFe.SQL.Add('       FIL_CNPJ)          ');

        HistoricoNFe.SQL.Add('VALUES (:STATUS,          ');
        HistoricoNFe.SQL.Add('        :SEQUENCIA,       ');
        HistoricoNFe.SQL.Add('        :COD_EMPRESA,     ');
        HistoricoNFe.SQL.Add('        :NOTA_FISCAL,     ');
        HistoricoNFe.SQL.Add('        :SERIE,           ');
        HistoricoNFe.SQL.Add('        :DATA_EMISSAO,    ');
        HistoricoNFe.SQL.Add('        :CHAVE,           ');
        HistoricoNFe.SQL.Add('        :MODELO,          ');
        HistoricoNFe.SQL.Add('        :PROTOCOLO,       ');
        HistoricoNFe.SQL.Add('        :COD_CLIENTE,     ');
        HistoricoNFe.SQL.Add('        :CAMINHO,         ');
        HistoricoNFe.SQL.Add('        :FIL_CODIGO,      ');
        HistoricoNFe.SQL.Add('        :FIL_CNPJ)        ');

        HistoricoNFe.ParamByName('STATUS').Value          := IntToStr(FNFSEletronica.AcbrNFe.WebServices.Consulta.cStat);
        HistoricoNFe.ParamByName('FIL_CODIGO').Value      := Modulo.codigofilial;//FPrincipal.Edit1.AsInteger;
        HistoricoNFe.ParamByName('COD_EMPRESA').AsInteger := 1;//FPrincipal.Edit1.AsInteger;

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
        HistoricoNFe.ParamByName('NOTA_FISCAL').AsInteger := RxCancelamentoNOTA_FISCAL.AsInteger;
        HistoricoNFe.ParamByName('SERIE').AsString        := RxCancelamentoSERIE.AsString;
        HistoricoNFe.ParamByName('DATA_EMISSAO').AsDate   := RxCancelamentoDATA_EMISSAO.AsDateTime;
        HistoricoNFe.ParamByName('CHAVE').AsString        := FNFSEletronica.AcbrNFe.WebServices.Cancelamento.NFeChave;
        HistoricoNFe.ParamByName('MODELO').Value          := '55';
        HistoricoNFe.ParamByName('PROTOCOLO').Value       := FNFSEletronica.AcbrNFe.WebServices.Cancelamento.Protocolo;
        HistoricoNFe.ParamByName('COD_CLIENTE').Value     := RxCancelamentoCOD_CLIENTE.AsInteger;
        HistoricoNFe.ParamByName('CAMINHO').Value         := QryParametrosNFENFE_CAMINHOXML.AsString + FNFSEletronica.AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
        HistoricoNFe.ParamByName('FIL_CNPJ').AsString     := RxCancelamentoCNPJCPF.AsString;
        HistoricoNFe.ExecSQL;
    End;

    If Status <> 9999 Then Begin

      Case Status Of
      101 : Begin

              Application.MessageBox(PChar('Cancelamento homologado: ' + #13#10 +
                                           '                               ' + #13#10 +
                                           'Status.: ' + IntToStr(Status) + #13#10 +
                                           'Motivo.: ' + FNFSEletronica.AcbrNFe.WebServices.Cancelamento.xMotivo), 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);

              FNFSEletronica.AtualizaStatusNotaFiscal(RxCancelamentoNOTA_FISCAL.AsInteger, '6');
            End;

      218 : Begin
              Application.MessageBox(PChar('Não é Permitido Cancelar NF-e: ' + #13#10 +
                                           '                               ' + #13#10 +
                                           'Status.: ' + IntToStr(Status) + #13#10 +
                                           'Motivo.: ' + FNFSEletronica.AcbrNFe.WebServices.Retorno.xMotivo), 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
           End;
      End;

    FNFSEletronica.Mensagens(Status);
    End

    Else Begin

      Application.MessageBox('Serviço inoperante.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
      MJustificativa.SetFocus;
      Abort;
    End;
  End
  Else Begin

    MJustificativa.Visible   := False;
    MJustificativa.Text      := '';

    lblJustificativa.Visible := False;

    btnCancelar.Enabled      := False;
    btnConsultar.Click;
  End;
  
  arquivos_backup[0] :=   QryParametrosNFENFE_CAMINHOXML.AsString + FNFSEletronica.AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
  arquivos_backup[1] :=   QryParametrosNFENFE_CAMINHOXML.AsString + FNFSEletronica.AcbrNFe.WebServices.Consulta.NFeChave + '-nfe.xml';
  stats :=  IntToStr(Status);
  cnpj := QryParametrosNFEFIL_CNPJ.AsString;
  Modo := QryParametrosNFENFE_WEBSERVICEAMBIENTE.AsString;
  EnviaBackupFtp(cnpj,stats,arquivos_backup,Modo);
  btnConsultar.Click;
End;

procedure TFNFSCancelamento.btnCancelaClick(Sender: TObject);
Begin
  btnConsultar.Click;
End;

procedure TFNFSCancelamento.DBGrid1CellClick(Column: TColumn);
begin
  MJustificativa.Clear;
  MJustificativa.Visible   := True;

  lblJustificativa.Visible := True;

  btnCancelar.Enabled      := True;

  MJustificativa.SetFocus;
end;

procedure TFNFSCancelamento.DBGrid1DblClick(Sender: TObject);
Begin
  MJustificativa.Clear;
  MJustificativa.Visible   := True;

  lblJustificativa.Visible := True;

  btnCancelar.Enabled      := True;

  MJustificativa.SetFocus;
End;

End.
