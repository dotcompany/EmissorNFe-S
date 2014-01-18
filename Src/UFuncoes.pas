Unit UFuncoes;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Db, Printers;

Function  Is4DigitYear: Boolean;                                                //Verifica se o ano tem 4 dígitos ou não
Function  EnDecryptString(StrValue: String; Chave: Word): String;               //Criptografa Chaves
Function  Before(Const Search, Find: String): String;                           //Retorna uma cadeia de caracteres antecedentes a uma parte da string selecionada
Function  Alltrim(Const Search: String): String;                                //Remove os espaços em branco de ambos os lados da string
Function  AjustaStr(Str: String; Tam: Integer): String;                         //Usado para arquivos texto com tamanho fixo
function  AjustaStrZero ( str: String; tam: Integer ): String;
function  AjustaStrEspaco( str: String; tam: Integer ): String;
function  AjustaStrZeroEsq( str: String; tam: Integer ): String;
Function  RemoveChar(Const Texto: String): String;                              //Remove caracteres de uma string deixando apenas numeros
Function  After(Const Search, Find: String): String;                            //Retorna uma cadeia de caracteres após a parte da string selecionada
Function  Padr(S: String; N: Integer): String;                                  //Alinha uma string à direita
Function  BuscaTroca(Text, Busca, Troca: String): String;                       //Substitui um caractere dentro da string
Function  CompletaPontos(Texto: String; Tamanho: Integer): String;              //Completa a String com Pontos
Function  RemoveAcento(Str: String): String;                                    //Retirando acentos de uma string
Function  ValidCPF(Const S: String): Boolean;                                   //Validador CNPJ
Function  ValidCNPJ(Const S: String): Boolean;                                  //Validador CPF
Function  Replicate(Caracter: String; Quant: Integer): String;                  //Repete o mesmo caractere várias vezes}
Function  Empty(Char: String): Boolean;                                         //Testa se uma linha de texto está vazia ou não
Function  RoundNum(Valor: Extended; Decimais: Integer): Extended;               //Quando houver,Arredonda uma possivel terceira casa decimal em uma variável
Function  ChecaEstado(Dado: String): boolean;                                   //Checa se o Simbolo da UF é Valido
Function  AnoBiSexto(Ayear: Integer): Boolean;                                  //Como saber se o ano é bisexto
Function  Data(Const V: String): Boolean;                                       //Validador de Datas
Function  MontaDigitoVerificador(S: String): Integer;                           //Monta Digito Verificador para Plano de Contas
Function  CorrentPrinter: String;                                               //Retorna a impressora padrão do windows <<Requer a unit printers declarada na clausula uses da unit>.
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
Function  FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;    //Obter a data do primeiro dia util do mês
Function  ProximoDiaUtil (dData : TDateTime) : TDateTime;                       //Obter o próximo dia util do mês
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

Function Is4DigitYear: Boolean; //Verifica se o ano tem 4 dígitos ou não
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

Function After(Const Search, Find: String): String; //Retorna uma cadeia de caracteres após a parte da string selecionada
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

Function Alltrim(Const Search: String): String; {Remove os espaços em branco de ambos os lados da string}
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

