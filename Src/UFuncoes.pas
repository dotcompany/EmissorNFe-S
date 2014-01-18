Unit UFuncoes;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Db, Printers;

Function  Is4DigitYear: Boolean;                                                //Verifica se o ano tem 4 d�gitos ou n�o
Function  EnDecryptString(StrValue: String; Chave: Word): String;               //Criptografa Chaves
Function  Before(Const Search, Find: String): String;                           //Retorna uma cadeia de caracteres antecedentes a uma parte da string selecionada
Function  Alltrim(Const Search: String): String;                                //Remove os espa�os em branco de ambos os lados da string
Function  AjustaStr(Str: String; Tam: Integer): String;                         //Usado para arquivos texto com tamanho fixo
function  AjustaStrZero ( str: String; tam: Integer ): String;
function  AjustaStrEspaco( str: String; tam: Integer ): String;
function  AjustaStrZeroEsq( str: String; tam: Integer ): String;
Function  RemoveChar(Const Texto: String): String;                              //Remove caracteres de uma string deixando apenas numeros
Function  After(Const Search, Find: String): String;                            //Retorna uma cadeia de caracteres ap�s a parte da string selecionada
Function  Padr(S: String; N: Integer): String;                                  //Alinha uma string � direita
Function  BuscaTroca(Text, Busca, Troca: String): String;                       //Substitui um caractere dentro da string
Function  CompletaPontos(Texto: String; Tamanho: Integer): String;              //Completa a String com Pontos
Function  RemoveAcento(Str: String): String;                                    //Retirando acentos de uma string
Function  ValidCPF(Const S: String): Boolean;                                   //Validador CNPJ
Function  ValidCNPJ(Const S: String): Boolean;                                  //Validador CPF
Function  Replicate(Caracter: String; Quant: Integer): String;                  //Repete o mesmo caractere v�rias vezes}
Function  Empty(Char: String): Boolean;                                         //Testa se uma linha de texto est� vazia ou n�o
Function  RoundNum(Valor: Extended; Decimais: Integer): Extended;               //Quando houver,Arredonda uma possivel terceira casa decimal em uma vari�vel
Function  ChecaEstado(Dado: String): boolean;                                   //Checa se o Simbolo da UF � Valido
Function  AnoBiSexto(Ayear: Integer): Boolean;                                  //Como saber se o ano � bisexto
Function  Data(Const V: String): Boolean;                                       //Validador de Datas
Function  MontaDigitoVerificador(S: String): Integer;                           //Monta Digito Verificador para Plano de Contas
Function  CorrentPrinter: String;                                               //Retorna a impressora padr�o do windows <<Requer a unit printers declarada na clausula uses da unit>.
Function  DifDias(DataVenc: TDateTime; DataAtual: TDateTime): String;           //Retorna a diferenca de dias entre duas datas
Function  StrZeroBanco(Zeros: String; Quant: integer): String;
Function  ZeroEsquerda(Const I: integer; Const Casas: byte): String;
Function  TiraEspacos(Texto: String): String;
Function  VirgPont(Loc: String): String;
Function  BuscaDireita(Busca, Text: String): integer;
Function  FormataCGCCPF(CGCCPF, Tipo : String): String;
Function  FormataCEP(CEP : String): String;
Function  LimpaString(ATexto: String):String;
Function  ValidaPis(Dado : String) : boolean;
Function  SoNumero(Texto : String) : String;
Function  IsDigit(Texto : String) : Boolean;
Function  NomeComputador : String;
Function  FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;    //Obter a data do primeiro dia util do m�s
Function  ProximoDiaUtil (dData : TDateTime) : TDateTime;                       //Obter o pr�ximo dia util do m�s
Function  FormataFone(Fone, Area : String) : String;                            // Formata uma cadeia de strings numericos em formato de numero de telefone
Procedure EntreDatas(DataFinal, DataInicial: TDate; Var Anos, Meses, Dias: Integer);
Function  TrataRetLogger(VLRet: Integer): String;
Procedure SetDefaultPrinter(PrinterName: String);
function splitstr(valor, caracter: string; index: integer): string;

Var
   DigitoPTudo: Integer;

Implementation

Function ZeroEsquerda(Const I: integer; Const Casas: byte): String;
Var
   Ch: Char;
Begin
   Result := IntToStr(I);

   If Length(Result) > Casas Then Begin
      Ch := '*';
      Result := '';
   End
   Else
      Ch := '0';

   While Length(Result) < Casas Do
      Result := Ch + Result;
End;

Function StrZeroBanco(Zeros: String; Quant: integer): String;
Var
   I, Tamanho: integer;
   aux: String;
Begin
   aux := zeros;

   Tamanho := length(ZEROS);

   ZEROS := '';

   For I := 1 To quant - tamanho Do
      ZEROS := ZEROS + '0';

   aux := zeros + aux;

   StrZeroBanco := aux;
