unit UFCartaCorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, FMTBcd, DB, SqlExpr,pcnConversao,
  Buttons, OleCtrls, SHDocVw,ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc  ;

type
  TfrmCartaCorrecao = class(TForm)
    edtNota: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtChave: TEdit;
    mmCorrecao: TMemo;
    Correcao: TLabel;
    Label4: TLabel;
    mmTermo: TMemo;
    Label6: TLabel;
    edtDataEnvio: TEdit;
    DateTimePicker1: TDateTimePicker;
    HistoricoNFe: TSQLQuery;
    HistoricoNFeCOD_EMPRESA: TIntegerField;
    HistoricoNFeNOTA_FISCAL: TIntegerField;
    HistoricoNFeSERIE: TStringField;
    HistoricoNFeDATA_EMISSAO: TDateField;
    HistoricoNFeCHAVE: TStringField;
    HistoricoNFeSEQUENCIA: TIntegerField;
    HistoricoNFeAMBIENTE: TIntegerField;
    HistoricoNFeMODELO: TIntegerField;
    HistoricoNFeRECIBO: TStringField;
    HistoricoNFeSTATUS: TStringField;
    HistoricoNFeSERVIDOR: TStringField;
    HistoricoNFePROTOCOLO: TStringField;
    HistoricoNFeCOD_CLIENTE: TIntegerField;
    HistoricoNFeCAMINHO: TStringField;
    HistoricoNFeFIL_CODIGO: TIntegerField;
    HistoricoNFeEMP_GRUPO: TIntegerField;
    HistoricoNFeDATA: TDateField;
    HistoricoNFeHORAS: TTimeField;
    HistoricoNFeUSER_NOME: TStringField;
    HistoricoNFeNOMECOMPUTADOR: TStringField;
    HistoricoNFeIPDAMAQUINA: TStringField;
    HistoricoNFeEMP_CODIGO: TIntegerField;
    HistoricoNFeFIL_CNPJ: TStringField;
    Button1: TButton;
    HistoricoNFeCARTA_CORRECAO_SEQ: TIntegerField;
    NotaClienteIbgeUf: TSQLQuery;
    Label7: TLabel;
    edtSequencia: TEdit;
    edtCodigoIbgeUf: TEdit;
    Label3: TLabel;
    QryFilial: TSQLQuery;
    QryFilialFIL_CODIGO: TIntegerField;
    QryFilialDELETADO: TIntegerField;
    QryFilialFIL_CNPJ: TStringField;
    QryFilialFIL_NOME: TStringField;
    QryFilialFIL_END_ENDERECO: TStringField;
    QryFilialFIL_END_BAIRRO: TStringField;
    QryFilialFIL_END_CID_CODIGO: TIntegerField;
    QryFilialFIL_END_CID_NOME: TStringField;
    QryFilialFIL_END_CID_UF: TStringField;
    QryFilialFIL_END_CEP: TStringField;
    QryFilialFIL_INSCEST: TStringField;
    QryFilialFIL_EMAIL: TStringField;
    QryFilialFIL_HOMEPAGE: TStringField;
    QryFilialFIL_END_COMPLETO: TStringField;
    QryFilialFIL_FONE: TStringField;
    QryFilialFIL_FAX: TStringField;
    QryFilialFIL_NOMEFANTASIA: TStringField;
    QryFilialMON_CODIGO: TIntegerField;
    QryFilialFIL_OBS: TBlobField;
    QryFilialEMP_GRUPO: TIntegerField;
    QryFilialDATA: TDateField;
    QryFilialHORAS: TTimeField;
    QryFilialUSER_NOME: TStringField;
    QryFilialNOMECOMPUTADOR: TStringField;
    QryFilialIPDAMAQUINA: TStringField;
    QryFilialEMP_CODIGO: TIntegerField;
    QryFilialFIL_COMOCOMPROU: TStringField;
    QryFilialFIL_ESTAEMPRESAUSAOS: TStringField;
    QryFilialFIL_NOMECONTATO: TStringField;
    QryFilialFIL_SISTEMA: TStringField;
    QryFilialFIL_BLOQUEADA: TIntegerField;
    QryFilialFIL_VALORMENSALIDADE: TFloatField;
    QryFilialFIL_DATAVENDMENSALIDADE: TDateField;
    QryFilialFIL_MESCORRENTEPAGO: TIntegerField;
    QryFilialPERMITIRATUALIZAR: TIntegerField;
    QryFilialFIL_USER_QTD: TIntegerField;
    QryFilialFIL_CPF: TStringField;
    QryFilialFIL_IDENTIDADE: TStringField;
    QryFilialQTD_USER: TIntegerField;
    QryFilialDIA_VENCIMENTO: TIntegerField;
    QryFilialFIL_TIPOCLIENTE: TStringField;
    QryFilialEMP_BLOQUEIATUDO: TIntegerField;
    QryFilialFIL_END_COMPLEMENTO: TStringField;
    QryFilialFIL_END_NUMERO: TStringField;
    QryFilialFIL_END_COD_IBGEUF: TStringField;
    QryFilialFIL_END_COD_IBGEMUNIC: TStringField;
    QryFilialFIL_INSMUN: TStringField;
    QryFilialFIL_CNAE: TStringField;
    QryFilialFIL_INSESTSUBTITUTO: TStringField;
    QryFilialFIL_PAIS: TStringField;
    QryFilialFIL_USARANFE: TStringField;
    QryFilialFIL_CORRETO: TIntegerField;
    QryFilialVEND_CODIGO: TIntegerField;
    Button2: TButton;
    XMLDocument1: TXMLDocument;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure ValidaCampos;



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartaCorrecao: TfrmCartaCorrecao;
  CodigoIbgeUf:string;

