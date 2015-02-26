program Sistemas;

uses
  Forms,
  UFPrincipal in '..\Src\UFPrincipal.pas' {FPrincipal},
  UModulo in '..\Src\UModulo.pas' {Modulo: TDataModule},
  UFuncoes in '..\Src\UFuncoes.pas',
  UFNFSEletronica in '..\Src\UFNFSEletronica.pas' {FNFSEletronica},
  UFStatus in '..\Src\UFStatus.pas' {FStatus},
  UGeradorChaveNFe in '..\Src\UGeradorChaveNFe.pas',
  UFNFSCancelamento in '..\Src\UFNFSCancelamento.pas' {FNFSCancelamento},
  UFormInutilizaNew in '..\Src\UFormInutilizaNew.pas' {FormInutilizaNew},
  UFtpBackup in '..\Src\UFtpBackup.pas',
  UXMLBackup in '..\Src\UXMLBackup.pas',
  uVerificaUpdate in '..\Src\uVerificaUpdate.pas',
  UFCartaCorrecao in '..\Src\UFCartaCorrecao.pas' {frmCartaCorrecao},
  UConst in '..\Src\UConst.pas';

// VMXCCePrint in '..\Src\VMXCCePrint.pas';

{$R *.res}

Begin
  Application.Initialize;

  Application.Title := 'NFe';
  AApplication.CreateForm(TFPrincipal, FPrincipal);
  pplication.Run;
End.