End;

Function DifDias(DataVenc: TDateTime; DataAtual: TDateTime): String;
Var
   Data: TDateTime;
   dia, mes, ano: Word;
Begin
   Data := DataAtual - DataVenc;

   DecodeDate(Data, ano, mes, dia);

   Result := FloatToStr(Data);
End;

Function CorrentPrinter: String;
Var
   Device: Array[0..255] Of char;
   Driver: Array[0..255] Of char;
   Port: Array[0..255] Of char;
   hDMode: THandle;
Begin
   Printer.GetPrinter(Device, Driver, Port, hDMode);

   Result := Device;
End;

Function MontaDigitoVerificador(S: String): Integer;
Var
   TotAux, PesoAux, I, DigiAux: Integer;

   RecDigito: String;
Begin
   PesoAux := 2;
   TotAux := 0;

   For I := 0 To (Length(S) - 1) Do Begin
      TotAux := TotAux + (StrToInt(Copy(S, Length(S) - I, 1)) * PesoAux);

      Inc(PesoAux);
   End;

   DigiAux := 11 - (TotAux Mod 11);

   If DigiAux > 0 Then Begin
      RecDigito := Copy(IntToStr(DigiAux), 1, 1);
   End Else Begin
      RecDigito := '0';
   End;

   DigitoPTudo := StrToInt(RecDigito);
End;

Function Data(Const V: String): Boolean;
Begin
   Try
      StrToDate(v);
      Result := true;
   Except
      Result := false;
   End;
End;

Function AnoBiSexto(Ayear: Integer): Boolean;
Begin
   Result := (AYear Mod 4 = 0) And
      ((AYear Mod 100 <> 0) Or (AYear Mod 400 = 0));
End;

Function ChecaEstado(Dado: String): boolean;
Const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
Var
   Posicao: integer;
Begin
   Result := true;

   If Dado <> '' Then Begin
      Posicao := Pos(UpperCase(Dado), Estados);

      If (Posicao = 0) Or ((Posicao Mod 2) = 0) Then Begin
         Result := false;
      End;
   End;
End;

Function RoundNum(Valor: Extended; Decimais: Integer): Extended;
Var
   I: Integer;

   Multiplicador: Integer;

   _ValorModificado: Double;
Begin
   If Decimais > 15 Then Begin
      Decimais := 15;
   End
   Else If Decimais < 0 Then Begin
      Decimais := 0;
   End;

   Multiplicador := 1;

   For I := 1 To Decimais Do Begin
      Multiplicador := Multiplicador * 10;
   End;

   _ValorModificado := StrToFloat(FormatFloat('0.00', (round(Valor * Multiplicador) / Multiplicador)));

   Result := _ValorModificado;
End;

Function EMPTY(Char: String): Boolean;
Var
   index: Byte;
Begin
   index := 1;
   Empty := True;
   While (index <= Length(Char)) And (index <> 0) Do Begin
      If Char[index] = ' ' Then Begin
         inc(index)
      End
      Else Begin
         Empty := False;
         index := 0
      End;
   End;
End;

Function Replicate(Caracter: String; Quant: Integer): String;
Var
   I: Integer;
Begin
   Result := '';
   For I := 1 To Quant Do
      Result := Result + Caracter;
End;

Function REPETE(Char: String; Size: Integer): String;
Var
   x: String;
   i: Integer;
Begin
   x := '';
   For i := 1 To Size Do Begin
      x := x + Char;
   End;

   Result := x;
End;

Function ValidCNPJ(Const S: String): Boolean;
Var
   aDig: Array[1..14] Of Byte;

   i, Resto: Byte;
   DV1, DV2: Byte;
   Total1, Total2: Integer;
Begin
   result := FALSE;

   If Length((s)) = 14 Then Begin
      For i := 1 To 14 Do Try
            aDig[i] := StrToInt(s[i]);
         Except
            aDig[i] := 0;
         End;

      Total1 := aDig[1] * 5 + aDig[2] * 4 + aDig[3] * 3 + aDig[4] * 2 +
         aDig[5] * 9 + aDig[6] * 8 + aDig[7] * 7 + aDig[8] * 6 +
         aDig[9] * 5 + aDig[10] * 4 + aDig[11] * 3 + aDig[12] * 2;

      Resto := Total1 Mod 11;

      If Resto > 1 Then
         DV1 := 11 - Resto
      Else
         DV1 := 0;

      Total2 := aDig[1] * 6 + aDig[2] * 5 + aDig[3] * 4 + aDig[4] * 3 +
         aDig[5] * 2 + aDig[6] * 9 + aDig[7] * 8 + aDig[8] * 7 +
         aDig[9] * 6 + aDig[10] * 5 + aDig[11] * 4 + aDig[12] * 3 + DV1 * 2;
      Resto := Total2 Mod 11;

      If Resto > 1 Then
         DV2 := 11 - Resto
      Else
         DV2 := 0;

      If (DV1 = aDig[13]) And (DV2 = aDig[14]) Then
         result := TRUE;
   End;