Function Padr(S: String; N: Integer): String; //Alinha uma string à direita
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
   ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
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
      1:     Result := 'Não foi possível alocar mais memória.';
      2:     Result := 'Memória RAM foi corrompida.';
      1000:  Result := 'Memória Fiscal foi desconectada.';
      1001:  Result := 'Erro de leitura na Memória Fiscal.';
      1002:  Result := 'Memória está setada apenas para leitura.';
      1003:  Result := 'Registro fora dos padrões (erro interno).';
      1004:  Result := 'Memória Fiscal está lotada.';
      1005:  Result := 'Número máximo de cartuchos excedidos.';
      1006:  Result := 'Tentativa de gravar novo modelo de ECF.';
      1007:  Result := 'Tentativa de gravação de qualquer dado antes da inicialização da Memória Fiscal.';
      1008:  Result := 'Número máximo de usuários foi atingido.';
      1009:  Result := 'Número máximo de intervenções foi atingido.';
      1010:  Result := 'Número máximo de versões foi atingido.';
      1011:  Result := 'Número máximo de reduções foi atingido.';
      1012:  Result := 'Erro na gravação de registro na memória fiscal.';
      2000:  Result := 'Erro de leitura no dispositivo físico.';
      2001:  Result := 'Erro de leitura no dispositivo.';
      2002:  Result := 'Dispositivo de transações foi desconectado.';
      3000:  Result := 'Tipo de registro a ser gravado inválido.';
      3001:  Result := 'Registro de transações está esgotado.';
      3002:  Result := 'Tentativa de abrir nova transação com transação já aberta.';
      3003:  Result := 'Tentativa de fechar uma transação que não se encontrava.';
      4000:  Result := 'Erro de leitura no dispositivo físico.';
      4001:  Result := 'Erro de escrita no dispositivo.';
      4002:  Result := 'Dispositivo de contexto foi desconectado.';
      4003:  Result := 'Leitura após final do arquivo.';
      4004:  Result := 'Escrita após final do arquivo.';
      5000:  Result := 'Versão de contexto fiscal no dispositivo não foi reconhecida.';
      5001:  Result := 'CRC do dispositivo está incorreto.';
      5002:  Result := 'Tentativa de escrita fora da área de contexto.';
      6000:  Result := 'Relógio do ECF inconsistente.';
      6001:  Result := 'Data/hora informadas não estão consistentes.';
      7000:  Result := 'Nenhum mecanismo de impressão presente.';
      7001:  Result := 'Atual mecanismo de impressão está desconectado.';
      7002:  Result := 'Mecanismo não possui capacidade suficiente para realizar esta operação.';
      7003:  Result := 'Impressora está sem papel para imprimir.';
      7004:  Result := 'Faltou papel durante a impressão do comando.';
      8000:  Result := 'Comando fora de seqüência.';
      8001:  Result := 'Código mercadoria não válido.';
      8002:  Result := 'Descrição inválida.';
      8003:  Result := 'Quantidade inválida.';
      8004:  Result := 'Índice da alíquota não válido.';
      8005:  Result := 'Alíquota não carregada.';
      8006:  Result := 'Valor contém caracter inválido.';
      8007:  Result := 'Total da operação igual a 0 (zero).';
      8008:  Result := 'Alíquota não disponível para carga.';
      8009:  Result := 'Valor da alíquota não válido.';
      8010:  Result := 'Troca de situação tributária somente após Redução Z.';
      8011:  Result := 'Índice do Meio de Pagamento não válido.';
      8012:  Result := 'Meio de Pagamento indisponível para carga.';
      8013:  Result := 'Cupom totalizado em 0 (zero).';
      8014:  Result := 'Meio de Pagamento não definido.';
      8015:  Result := 'Carga de usuário permitido somente após Redução Z.';
      8016:  Result := 'Dia sem movimento.';
      8017:  Result := 'Total pago inferior ao total do cupom.';
      8018:  Result := 'Gerencial não definido.';
      8019:  Result := 'Índice do Gerencial fora da faixa.';
      8020:  Result := 'Gerencial não disponível para carga.';
      8021:  Result := 'Nome do Gerencial inválido.';
      8022:  Result := 'Esgotado número de Gerenciais.';
      8023:  Result := 'Acerto do horário de verão somente após a Redução Z.';
      8024:  Result := 'Já acertou horário de verão.';
      8025:  Result := 'Sem Alíquotas disponíveis para carga.';
      8026:  Result := 'Item não vendido no cupom.';
      8027:  Result := 'Quantidade a ser cancelada maior do que a quantidade vendida.';
      8028:  Result := 'Cabeçalho possui campo(s) inválido(s).';
      8029:  Result := 'Nome do Departamento não válido.';
      8030:  Result := 'Departamento não encontrado.';
      8031:  Result := 'Departamento não definido.';
      8032:  Result := 'Não há Meio de Pagamento disponível.';
      8033:  Result := 'Alteração de Meio de Pagamento somente após a Redução Z.';
      8034:  Result := 'Nome do Documento Não Fiscal não pode ser vazio.';
      8035:  Result := 'Não há mais Documentos Não Fiscais disponíveis.';
      8036:  Result := 'Documento Não Fiscal indisponível para carga.';
      8037:  Result := 'Número da redução inicial inválida.';
      8038:  Result := 'Cabeçalho do documento já foi impresso.';
      8039:  Result := 'Número máximo de linhas de propaganda excedidas.';
      8040:  Result := 'Relógio já está no estado desejado.';
      8041:  Result := 'Valor do acréscimo inconsistente.';
      8042:  Result := 'Não há meio de pagamento definido.';
      8043:  Result := 'COO do documento vinculado inválido.';
      8044:  Result := 'Índice do item inexistente no contexto.';
      8045:  Result := 'Código de item não encontrado no cupom atual.';
      8046:  Result := 'Percentual do desconto ultrapassou 100%.';
      8047:  Result := 'Desconto do item inválido.';
      8048:  Result := 'Falta definir valor percentual ou absoluto em operação de desconto/acréscimo.';
      8049:  Result := 'Tentativa de operação sobre item cancelado.';
      8050:  Result := 'Cancelamento de acréscimo/desconto inválidos.';
      8051:  Result := 'Operação de acréscimo/desconto inválida.';
      8052:  Result := 'Número de Departamentos esgotados.';
      8053:  Result := 'Índice de Documento Não Fiscal fora da faixa.';
      8054:  Result := 'Troca de Documento Não Fiscal somente após a Redução Z.';
      8055:  Result := 'CNPJ e/ou Inscrição Estadual inválida(s).';
      8056:  Result := 'Falta(m) parâmetro(s) no comando de abertura de Comprovante Crédito ou Débito.';
      8057:  Result := 'Código e Nome do Documento Não Fiscal indefinidos.';
      8058:  Result := 'Alíquota não definida no comando de venda.';
      8059:  Result := 'Código e Nome do Meio de Pagamento não definidos.';
      8060:  Result := 'Parâmetro de comando não informado.';
      8061:  Result := 'Não há Documentos Não Fiscais definidos.';
      8062:  Result := 'Acréscimo/Desconto de item já cancelado.';
      8063:  Result := 'Não há acréscimo/desconto em item.';
      8064:  Result := 'Item já possui acréscimo.';
      8065:  Result := 'Operação de acréscimo em item ou subtotal só é valido para ICMS.';
      8066:  Result := 'Valor do Comprovante Crédito ou Débito não informado.';
      8067:  Result := 'COO inválido.';
      8068:  Result := 'Índice do Meio de Pagamento no cupom inválido.';
      8069:  Result := 'Documento Não Fiscal não encontrado.';
      8070:  Result := 'Seqüência de pagamento não encontrada no cupom.';
      8071:  Result := 'Meio de pagamento não permite CDC.';
      8072:  Result := 'Valor insuficiente para pagar o cupom.';
      8073:  Result := 'Meio de pagamento origem ou destino não encontrado no último cupom emitido.';
      8074:  Result := 'Valor do estorno não pode exceder o valor do pagamento no meio origem.';
      8075:  Result := 'Meios de pagamento origem e destino devem ser diferentes no estorno.';
      8076:  Result := 'Percentual da alíquota inválido.';
      8077:  Result := 'Não houve operação em subtotal para ser cancelada.';
      8078:  Result := 'Só é permitida uma operação de acréscimo em subtotal por cupom.';
      8079:  Result := 'Texto adicional do meio de pagamento deve ter no máximo 2 linhas.';
      8080:  Result := 'Preço unitário ultrapassou o número máximo de dígitos permitido.';
      8081:  Result := 'Código do departamento fora da faixa.';
      8082:  Result := 'O valor do desconto não pode zerar o valo do cupom ou ser maior que o item.';
      8083:  Result := 'Percentual de acréscimo não pode ser superior a 999,99%.';
      8084:  Result := 'Valor do acréscimo ultrapassa o número máximo de dígitos permitido (13 dígitos).';
      8085:  Result := 'Cupom sem venda em alíquota de ICMS.';
      8086:  Result := 'Cancelamento inválido.';
      8087:  Result := 'Texto de cliche do usuário deve ter no máximo três linhas.';
      8088:  Result := 'Não houve venda de item não fiscal.';
      8089:  Result := 'A data não pode ser inferior a data do último documento emitido.';
      8090:  Result := 'A hora informada no comando não pode ser inferior ao horário do último documento.';
      8091:  Result := 'Sem função.';
      8092:  Result := 'Estado inválido para ajuste de relogio ou horário de verão.';
      8093:  Result := 'A operação de CDC deve preceder as operações de estorno de meio de pagamento.';
      8094:  Result := 'Senha inválida para inicialização do proprietário.';
      8095:  Result := 'Erro gerado pelo mecanismo de cheques.';
      8096:  Result := 'Comando válido somente após a abertura do dia.';
      9000:  Result := 'Não foi encontrado nenhum cartucho de dados vazio para ser inicializado.';
      9001:  Result := 'Cartucho com o número de série informado não foi encontrado.';
      9002:  Result := 'Número de série do ECF é inválido na inicialização.';
      9003:  Result := 'Cartucho de MFD desconectado ou com problemas.';
      9004:  Result := 'Erro de escrita no dispositivo de MFD.';
      9005:  Result := 'Erro na tentativa de posicionar ponteiro de leitura.';
      9006:  Result := 'Endereço do Bad Sector informado é inválido.';
      9007:  Result := 'Erro de leitura na MFD.';
      9008:  Result := 'Tentativa de leitura além dos limites da MFD.';
      9009:  Result := 'MFD não possui mais espaço para escrita.';
      9010:  Result := 'Leitura da MFD serial é interrompida por comando diferente de LeImpressão.';
      10000: Result := 'Estado inválido para registro sendo codificado.';
      10001: Result := 'Inconsistência nos parâmetros lidos no Logger.';
      10002: Result := 'Registro inválido detectado no Logger.';
      10003: Result := 'Erro interno.';
      11000: Result := 'Parâmetro repassado ao comando é inválido.';
      11001: Result := 'Erro de sintaxe na lista de parâmetros.';
      11002: Result := 'Valor inválido para parâmetro do comando.';
      11003: Result := 'String contém seqüência de caracteres inválidos.';
      11004: Result := 'Parâmetro foi declarado 2 ou mais vezes na lista.';
      11005: Result := 'Parâmetro obrigatório ausente na lista.';
      11006: Result := 'Não existe o comando no protocolo.';
      11007: Result := 'Estado atual não permite a execução deste comando.';
      11008: Result := 'Sinalização indicando que comando aborta a impressão da segunda via.';
      11009: Result := 'Sinalização indicando que comando não possui retorno.';
      11010: Result := 'Tempo de execução esgotado.';
      11011: Result := 'Nome de registrador inválido.';
      11012: Result := 'Tipo de registrador inválido.';
      11013: Result := 'Tentativa de escrita em registrador de apenas leitura.';
      11014: Result := 'Tentativa de leitura em registrador de apenas escrita.';
      11015: Result := 'Comando recebido diferente do anterior no buffer de recepção.';
      11016: Result := 'Fila de comandos cheia.';
      11017: Result := 'Índice de registrador indexado fora dos limites.';
      11018: Result := 'Número de emissões do Logger foi excedido na Intervenção Técnica.';
      11019: Result := 'Divisão por 0 (zero) nas rotinas de BDC.';
      15001: Result := 'Comando aceito apenas em modo de Intervencao Técnica.';
      15002: Result := 'Comando não pode ser executado em modo de Intervenção Técnica.';
      15003: Result := 'Já existe MFD presente neste ECF.';
      15004: Result := 'Não existe MFD neste ECF.';
      15005: Result := 'Memória RAM do ECF não está consistente.';
      15006: Result := 'Memória fiscal não encontrada.';
      15007: Result := 'Dia já Fechado.';
      15008: Result := 'Dia aberto.';
      15009: Result := 'Falta reducao Z.';
      15010: Result := 'Mecanismo impressor não selecionado.';
      15011: Result := 'Sem bobina de papel na estação de documento fiscal.';
      15012: Result := 'Tentativa de finalizar documento já encerrado.';
      15013: Result := 'Não há sinal de DTR.';
      15014: Result := 'Sem inscrições do usuário no ECF.';
      15015: Result := 'Sem dados do proprietário no ECF.';
      15016: Result := 'ECF encontra-se indevidamente em linha.';
      15017: Result := 'ECF não encontra-se em linha para executar o comando.';
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

