unit UFormInutilizaNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DB, SqlExpr, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  JvSpin, FMTBcd;

type
  TFormInutilizaNew = class(TForm)
    lblTipo: TLabel;
    MJustificativa: TMemo;
    StBar: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
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
    QryParametrosNFENEF_CAMINHOPDF: TStringField;
    QryParametrosNFENFE_CAMINHOCANCELADO: TStringField;
    QryParametrosNFENFE_CAMINHORAVE: TStringField;
    btnInutiliza: TBitBtn;
    btnCancela: TBitBtn;
    btnFechar: TBitBtn;
    EDataEmissao: TJvDatePickerEdit;
    ENInicial: TJvSpinEdit;
    ENFinal: TJvSpinEdit;
    QryParametrosNFENFE_OPTANTESIMPLESNASCIONAL: TStringField;
    QryParametrosNFENFE_OBSAPARECENANOTA: TStringField;
    edtserie: TEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnInutilizaClick(Sender: TObject);
    procedure ENInicialExit(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure ENFinalExit(Sender: TObject);
    procedure EDataEmissaoExit(Sender: TObject);

  private
    { Private declarations }
  public
    Modelo, Serie, Cnpj, CaminhoXML : String;

    Ano, Mes, Dia : Word;

    { Public declarations }
  end;

var
  FormInutilizaNew: TFormInutilizaNew;

implementation

uses UFPrincipal, UFNFSEletronica, ACBrNFe, ACBrNFeWebServices;

{$R *.dfm}

procedure TFormInutilizaNew.FormShow(Sender: TObject);
Begin
  QryParametrosNFE.Close;
  QryParametrosNFE.SQL.Clear;
  QryParametrosNFE.SQL.Add('SELECT * FROM NFECONF          ');
  QryParametrosNFE.SQL.Add('WHERE FIL_CODIGO = :FIL_CODIGO ');
  QryParametrosNFE.ParamByName('FIL_CODIGO').AsInteger := StrToInt(FPrincipal.Edit1.Text);
  QryParametrosNFE.Open;

  CaminhoXML                                 := QryParametrosNFENFE_CAMINHOXML.AsString;

  Modelo := ''; Serie := ''; Cnpj := '';

  DecodeDate(Date, Ano, Mes, Dia);

  ENInicial.SetFocus;
End;

procedure TFormInutilizaNew.btnFecharClick(Sender: TObject);
Begin
  Close;
End;

procedure TFormInutilizaNew.FormClose(Sender: TObject; var Action: TCloseAction);
Begin
   Action := caFree;
End;

procedure TFormInutilizaNew.FormKeyPress(Sender: TObject; var Key: Char);
Begin
   If Key = #13 Then Begin
      Key := #0;
      SelectNext(ActiveControl, True, True);
   End;
End;

procedure TFormInutilizaNew.btnInutilizaClick(Sender: TObject);
Var
  Z, Status : Integer;
Begin

Cnpj := FNFSEletronica.CdsLookFiliaisFIL_CNPJ.AsString;

  If ENInicial.value <= 0 Then Begin
    Application.MessageBox('Nº. Inicial Deve Ser Maior que 0 (Zero).', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    ENInicial.SetFocus;
    Abort;
  End;

  If ENFinal.value <= 0 Then Begin
    Application.MessageBox('Nº. Final Deve Ser Maior que 0 (Zero).', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    ENFinal.SetFocus;
    Abort;
  End;

  If ENFinal.AsInteger <> ENInicial.AsInteger Then Begin
    Application.MessageBox('Inutilização de Nota Fiscal Eletrônica Deve Ser Uma a Uma.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    ENInicial.SetFocus;
    Abort;
  End;

  If MJustificativa.Text = '' Then Begin
     Application.MessageBox('Informe a Justificativa da Inutilização da NF-e.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     MJustificativa.SetFocus;
     Abort;
  End;

  If EDataEmissao.Text = '' Then Begin
     Application.MessageBox('Informe a Data de Emissão da NF-e.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     EDataEmissao.SetFocus;
     Abort;
  End;


    If edtserie.Text = '' Then Begin
     Application.MessageBox('Informe a Série', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     edtserie.SetFocus;
     Abort;
  End;


  {$WARNINGS OFF}
  Z := Application.MessageBox(PChar('Deseja Realmente Inutilizar Está Faixa de Número(s) ?'), 'A T E N Ç Ã O', MB_YESNO + MB_ICONQUESTION);

  If Z = MrYes Then Begin

     With FNFSEletronica.ACBrNFe Do Begin

       WebServices.Inutiliza(Cnpj, MJustificativa.Text, Ano, StrToInt('55'), StrToInt(edtserie.Text), ENInicial.AsInteger, ENFinal.AsInteger);
     End;

     Status := FNFSEletronica.ACBrNFe.WebServices.StatusServico.cStat;

     FNFSEletronica.Mensagens(Status);
  End;
  MessageBoxW(Handle, 'Inutilização Feita!', 'ATENÇÃO!', MB_OK + 
  MB_ICONINFORMATION);


  btnCancela.Click;
End;

procedure TFormInutilizaNew.ENInicialExit(Sender: TObject);
Begin
  If (btnFechar.Focused) Or (btnCancela.Focused) Then Begin
    Abort;
  End;

  If ENInicial.AsInteger <= 0 Then Begin
    Application.MessageBox('Nº. Inicial Deve Ser Maior que 0 (Zero).', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    ENInicial.SetFocus;
    Abort;
  End;

End;

procedure TFormInutilizaNew.btnCancelaClick(Sender: TObject);
Begin
  FNFSEletronica.lblStatusValidar.Caption := '';
  
  ENInicial.AsInteger := 0;
  ENFinal.AsInteger   := 0;

  MJustificativa.Clear;

  ENInicial.SetFocus;
End;

procedure TFormInutilizaNew.ENFinalExit(Sender: TObject);
Begin
  If (btnFechar.Focused) Or (btnCancela.Focused) Then Begin
    Abort;
  End;

  If ENFinal.AsInteger <= 0 Then Begin
    Application.MessageBox('Nº. Final Deve Ser Maior que 0 (Zero).', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    ENFinal.SetFocus;
    Abort;
  End;

  If ENFinal.AsInteger <> ENInicial.AsInteger Then Begin
    Application.MessageBox('Inutilização de Nota Fiscal Eletrônica Deve Ser Uma a Uma.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
    ENInicial.SetFocus;
    Abort;
  End;
End;

procedure TFormInutilizaNew.EDataEmissaoExit(Sender: TObject);
Begin
  If (btnFechar.Focused) Or (btnCancela.Focused) Then Begin
    Abort;
  End;

  If EDataEmissao.Text = '' Then Begin
     Application.MessageBox('Informe a Data de Emissão da NF-e.', 'A T E N Ç Ã O', MB_OK + MB_ICONQUESTION);
     EDataEmissao.SetFocus;
     Abort;
  End;
End;

End.