End;

Function ValidCPF(Const S: String): Boolean;
Var
   i, Numero, Resto: Byte;
   DV1, DV2: Byte;
   Total, Soma: Integer;
Begin
   result := FALSE;

   If length((s)) = 11 Then Begin
      Total := 0;
      Soma := 0;
      For i := 1 To 9 Do Begin
         Try
            Numero := StrToInt(s[i]);
         Except
            Numero := 0;
         End;

         Total := Total + (Numero * (11 - i));
         Soma := Soma + Numero;
      End;

      Resto := Total Mod 11;
      If Resto > 1 Then
         DV1 := 11 - Resto
      Else
         DV1 := 0;

      Total := Total + Soma + 2 * DV1;
      Resto := Total Mod 11;
      If Resto > 1 Then
         DV2 := 11 - Resto
      Else
         DV2 := 0;

      If (IntToStr(DV1) = s[10]) And (IntToStr(DV2) = s[11]) Then
         result := TRUE;
   End;
End;

Function CompletaPontos(Texto: String; Tamanho: Integer): String;
Var
   i: Integer;
Begin
   Result := Texto;

   If Tamanho = (Length(Texto) + 1) Then Begin
      Result := Result + ':';
   End
   Else If Tamanho > (Length(Texto) + 1) Then Begin

      For i := Length(Texto) To (Tamanho - 2) Do Begin
         Result := Result + '.';
      End;

      Result := Result + ':';
   End;
End;

Function Is4DigitYear: Boolean; //Verifica se o ano tem 4 d�gitos ou n�o
Begin
   Result := (Pos('yyyy', ShortDateFormat) > 0);
End;

Function EnDecryptString(StrValue: String; Chave: Word): String; //Criptografa Chaves
Var
   I: Integer;
   OutValue: String;
Begin
   OutValue := '';

   For I := 1 To Length(StrValue) Do
      OutValue := OutValue + Char(Not (ord(StrValue[I]) - Chave));

   Result := OutValue;
End;

