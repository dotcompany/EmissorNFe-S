object Modulo: TModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 491
  Width = 605
  object SQLConexao: TSQLConnection
    ConnectionName = 'Devart InterBase'
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida40.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartInterBase'
      'DataBase=C:\DotCompany\DB\oficina1.FDB'
      'RoleName='
      'User_Name=sysdba'
      'Password=masterkey'
      'SQLDialect=3'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommitted'
      'WaitOnLocks=True'
      'Charset='
      'CharLength=1'
      'EnableBCD=True'
      'OptimizedNumerics=True'
      'LongStrings=True'
      'UseQuoteChar=False'
      'FetchAll=False'
      'DeferredBlobRead=False'
      'DeferredArrayRead=False')
    VendorLib = 'gds32.DLL'
    BeforeConnect = SQLConexaoBeforeConnect
    Connected = True
    Left = 32
    Top = 16
  end
end
