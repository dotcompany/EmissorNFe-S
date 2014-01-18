{
  **********************************Manual de utilização***********************
  var
     arquivos_backup:array[0..1] of string;
  begin
    arquivos_backup[0] := 'C:\db\teste.txt';
    arquivos_backup[1] := 'C:\db\teste2.txt';
    EnviaBackupFtp('cnpj','status',arquivos_backup);
}
Unit UFtpBackup;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Db, Printers,IdFTP,
   IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL;
   Function EnviaBackupFtp(CNPJ_Empresa,Status : String;Arquivo_Caminho:array of string;Modo:string) : String;              //Envia Backup para o ftp
Var
   idftp: TIdFTP;
   IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;

Implementation

uses UFStatus, UFuncoes;


Function EnviaBackupFtp(CNPJ_Empresa,Status : String;Arquivo_Caminho:array of string;Modo:string) : String;
Var
    pasta:array[0..1] of string;
    i: Integer;
    arquivo_name:string;
    ftp: TIdFTP;
    cont:Integer;
    diretorio_Principal:string;
Begin
 FTP := TIdFTP.Create(nil);
//Conecta com o ftp
 If ( FStatus = nil ) Then
 FStatus                   := TFStatus.Create(Application);
 FStatus.lblStatus.Caption := 'Finalizando Dados da NFe...';
 FStatus.Show;
 FStatus.BringToFront;
 Application.ProcessMessages;

 Ftp.Disconnect;
 ftp.Host:= 'dotcompanyftp.no-ip.org';
 Ftp.Username:= 'dotcompany';
 ftp.Password:= 'reboot7901';
 Ftp.Connect;

 //Atribui o Diretorio do ftp onde sera feito os backups
 diretorio_Principal:='Backups_NFE';       //alterar
 //Entra no Diretorio do ftp onde sera feito os backups
 ftp.ChangeDir(diretorio_Principal);
 
 for cont := 0 to Length(Arquivo_Caminho)-1 do
  begin
    try

      Application.ProcessMessages;
     //Pega do Caminho o nome do arquivo
      arquivo_name := ExtractFileName(Arquivo_Caminho[cont]);
      arquivo_name := StringReplace(arquivo_name,'/','',[rfReplaceAll, rfIgnoreCase]);
      CNPJ_Empresa := LimpaString(CNPJ_Empresa);
      if(cont = 0) then
        begin

        //Recebe as pastas que serão criadas [empresa][status]
          pasta[0] := CNPJ_Empresa;
          pasta[1] := Status;

          //Da um loop para criar ou simplismente listar a pasta
          for I := 0 to Length(pasta)-1 do
            begin
                if(I = 1)then
                begin
                  if(Modo = '2 - HOMOLOGAÇÃO')then
                  begin
                     try
                      ftp.List('homologacao');
                      ftp.ChangeDir('homologacao');
                     except
                      ftp.MakeDir('homologacao');
                      ftp.ChangeDir('homologacao');
                     end;
                  end;
                end;
                try
                ftp.List(pasta[I]);
                ftp.ChangeDir(pasta[I]);
                except
                ftp.MakeDir(pasta[I]);
                ftp.ChangeDir(pasta[I]);
                end;
            end;

        end;
     //Deleta se o arquivo ja existir no ftp
     { try
          ftp.Delete(arquivo_name);
          except
      end;}

      //Copia o arquivo para o ftp ou apresenta o erro ao enviar
      try
        ftp.Put(Arquivo_Caminho[cont],arquivo_name,true);

        except on E: Exception do
          ShowMessage(E.ClassName+' erro gerado, com mesagem : '+E.Message);
      end;
    finally
    Ftp.Disconnect;
    If ( FStatus <> nil ) Then
    FStatus.Hide;
    FStatus.Close;
    end;
  end;
End;

End.