Function Before(Const Search, Find: String): String; //Retorna uma cadeia de caracteres antecedentes a uma parte da string selecionada
Const
   BlackSpace = [#33..#126];
Var
   Index: byte;
Begin
   Index := Pos(Find, Search);

   If Index = 0 Then
      Result := Search
   Else
      Result := Copy(Search, 1, Index - 1);
End;

Function After(Const Search, Find: String): String; //Retorna uma cadeia de caracteres ap�s a parte da string selecionada
Var
   index: byte;
Begin
   index := Pos(Find, Search);

   If index = 0 Then Begin
      Result := '';
   End
   Else Begin
      Result := Copy(Search, index + Length(Find), 255);
   End;
End;

Function Alltrim(Const Search: String): String; {Remove os espa�os em branco de ambos os lados da string}
Const
   BlackSpace = [#33..#126];
Var
   Index: byte;
Begin
   Index := 1;

   While (Index <= Length(Search)) And Not (Search[Index] In BlackSpace) Do Begin
      Index := Index + 1;
   End;

   Result := Copy(Search, Index, 255);
   Index := Length(Result);

   While (Index > 0) And Not (Result[Index] In BlackSpace) Do Begin
      Index := Index - 1;
   End;

   Result := Copy(Result, 1, Index);
End;

Function AjustaStr(Str: String; Tam: Integer): String; //Usado para arquivos texto com tamanho fixo
Begin
   While Length(str) < tam Do
      str := str + ' ';

   If Length(str) > tam Then
      str := Copy(str, 1, tam);

   Result := str;
End;

Function RemoveChar(Const Texto: String): String; //Remove caracteres de uma string deixando apenas numeros
Var
   I: Integer;
   S: String;
Begin
   S := '';

   For I := 1 To Length(Texto) Do Begin

      If (Texto[I] In ['0'..'9']) Then Begin
         S := S + Copy(Texto, I, 1);
      End;
   End;

   Result := S;
End;

Function Padr(S: String; N: Integer): String; //Alinha uma string � direita
Begin
   Result := Format('%' + IntToStr(n) + '.' + IntToStr(n) + 's', [s]);
End;

Function BuscaTroca(Text, Busca, Troca: String): String; //Substitui um caractere dentro da string
Var
   n: integer;
Begin
   For n := 1 To Length(Text) Do Begin

      If Copy(Text, n, 1) = Busca Then Begin
         Delete(Text, n, 1);
         Insert(Troca, Text, n);
      End;
   End;

   Result := Text;
End;

Function RemoveAcento(Str: String): String; //Retirando acentos de uma string
Const
   ComAcento = '����������������������������';
   SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
   X: Integer;
Begin
   For X := 1 To Length(Str) Do

      If Pos(Str[x], ComAcento) <> 0 Then

         Str[x] := SemAcento[Pos(Str[x], ComAcento)];

   Result := Str;
End;

Function TrataRetLogger(VLRet: Integer): String;
Begin
   Case VLRet Of
      0:     Result := 'Retorno OK.';
      1:     Result := 'N�o foi poss�vel alocar mais mem�ria.';
      2:     Result := 'Mem�ria RAM foi corrompida.';
      1000:  Result := 'Mem�ria Fiscal foi desconectada.';
      1001:  Result := 'Erro de leitura na Mem�ria Fiscal.';
      1002:  Result := 'Mem�ria est� setada apenas para leitura.';
      1003:  Result := 'Registro fora dos padr�es (erro interno).';
      1004:  Result := 'Mem�ria Fiscal est� lotada.';
      1005:  Result := 'N�mero m�ximo de cartuchos excedidos.';
      1006:  Result := 'Tentativa de gravar novo modelo de ECF.';
      1007:  Result := 'Tentativa de grava��o de qualquer dado antes da inicializa��o da Mem�ria Fiscal.';
      1008:  Result := 'N�mero m�ximo de usu�rios foi atingido.';
      1009:  Result := 'N�mero m�ximo de interven��es foi atingido.';
      1010:  Result := 'N�mero m�ximo de vers�es foi atingido.';
      1011:  Result := 'N�mero m�ximo de redu��es foi atingido.';
      1012:  Result := 'Erro na grava��o de registro na mem�ria fiscal.';
      2000:  Result := 'Erro de leitura no dispositivo f�sico.';
      2001:  Result := 'Erro de leitura no dispositivo.';
      2002:  Result := 'Dispositivo de transa��es foi desconectado.';
      3000:  Result := 'Tipo de registro a ser gravado inv�lido.';
      3001:  Result := 'Registro de transa��es est� esgotado.';
      3002:  Result := 'Tentativa de abrir nova transa��o com transa��o j� aberta.';
      3003:  Result := 'Tentativa de fechar uma transa��o que n�o se encontrava.';
      4000:  Result := 'Erro de leitura no dispositivo f�sico.';
      4001:  Result := 'Erro de escrita no dispositivo.';
      4002:  Result := 'Dispositivo de contexto foi desconectado.';
      4003:  Result := 'Leitura ap�s final do arquivo.';
      4004:  Result := 'Escrita ap�s final do arquivo.';
      5000:  Result := 'Vers�o de contexto fiscal no dispositivo n�o foi reconhecida.';
      5001:  Result := 'CRC do dispositivo est� incorreto.';
      5002:  Result := 'Tentativa de escrita fora da �rea de contexto.';
      6000:  Result := 'Rel�gio do ECF inconsistente.';
      6001:  Result := 'Data/hora informadas n�o est�o consistentes.';
      7000:  Result := 'Nenhum mecanismo de impress�o presente.';
      7001:  Result := 'Atual mecanismo de impress�o est� desconectado.';
      7002:  Result := 'Mecanismo n�o possui capacidade suficiente para realizar esta opera��o.';
      7003:  Result := 'Impressora est� sem papel para imprimir.';
      7004:  Result := 'Faltou papel durante a impress�o do comando.';
      8000:  Result := 'Comando fora de seq��ncia.';
      8001:  Result := 'C�digo mercadoria n�o v�lido.';
      8002:  Result := 'Descri��o inv�lida.';
      8003:  Result := 'Quantidade inv�lida.';
      8004:  Result := '�ndice da al�quota n�o v�lido.';
      8005:  Result := 'Al�quota n�o carregada.';
      8006:  Result := 'Valor cont�m caracter inv�lido.';
      8007:  Result := 'Total da opera��o igual a 0 (zero).';
      8008:  Result := 'Al�quota n�o dispon�vel para carga.';
      8009:  Result := 'Valor da al�quota n�o v�lido.';
      8010:  Result := 'Troca de situa��o tribut�ria somente ap�s Redu��o Z.';
      8011:  Result := '�ndice do Meio de Pagamento n�o v�lido.';
      8012:  Result := 'Meio de Pagamento indispon�vel para carga.';
      8013:  Result := 'Cupom totalizado em 0 (zero).';
      8014:  Result := 'Meio de Pagamento n�o definido.';
      8015:  Result := 'Carga de usu�rio permitido somente ap�s Redu��o Z.';
      8016:  Result := 'Dia sem movimento.';
      8017:  Result := 'Total pago inferior ao total do cupom.';
      8018:  Result := 'Gerencial n�o definido.';
      8019:  Result := '�ndice do Gerencial fora da faixa.';
      8020:  Result := 'Gerencial n�o dispon�vel para carga.';
      8021:  Result := 'Nome do Gerencial inv�lido.';
      8022:  Result := 'Esgotado n�mero de Gerenciais.';
      8023:  Result := 'Acerto do hor�rio de ver�o somente ap�s a Redu��o Z.';
      8024:  Result := 'J� acertou hor�rio de ver�o.';
      8025:  Result := 'Sem Al�quotas dispon�veis para carga.';
      8026:  Result := 'Item n�o vendido no cupom.';
      8027:  Result := 'Quantidade a ser cancelada maior do que a quantidade vendida.';
      8028:  Result := 'Cabe�alho possui campo(s) inv�lido(s).';
      8029:  Result := 'Nome do Departamento n�o v�lido.';
      8030:  Result := 'Departamento n�o encontrado.';
      8031:  Result := 'Departamento n�o definido.';
      8032:  Result := 'N�o h� Meio de Pagamento dispon�vel.';
      8033:  Result := 'Altera��o de Meio de Pagamento somente ap�s a Redu��o Z.';
      8034:  Result := 'Nome do Documento N�o Fiscal n�o pode ser vazio.';
      8035:  Result := 'N�o h� mais Documentos N�o Fiscais dispon�veis.';
      8036:  Result := 'Documento N�o Fiscal indispon�vel para carga.';
      8037:  Result := 'N�mero da redu��o inicial inv�lida.';
      8038:  Result := 'Cabe�alho do documento j� foi impresso.';
      8039:  Result := 'N�mero m�ximo de linhas de propaganda excedidas.';
      8040:  Result := 'Rel�gio j� est� no estado desejado.';
      8041:  Result := 'Valor do acr�scimo inconsistente.';
      8042:  Result := 'N�o h� meio de pagamento definido.';
      8043:  Result := 'COO do documento vinculado inv�lido.';
      8044:  Result := '�ndice do item inexistente no contexto.';
      8045:  Result := 'C�digo de item n�o encontrado no cupom atual.';
      8046:  Result := 'Percentual do desconto ultrapassou 100%.';
      8047:  Result := 'Desconto do item inv�lido.';
      8048:  Result := 'Falta definir valor percentual ou absoluto em opera��o de desconto/acr�scimo.';
      8049:  Result := 'Tentativa de opera��o sobre item cancelado.';
      8050:  Result := 'Cancelamento de acr�scimo/desconto inv�lidos.';
      8051:  Result := 'Opera��o de acr�scimo/desconto inv�lida.';
      8052:  Result := 'N�mero de Departamentos esgotados.';
      8053:  Result := '�ndice de Documento N�o Fiscal fora da faixa.';
      8054:  Result := 'Troca de Documento N�o Fiscal somente ap�s a Redu��o Z.';
      8055:  Result := 'CNPJ e/ou Inscri��o Estadual inv�lida(s).';
      8056:  Result := 'Falta(m) par�metro(s) no comando de abertura de Comprovante Cr�dito ou D�bito.';
      8057:  Result := 'C�digo e Nome do Documento N�o Fiscal indefinidos.';
      8058:  Result := 'Al�quota n�o definida no comando de venda.';
      8059:  Result := 'C�digo e Nome do Meio de Pagamento n�o definidos.';
      8060:  Result := 'Par�metro de comando n�o informado.';
      8061:  Result := 'N�o h� Documentos N�o Fiscais definidos.';
      8062:  Result := 'Acr�scimo/Desconto de item j� cancelado.';
      8063:  Result := 'N�o h� acr�scimo/desconto em item.';
      8064:  Result := 'Item j� possui acr�scimo.';
      8065:  Result := 'Opera��o de acr�scimo em item ou subtotal s� � valido para ICMS.';
      8066:  Result := 'Valor do Comprovante Cr�dito ou D�bito n�o informado.';
      8067:  Result := 'COO inv�lido.';
      8068:  Result := '�ndice do Meio de Pagamento no cupom inv�lido.';
      8069:  Result := 'Documento N�o Fiscal n�o encontrado.';
      8070:  Result := 'Seq��ncia de pagamento n�o encontrada no cupom.';
      8071:  Result := 'Meio de pagamento n�o permite CDC.';
      8072:  Result := 'Valor insuficiente para pagar o cupom.';
      8073:  Result := 'Meio de pagamento origem ou destino n�o encontrado no �ltimo cupom emitido.';
      8074:  Result := 'Valor do estorno n�o pode exceder o valor do pagamento no meio origem.';
      8075:  Result := 'Meios de pagamento origem e destino devem ser diferentes no estorno.';
      8076:  Result := 'Percentual da al�quota inv�lido.';
      8077:  Result := 'N�o houve opera��o em subtotal para ser cancelada.';
      8078:  Result := 'S� � permitida uma opera��o de acr�scimo em subtotal por cupom.';
      8079:  Result := 'Texto adicional do meio de pagamento deve ter no m�ximo 2 linhas.';
      8080:  Result := 'Pre�o unit�rio ultrapassou o n�mero m�ximo de d�gitos permitido.';
      8081:  Result := 'C�digo do departamento fora da faixa.';
      8082:  Result := 'O valor do desconto n�o pode zerar o valo do cupom ou ser maior que o item.';
      8083:  Result := 'Percentual de acr�scimo n�o pode ser superior a 999,99%.';
      8084:  Result := 'Valor do acr�scimo ultrapassa o n�mero m�ximo de d�gitos permitido (13 d�gitos).';
      8085:  Result := 'Cupom sem venda em al�quota de ICMS.';
      8086:  Result := 'Cancelamento inv�lido.';
      8087:  Result := 'Texto de cliche do usu�rio deve ter no m�ximo tr�s linhas.';
      8088:  Result := 'N�o houve venda de item n�o fiscal.';
      8089:  Result := 'A data n�o pode ser inferior a data do �ltimo documento emitido.';
      8090:  Result := 'A hora informada no comando n�o pode ser inferior ao hor�rio do �ltimo documento.';
      8091:  Result := 'Sem fun��o.';
      8092:  Result := 'Estado inv�lido para ajuste de relogio ou hor�rio de ver�o.';
      8093:  Result := 'A opera��o de CDC deve preceder as opera��es de estorno de meio de pagamento.';
      8094:  Result := 'Senha inv�lida para inicializa��o do propriet�rio.';
      8095:  Result := 'Erro gerado pelo mecanismo de cheques.';
      8096:  Result := 'Comando v�lido somente ap�s a abertura do dia.';
      9000:  Result := 'N�o foi encontrado nenhum cartucho de dados vazio para ser inicializado.';
      9001:  Result := 'Cartucho com o n�mero de s�rie informado n�o foi encontrado.';
      9002:  Result := 'N�mero de s�rie do ECF � inv�lido na inicializa��o.';
      9003:  Result := 'Cartucho de MFD desconectado ou com problemas.';
      9004:  Result := 'Erro de escrita no dispositivo de MFD.';
      9005:  Result := 'Erro na tentativa de posicionar ponteiro de leitura.';
      9006:  Result := 'Endere�o do Bad Sector informado � inv�lido.';
      9007:  Result := 'Erro de leitura na MFD.';
      9008:  Result := 'Tentativa de leitura al�m dos limites da MFD.';
      9009:  Result := 'MFD n�o possui mais espa�o para escrita.';
      9010:  Result := 'Leitura da MFD serial � interrompida por comando diferente de LeImpress�o.';
      10000: Result := 'Estado inv�lido para registro sendo codificado.';
      10001: Result := 'Inconsist�ncia nos par�metros lidos no Logger.';
      10002: Result := 'Registro inv�lido detectado no Logger.';
      10003: Result := 'Erro interno.';
      11000: Result := 'Par�metro repassado ao comando � inv�lido.';
      11001: Result := 'Erro de sintaxe na lista de par�metros.';
      11002: Result := 'Valor inv�lido para par�metro do comando.';
      11003: Result := 'String cont�m seq��ncia de caracteres inv�lidos.';
      11004: Result := 'Par�metro foi declarado 2 ou mais vezes na lista.';
      11005: Result := 'Par�metro obrigat�rio ausente na lista.';
      11006: Result := 'N�o existe o comando no protocolo.';
      11007: Result := 'Estado atual n�o permite a execu��o deste comando.';
      11008: Result := 'Sinaliza��o indicando que comando aborta a impress�o da segunda via.';
      11009: Result := 'Sinaliza��o indicando que comando n�o possui retorno.';
      11010: Result := 'Tempo de execu��o esgotado.';
      11011: Result := 'Nome de registrador inv�lido.';
      11012: Result := 'Tipo de registrador inv�lido.';
      11013: Result := 'Tentativa de escrita em registrador de apenas leitura.';
      11014: Result := 'Tentativa de leitura em registrador de apenas escrita.';
      11015: Result := 'Comando recebido diferente do anterior no buffer de recep��o.';
      11016: Result := 'Fila de comandos cheia.';
      11017: Result := '�ndice de registrador indexado fora dos limites.';
      11018: Result := 'N�mero de emiss�es do Logger foi excedido na Interven��o T�cnica.';
      11019: Result := 'Divis�o por 0 (zero) nas rotinas de BDC.';
      15001: Result := 'Comando aceito apenas em modo de Intervencao T�cnica.';
      15002: Result := 'Comando n�o pode ser executado em modo de Interven��o T�cnica.';
      15003: Result := 'J� existe MFD presente neste ECF.';
      15004: Result := 'N�o existe MFD neste ECF.';
      15005: Result := 'Mem�ria RAM do ECF n�o est� consistente.';
      15006: Result := 'Mem�ria fiscal n�o encontrada.';
      15007: Result := 'Dia j� Fechado.';
      15008: Result := 'Dia aberto.';
      15009: Result := 'Falta reducao Z.';
      15010: Result := 'Mecanismo impressor n�o selecionado.';
      15011: Result := 'Sem bobina de papel na esta��o de documento fiscal.';
      15012: Result := 'Tentativa de finalizar documento j� encerrado.';
      15013: Result := 'N�o h� sinal de DTR.';
      15014: Result := 'Sem inscri��es do usu�rio no ECF.';
      15015: Result := 'Sem dados do propriet�rio no ECF.';
      15016: Result := 'ECF encontra-se indevidamente em linha.';
      15017: Result := 'ECF n�o encontra-se em linha para executar o comando.';
   End;
End;

Procedure SetDefaultPrinter(PrinterName: String);
Var
   I : Integer;

   Device: PChar;

   Driver: Pchar;

   Port: Pchar;

   HdeviceMode: Thandle;

   aPrinter: TPrinter;
Begin
   Printer.PrinterIndex := -1;

   getmem(Device, 255);

   getmem(Driver, 255);

   getmem(Port, 255);

   aPrinter := TPrinter.create;

   For I := 0 To Printer.printers.Count - 1 Do Begin

      If Printer.printers[i] = PrinterName Then Begin

         aprinter.printerindex := i;

         aPrinter.getprinter(device, driver, port, HdeviceMode);

         StrCat(Device, ',');

         StrCat(Device, Driver);

         StrCat(Device, Port);

         WriteProfileString('windows', 'device', Device);

         StrCopy(Device, 'windows');

         SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device));
      End;
   End;

   Freemem(Device, 255);

   Freemem(Driver, 255);

   Freemem(Port, 255);

   aPrinter.Free;
