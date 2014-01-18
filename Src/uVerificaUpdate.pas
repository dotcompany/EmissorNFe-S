unit UVerificaUpdate;

interface

uses
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP;

type
  TUpdate = class
  private
    { private declarations }
    FTP: TIdFTP;
    FFileName: String;
    FDirectory: String;
    FPassWord: String;
    FHost: String;
    FUserName: String;
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
    destructor Destroy;override;
    function Update:Boolean;virtual;
    function Validate: Boolean;Virtual;
  published
    { published declarations }
    property Host: String read FHost write FHost;
    property UserName: String read FUserName write FUserName;
    property PassWord: String read FPassWord write FPassWord;
    property Directory: String read FDirectory write FDirectory;
    property FileName: String read FFileName write FFileName;
  end;


implementation

uses
  SysUtils, Dialogs, IdFTPList, Forms, Controls, Windows, Messages;

{ TUpdate }

constructor TUpdate.Create;
begin
  FTP := TIdFTP.Create(nil);
end;

destructor TUpdate.Destroy;
begin
  FreeAndNil(FTP);
  inherited;
end;

function TUpdate.Update: Boolean;
var
  I: Integer;
begin
  if Validate then
  begin
    try
      FTP.Host     := FHost;
      FTP.Username := FUserName;
      FTP.Password := FPassWord;
      try
        FTP.Connect;
      except
        MessageDlg('Erro ao Conectar no FTP.'+#13+'Entre em contato com o TI',mtWarning,[mbOK],0);
        Exit;
      end;
      FTP.List;
      FTP.ChangeDir(Directory);
      FTP.List;
      if FileDateToDateTime(FileAge(ExtractFilePath(Application.ExeName)+FileName)) <
         FTP.FileDate(FileName) then
      begin

          WinExec('UpdaterNFE.exe',SW_SHOWNORMAL);
      end;

    finally
      FTP.Disconnect;
    end;
  end;
end;

function TUpdate.Validate: Boolean;
begin
  if FHost = EmptyStr then raise Exception.Create('O Host deve ser informado!!!');
  if FUserName = EmptyStr then raise Exception.Create('O Nome do Usuario deve ser informado!!!');
  if FPassWord = EmptyStr then raise Exception.Create('A Senha deve ser informada!!!');
  if FDirectory = EmptyStr then raise Exception.Create('O Diretório deve ser informado!!!');
  if FFileName = EmptyStr then raise Exception.Create('O Nome do Arquivo deve ser informado!!!');
  Result := True;
end;

end.


