implementation

uses UFNFSEletronica, UFuncoes, UModulo;

{$R *.dfm}

procedure TfrmCartaCorrecao.Button1Click(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao,Autorizada : string;
begin
ValidaCampos;
  Chave := Trim(edtChave.Text);
  if Chave = '' then
   begin
     MessageDlg('Informe a chave.',mtError,[mbok],0);
     exit;
   end;
   Correcao:= mmCorrecao.Text;
   if Correcao = '' then
   begin
     MessageDlg('Informe a Correção',mtError,[mbok],0);
     exit;
   end;

   if (Length(correcao) <= 15) then
   begin
     MessageDlg('Informe a Correção com mais de 15 caracteres.',mtError,[mbok],0);
     exit;
   end;
   idLote := edtNota.Text;
   FNFSEletronica.ACBrNFe.CartaCorrecao.CCe.idLote := StrToInt(idLote);
   //Pegando CNPJ Da filial selecionada
   QryFilial.Close;
   QryFilial.SQL.Text := 'select * from filiais where fil_codigo = :fil_codigo';
   QryFilial.ParamByName('fil_codigo').Value := FNFSEletronica.CdsLookFiliaisFIL_CODIGO.AsString;
   QryFilial.Open;
   //Pegando informações da nota no historico
   HistoricoNFe.Close;
   HistoricoNFe.SQL.Text := 'SELECT * FROM HISTORICO_NFE where nota_fiscal = :nota';
   HistoricoNFe.ParamByName('nota').Text := edtNota.Text;
   HistoricoNFe.Open;
   FNFSEletronica.ACBrNFe.EventoNFe.Evento.Clear;

  with FNFSEletronica.ACBrNFe.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ := QryFilialFIL_CNPJ.Text;//CNPJ;
    // infEvento.cOrgao := StrToInt(edtCodigoIbgeUf.Text);
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.detEvento.xCorrecao := Correcao;

   //  InfEvento.versaoEvento := '1.00';
     infEvento.detEvento.descEvento := 'Carta de Correção';
   //  infEvento.detEvento.xCondUso := '';

     if(HistoricoNFeAMBIENTE.Text = '2')then
       InfEvento.tpAmb := taHomologacao
     else
     InfEvento.tpAmb := taProducao;
     InfEvento.nSeqEvento := strtoint(trim(edtSequencia.Text));
   end;
   // envio da carta de correção
   FNFSEletronica.ACBrNFe.EnviarEventoNFe(StrToInt(idLote));

  //Retorno da carta de correção
  Label4.Caption := 'Respota Carta de Correção';



  mmTermo.Lines.Text :='Autorizada:     '+ Autorizada+'#13';
  mmTermo.Lines.Add('Reposta da CC-E:   '+ '#13');

  mmTermo.Lines.Add(UTF8Encode(FNFSEletronica.ACBrNFe.WebServices.EnvEvento.RetWS));
  mmTermo.Lines.Add('');
  mmTermo.Lines.Add('');
  mmTermo.Lines.Add('                     Para Conseguir Visualizar/Imprimir a CC-E aguarda alguns minutos e clique no Botão Imprimir:');
  Button2.Click;

  end;


procedure TfrmCartaCorrecao.Button2Click(Sender: TObject);
var URL:string;
begin
 URL := 'http://nfe.sefaz.go.gov.br/nfeweb/jsp/CConsultaCompletaNFEJSF.jsf?tipoConsulta=TELA_CARTA_CORRECAO&parametroChaveAcesso='+edtChave.Text;
 ShellExecute(Handle, 'open', PChar(URL), '', '', 1);
end;

procedure TfrmCartaCorrecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmCartaCorrecao.FormCreate(Sender: TObject);
var
x: Integer;
begin
 edtDataEnvio.Text:= DateTimeToStr(Now);
 if FNFSEletronica.RxNotaFiscal.IsEmpty then
 begin

 end else
 begin

  FNFSEletronica.RxNotaFiscal.First;
  for x := 0 to Pred( FNFSEletronica.RxNotaFiscal.RecordCount ) do
   begin
    if FNFSEletronica.RxNotaFiscalMARCADO.AsBoolean = True then
    begin
      if FNFSEletronica.RxNotaFiscalSTATUS_NFE.AsString = '5' then
      BEGIN
        try
          if(FNFSEletronica.RxNotaFiscalNOTA_FISCAL.AsString <> '') then
          begin
           HistoricoNFe.Close;
           HistoricoNFe.SQL.Text := 'SELECT * FROM HISTORICO_NFE where nota_fiscal = :nota';
           HistoricoNFe.ParamByName('nota').Text := FNFSEletronica.RxNotaFiscalNOTA_FISCAL.AsString;
           HistoricoNFe.Open;
           edtNota.Text :=  FNFSEletronica.RxNotaFiscalNOTA_FISCAL.AsString;
           //Pegando Codigo da ibgeuf do cliente
           NotaClienteIbgeUf.Close;
           NotaClienteIbgeUf.SQL.Text := 'SELECT clientes.cli_end_cod_ibgeuf from nota  inner join clientes on (nota.fil_codigo = clientes.fil_codigo) and (nota.cli_codigo = clientes.cli_codigo) ';
           NotaClienteIbgeUf.SQL.Add('where not_nr = :nota');
           NotaClienteIbgeUf.ParamByName('nota').Text :=  edtNota.Text;
           NotaClienteIbgeUf.Open;
           edtCodigoIbgeUf.text := NotaClienteIbgeUf.FieldByName('cli_end_cod_ibgeuf').text;
          end;
          edtChave.Text := HistoricoNFeCHAVE.AsString;

          if(HistoricoNFeCARTA_CORRECAO_SEQ.Text = '0')then
          edtSequencia.Text := '1'
          else if(HistoricoNFeCARTA_CORRECAO_SEQ.Text = '')then
          edtSequencia.Text := '1'
          else if(StrToInt(HistoricoNFeCARTA_CORRECAO_SEQ.Text)>1)then
          edtSequencia.Text :=  HistoricoNFeCARTA_CORRECAO_SEQ.Text;
        except
        end;
      END
      else
      begin
        MessageBoxW(Handle, 'Essa NF-e Não foi validada!', 'Carta de correção:', MB_OK + MB_ICONINFORMATION);
        //Close;
      end;
    end;
    FNFSEletronica.RxNotaFiscal.Next;
   end;
 end;

end;


procedure TfrmCartaCorrecao.ValidaCampos;
begin
 if(edtNota.Text = '')then
 begin
  MessageBoxW(Handle, 'Campo:Nota em branco!', 'Carta de correção:', MB_OK + MB_ICONINFORMATION);
  Abort;
 end;
 if(edtChave.Text = '')then
 begin
    MessageBoxW(Handle, 'Campo:Chave em branco!', 'Carta de correção:', MB_OK + MB_ICONINFORMATION);
  Abort;
 end;
 if(edtDataEnvio.Text = '')then
 begin
  MessageBoxW(Handle, 'Campo:DataEnvio em branco!', 'Carta de correção:', MB_OK + MB_ICONINFORMATION);
  Abort;
 end;
 if(edtCodigoIbgeUf.Text = '')then
 begin
  MessageBoxW(Handle, 'Campo:IbgeUf em branco!', 'Carta de correção:', MB_OK + MB_ICONINFORMATION);
  Abort;
 end;
 if(edtSequencia.Text = '')then
 begin
  MessageBoxW(Handle, 'Campo:Sequencia em branco!', 'Carta de correção:', MB_OK + MB_ICONINFORMATION);
  Abort;
 end;
end;

end.