End;

Function TiraEspacos(Texto: String): String;
Var
   I: Integer;
Begin
   I := length(Texto) + 1;
   While True Do Begin
      Dec(I);
      If I <= 0 Then
         break;
      If Texto[I] <> #32 Then
         break;
   End;
   Result := Copy(Texto, 1, I);
End;

Function VirgPont(Loc: String): String;
Var
   i: Integer;
   Valor: String;
   Letra: String;
   Palavra: String;
   Erro: Boolean;
Begin
   Erro := False;
   Letra := ' ';
   Palavra := ' ';
   Valor := '';

   For i := 1 To Length(Loc) Do Begin
      Letra := Copy(Loc, i, 1);

      If letra = ',' Then Begin
         letra := '.';
      End;

      If Erro Then Begin
         Continue;
      End;
      Palavra := Palavra + Letra;
   End;

   Result := Palavra;
End;

Function BuscaDireita(Busca, Text: String): integer;
Var
   n, retorno: integer;
Begin
   retorno := 0;

   For n := length(Text) Downto 1 Do Begin

      If Copy(Text, n, 1) = Busca Then Begin
         retorno := n;
         break;
      End;
   End;

   Result := retorno;
End;

Function FormataCEP(CEP : String): String;
Begin
  Result := Copy(CEP,1,2) + '.' + Copy(CEP,3,3) + '-' + Copy(CEP,6,3);
