unit UGeradorChaveNFe;

interface

  function GerarChave_(var chave: AnsiString; const codigoUF: integer; codigoNumerico: integer;
  const modelo, serie, numero, tpemi: integer; const emissao: TDateTime; const CNPJ: string): boolean;

implementation

Uses SysUtils;

Function SomenteNumeros(Const S: String) : String;
Var
  I : Integer;
Begin
  Result := '';

  For I := 1 To Length(S) Do

    If Pos(S[I], '0123456789') > 0 Then
      Result := Result + S[I];
End;

Function GerarDigito(Var Digito: Integer; Chave : String) : Boolean;
Var
  I, J : Integer;
Const
  PESO = '4329876543298765432987654329876543298765432';
Begin
  // Manual Integracao Contribuinte v2.02a - Página: 70 //
  Chave  := SomenteNumeros(Chave);
  J      := 0;
  Digito := 0;
  Result := True;

  Try
    For I := 1 To 43 Do
      J      := J + StrToInt(Copy(Chave, I, 1)) * StrToInt(Copy(PESO, i, 1));
      Digito := 11 - (J Mod 11);

    If (J Mod 11) < 2 Then
      Digito := 0;
  Except
    Result := False;
  End;

  If Length(Chave) <> 43 Then
    Result := False;
End;

Function IntToStrZero(Const Numero : Integer; Const Tamanho : Integer) : String;
Begin
  Result := StringOfChar('0', Tamanho) + IntToStr(Numero);
  Result := Copy(Result, Length(result) - Tamanho + 1, Tamanho);
End;

Function GerarCodigoNumerico(numero: integer): integer;
var
  s: string;
  i, j, k: integer;
begin
  // Essa função gera um código numerico atravéz de calculos realizados sobre o parametro numero
  s := intToStr(numero);
  for i := 1 to 9 do
    s := s + intToStr(numero);
  for i := 1 to 9 do
  begin
    k := 0;
    for j := 1 to 9 do
      k := k + StrToInt(s[j]) * (j + 1);
    s := IntToStr((k mod 11)) + s;
  end;
  Result := StrToInt(copy(s, 1, 9));
end;

function GerarChave_(var chave: AnsiString; const codigoUF: integer; codigoNumerico: integer;
  const modelo, serie, numero, tpemi: integer; const emissao: TDateTime; const CNPJ: string): boolean;
var
  digito: integer;
  wAno, wMes, wDia: Word;
begin
  result := true;
  try
    // Se o usuario informar 0; o código numerico sera gerado de maneira aleatória //
    while codigoNumerico = 0 do
    begin
      Randomize;
      codigoNumerico := Random(99999999);
    end;
    // se o usuario informar -1 o código numerico será gerado atravéz da função
    // GerarCódigoNumerico baseado no numero do documento fiscal.
    if codigoNumerico = -1 then
      codigoNumerico := GerarCodigoNumerico(Numero);
    //
    DecodeDate(emissao, wAno, wMes, wDia);
    chave := 
      IntToStrZero(codigoUF, 2) +
      Copy(FormatFloat('0000', wAno), 3, 2) +
      FormatFloat('00', wMes) +
      copy(SomenteNumeros(CNPJ) + '00000000000000', 1, 14) +
      IntToStrZero(modelo, 2) +
      IntToStrZero(serie, 3) +
      IntToStrZero(Numero, 9) +
      IntToStrZero(TPEmi, 1) +
      IntToStrZero(codigoNumerico, 8);
    GerarDigito(digito, chave);
    chave := chave + IntToStr(digito);
  except
    chave := '';
    result := false;
    exit;
  end;
end;


end.
