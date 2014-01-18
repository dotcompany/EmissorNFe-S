unit UXMLBackup;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Db, Printers,IdFTP,
   IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
   IdIOHandlerStack, IdSSL, IdSSLOpenSSL,ShellAPI, ShlObj;
   Function BackupXML():STRING;              //Envia Backup para o ftp
   function BrowseDialog(const Title: string; const Flag: integer): string;
Var
   idftp: TIdFTP;
   IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
Implementation

uses UFStatus, UFuncoes, UFNFSEletronica;

Function BackupXML():string;
Var
    count : Integer;
    pasta : string;
    pasta_destino: string;
    filename : string;
    backup : Integer;
    erros : Integer;
Begin
     count := 0;
     backup := 0;
     erros := 0;
     if(not FNFSEletronica.RxNotaFiscal.IsEmpty)then
      begin
      pasta :=  BrowseDialog('Selecione a pasta  onde será salvo os arquivos .XML',BIF_RETURNONLYFSDIRS);
      if(pasta <> '')then
        begin
         FNFSEletronica.RxNotaFiscal.First;
         while not FNFSEletronica.RxNotaFiscal.Eof do
           begin
            filename := ExtractFileName(FNFSEletronica.RxNotaFiscalCAMINHO_XML.AsString);
            pasta_destino := pasta+'\'+filename;
            if not CopyFile(PChar(FNFSEletronica.RxNotaFiscalCAMINHO_XML.AsString), PChar(pasta_destino), true) then
            begin
              erros := erros +1;
            end
            else
            begin
              backup := backup +1;
            end;
            count := count +1;
            FNFSEletronica.RxNotaFiscal.Next;
           end;
           ShowMessage('Foram feito backup de: '+IntToStr(backup)+' arquivos. Ocorreu erro ao fazer backup em: '+IntToStr(erros)+' arquivos');
        End;
      end
     else
     begin
      ShowMessage('Não há notas listadas. Por favor, liste-as antes de fazer o backup!');
     end;
End;


function BrowseDialog(const Title: string; const Flag: integer): string;
{
  **********************************Manual de utilização***********************
  Exemplo:  BrowseDialog(Titulo,Flag);
  Flags:
  BIF_RETURNONLYFSDIRS   = Mostra pastas
  BIF_BROWSEINCLUDEFILES = Mostra pastas e arquivos
  BIF_BROWSEFORCOMPUTER  = Mostra Computadores
  BIF_BROWSEFORPRINTER   = Mostra Impressoras
}
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result:='';
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  with BrowseInfo do begin
    hwndOwner := Application.Handle;
    pszDisplayName := DisplayName;
    lpszTitle := PChar(Title);
    ulFlags := Flag;
  end;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;
End.