End;

Function FormataCGCCPF(CGCCPF, Tipo : String): String;
Begin
   If Tipo = 'J' Then Begin
      Result := Copy(CGCCPF,1,2) + '.' + Copy(CGCCPF,3,3) + '.' + Copy(CGCCPF,6,3) + '/' + Copy(CGCCPF,9,4) + '-' + Copy(CGCCPF,13,2);
   End;

   If Tipo = 'F' Then Begin
      Result := Copy(CGCCPF,1,3) + '.' + Copy(CGCCPF,4,3) + '.' + Copy(CGCCPF,7,3) + '-' + Copy(CGCCPF,10,2);
   End;
End;

Function LimpaString(ATexto: String):String;
Var
  I : Integer;
  s : string;
Begin
  S := '';

  For I := 1 To Length(ATexto) Do
    If (ATexto[I] in ['0'..'9']) Then
      S := S + Copy(ATexto, I, 1);

  Result := S;
End;

Function ValidaPis(Dado : String) : boolean;
Var
   I, wsoma, Wm11, Wdv,wdigito : Integer;
Begin
   if AllTrim(Dado) <> '' Then begin
     wdv := strtoint(copy(Dado, 11, 1));
     wsoma := 0;
     wm11 := 2;

     for i := 1 to 10 do begin
         wsoma := wsoma + (wm11 *strtoint(copy(Dado,11 - I, 1)));

         if wm11 < 9 then begin
            wm11 := wm11+1
         end
         else begin
            wm11 := 2;
         end;
     end;

     wdigito := 11 - (wsoma MOD 11);

     if wdigito > 9 then begin

        wdigito := 0;
     end;

     if wdv = wdigito then begin

        validapis := true;
     end
     else begin

        validapis := false;
     end;
   end;
