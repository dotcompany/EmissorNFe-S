unit UModulo;

interface

uses
  SysUtils, Classes, DB, FMTBcd, SqlExpr, Forms,
  Dialogs, Windows, IBDatabase, IniFiles, WideStrings;

type
  TModulo = class(TDataModule)
    SQLConexao: TSQLConnection;

    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConexaoBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public

   Servidor, RecDecimalVL, RecDecimalQT,codigofilial : String;

   RecDecimalVLNum : Integer;

   _CodPais, _CodRegiao, _CodEstado, _CodMunicipio : Integer;

   _CEP : String;

    { Public declarations }
  end;

var
  Modulo: TModulo;

implementation

{$R *.dfm}

{
  //  ConnHidra.LoadParamsFromIniFile(extractfilepath(application.exename)+'WindowsKey.ini');
    ConnHidra.Params.LoadFromFile(extractfilepath(application.exename)+'WindowsKey.txt');

    try

    if Frm_Login <> nil then
    begin

        if ( BancoInicial = '') then
        begin
          BancoInicial := ConnHidra.Params.Values['Database'];
        end;

        if Frm_Login.DBComboBox1.Text = '' then
        begin
          Frm_Login.DBComboBox1.Text := ConnHidra.Params.Values['Database'];
        end else
        begin
          ConnHidra.Params.Values['Database'] := Frm_Login.DBComboBox1.Text;
        end;
    end;

  except
  begin
  if BancoInicial <> ''  then  begin
  ConnHidra.Params.Values['Database'] := BancoInicial;
  end else begin
    ShowMessage( 'VOCÊ ESTÁ TENTANDO USAR UMA COPIA NAO LICENCIADA DO PROGRAMA , FAVOR ENTRAR EM CONTATO COM FONE: dotcompany@dotcompany.com.br OU PELO FONE (62) 3588-6040 \ (62) 3588-6044 Dot Company Sua empresa em suas mãos!' + #13#10 + 'E-MAIL.: Dotcompany@Dotcompany.com.br' );
    Application.Terminate;
  end;
  end;
  end;

}
procedure TModulo.DataModuleCreate(Sender: TObject);
Begin
  SQLConexao.LoginPrompt  := False; 
  SQLConexao.Connected    := False;
  SQLConexao.Params.Add('DriverName=Firebird                          ');
  SQLConexao.Params.Add('Database=C:\DotCompany\DB\banco.fdb          ');
  SQLConexao.Params.Add('RoleName=RoleName                            ');
  SQLConexao.Params.Add('User_Name=sysdba                             ');
  SQLConexao.Params.Add('Password=masterkey                           ');
  SQLConexao.Params.Add('ServerCharSet=                               ');
  SQLConexao.Params.Add('SQLDialect=3                                 ');
  SQLConexao.Params.Add('ErrorResourceFile=                           ');
  SQLConexao.Params.Add('LocaleCode=0000                              ');
  SQLConexao.Params.Add('BlobSize=-1                                  ');
  SQLConexao.Params.Add('CommitRetain=False                           ');
  SQLConexao.Params.Add('WaitOnLocks=True                             ');
  SQLConexao.Params.Add('IsolationLevel=ReadCommitted                 ');
  SQLConexao.Params.Add('Trim Char=False                              ');
  SQLConexao.Connected    := True;
End;
procedure TModulo.SQLConexaoBeforeConnect(Sender: TObject);
begin
 SQLConexao.Params.LoadFromFile(ExtractFilePath(Application.ExeName)+'WINDOWSKEY.TXT');  
end;

End.


