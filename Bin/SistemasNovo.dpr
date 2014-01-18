program SistemasNovo;

uses
  Forms,
  UFPrincipal in '..\Src\UFPrincipal.pas' {FPrincipal},
  UModulo in '..\Src\UModulo.pas' {Modulo: TDataModule},
  UFuncoes in '..\Src\UFuncoes.pas',
  UFNFSEletronica in '..\Src\UFNFSEletronica.pas' {FNFSEletronica},
  UFStatus in '..\Src\UFStatus.pas' {FStatus},
  UGeradorChaveNFe in '..\Src\UGeradorChaveNFe.pas',
  UFNFSCancelamento in '..\Src\UFNFSCancelamento.pas' {FNFSCancelamento},
  UFormInutilizaNew in '..\Src\UFormInutilizaNew.pas' {FormInutilizaNew};

{$R *.res}

Begin
  Application.Initialize;

  Application.Title := 'NFe';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
End.