End;

Function IsDigit(Texto: String): boolean;
Begin
  Result := true;

  Try
    StrToInt(Texto);
  Except
    Result := false;
  End;
End;

Function SoNumero(Texto : String) : String;
Var
  Ind    : Integer;
  TmpRet : String;
Begin

  TmpRet := '';

  For Ind := 1 To Length(Texto) Do Begin
    If IsDigit(Copy(Texto,Ind,1)) Then Begin
      TmpRet := TmpRet + Copy(Texto, Ind, 1);
    End;
  End;

  Result := TmpRet;
End;

Function NomeComputador : String;
Var
  lpBuffer : PChar;
  nSize    : DWord;

const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
Begin
  nSize    := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
End;

Procedure EntreDatas(DataFinal, DataInicial: TDate; Var Anos, Meses, Dias: Integer);
  Function Calcula(Periodo: Integer): Integer;

  Var
    IntCont : Integer;

  Begin

    IntCont := 0;

    Repeat

      Inc(IntCont);

      DataFinal := IncMonth(DataFinal, Periodo * -1);

    Until DataFinal < DataInicial;

    DataFinal := IncMonth(DataFinal, Periodo);

    Inc(IntCont, -1);

    Result := IntCont;

  End;
Begin

  If DataFinal <= DataInicial Then Begin

    Anos  := 0;
    Meses := 0;
    Dias  := 0;

    Exit;

  End;

  Anos  := Calcula(12);
  Meses := Calcula(1);
  Dias  := Round(DataFinal - DataInicial);
End;

Function FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;
Var
  Ano, Mes, Dia : word;
  DiaDaSemana : Integer;
Begin
  DecodeDate (Data, Ano, Mes, Dia);
  Dia := 1;

  If lSabDom Then Begin
    DiaDaSemana := DayOfWeek (Data);

    If DiaDaSemana = 1 Then
      Dia := 2
    Else
      If DiaDaSemana = 7 Then
        Dia := 3;
  End;

  FirstDayOfMonth := EncodeDate (Ano, Mes, Dia);
End;

Function ProximoDiaUtil (dData : TDateTime) : TDateTime;
Begin
  If DayOfWeek(dData) = 7 Then
    dData := dData + 2
    Else
      If DayOfWeek(dData) = 1 Then
        dData := dData + 1;

    ProximoDiaUtil := dData;
End;


Function FormataFone(Fone, Area : String) : String;
Var
  DDD, Prefixo, Numero, Telefone, Caracter : String;
  Ind, Estado : Integer;
Begin
  Ind      := 1;
  DDD      := '';
  Prefixo  := '';
  Numero   := '';
  Estado   := -1;
  Telefone := '';

  While Ind <= Length(Fone) Do Begin
    Caracter := Copy(Fone, Ind, 1);

    If Caracter = '(' Then Begin
      Estado := 0;
    End Else
    Begin
      If Caracter = ')' Then Begin

        If Estado = 0 Then Begin
          Estado := 1;
        End;
      End Else
      Begin
        If Caracter = '-' Then Begin
          If Estado = 1 Then Begin
            Estado := 2;
          End;
        End;
      End;
    End;
    Case Estado Of
    0 : DDD     := DDD + Caracter;
    1 : Prefixo := Prefixo + Caracter;
    2 : Numero  := Numero + Caracter;
    End;

    Ind := Ind + 1;
  End;

  If Estado = -1 Then Begin
    Telefone := Fone;

    If Length(Telefone) = 11 Then Begin
      Result := '(' + Copy(Telefone, 1, 3)+') ' + Copy(Telefone, 4, 4) + '-' + Copy(Telefone, 8, 4);
    End Else
    Begin
      If Length(Telefone) = 7 Then Begin
        Result := '(' + Area + ') ' + Copy(Telefone, 1, 3) + '-' + Copy(Telefone, 4, 4)
      End
      Else
      Begin
        Result := Fone;
      End;
    End;
  End Else
  Begin
    If Length(DDD) = 0 Then Begin
      DDD := Area;
    End;

    If Length(Numero) = 0 Then Begin
      Result := '(' + DDD + ') ' + Prefixo
    End Else Begin
      Result := '(' + DDD + ') ' + Prefixo + '-' + Numero;
    End;
  End;
End;
function splitstr(valor, caracter: string; index: integer): string;
var
anterior,i,contador:integer;
begin
contador:=0;

for i:=0 to length(valor) do
begin
try
if valor[i]=caracter then
begin
if (contador = index-1) then
begin
result:=copy(valor,anterior+1,i-anterior-1);
exit;
end;
anterior:=i;
inc(contador,1);
end;

if i=length(valor) then
begin
result:=copy(valor,anterior+1,i-anterior);
exit;
end;

if index=1 then
begin
result:=copy(valor,0,pos(caracter,valor)-1);
exit;
end;
except
end;
end;

end;

function AjustaStrZero ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + '0';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;
function AjustaStrEspaco ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;
function AjustaStrZeroEsq ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := '0'+str; 
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;

End.

