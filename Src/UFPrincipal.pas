Unit UFPrincipal;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, 
   ImgList, ToolWin, StdCtrls, DBGrids, Typinfo, 
   IniFiles, Mask,
    JvExMask, JvBaseEdits,  JvSpin, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

Type
   TFPrincipal = Class(TForm)
    StBar: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ImageList1: TImageList;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    Button1: TButton;
    Edit1: TJvSpinEdit;

    procedure GravaIni(Codigo: String);
    procedure LeIni(var aTexto: string);
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure ApplicationEventsMessage(var Msg : tagMSG; var Handled : Boolean);
    procedure ColorControl(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);

   private
      { Private declarations }
   public
      { Public declarations }
   End;

Var
   FPrincipal: TFPrincipal;

Implementation

uses
  UModulo, UFNFSEletronica, UVerificaUpdate;

{$R *.dfm}

procedure TFPrincipal.ApplicationEventsMessage(var Msg : tagMSG; var Handled : Boolean);
var i : SmallInt;
begin
   if (Screen.ActiveControl is TDBGrid) then begin

      with TDBGrid(ActiveControl) do begin

        if Msg.message = WM_MOUSEWHEEL then begin

           Msg.message := WM_KEYDOWN;

           Msg.lParam := 0;

           i := HiWord(Msg.wParam);

           if i > 0 then
              Msg.wParam := VK_UP
           else
              Msg.wParam := VK_DOWN;

           Handled := False;
        end;
      end;
   end;
end;

procedure AtribuiProp(Comp: TComponent; Const PropName: string; Val: string);
var PInfo: PPropInfo;
begin
  PInfo := GetPropInfo(Comp.ClassInfo, PropName);

  if PInfo <> nil then begin

     case PInfo^.Proptype^.Kind of
       tkInteger: SetOrdProp(Comp, PInfo, StrToInt(Val));
       tkChar, tkWChar: SetOrdProp(Comp, PInfo, ord(Val[1]));
       tkEnumeration: SetOrdProp(Comp, PInfo, GetEnumValue(PInfo^.PropType^, Val));
       tkFloat: SetFloatProp(Comp, PInfo, StrToFloat(Val));
       tkString, tkLString, tkWString: SetStrProp(Comp, PInfo, Val);
       tkVariant: SetVariantProp(Comp, PInfo, Val);
       tkInt64: SetInt64Prop(Comp, PInfo, StrToInt64(Val));
     else
        ShowMessage('Este tipo não é suportado por este programa');
     end;
  end
  else begin
     ShowMessage('Propriedade não achada');
  end;
end;

procedure TFPrincipal.ColorControl(Sender: TObject);
var Cor : TColor; I : Integer;
begin
   With Screen.ActiveForm do begin
     for I:= 0 to ComponentCount -1 do begin

       if Components[I] is TCustomEdit then begin

          if (Components[I] as TCustomEdit).Focused then
             Cor := $00A6D2A7
          else
             Cor := clWindow;

          AtribuiProp(Components[I], 'Color', IntToStr(Cor));
       end;
     end;
   end;
end;

Procedure TFPrincipal.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  Action := caFree;
End;

procedure TFPrincipal.FormShow(Sender: TObject);
Var
  aTexto : String;
Begin

  LeIni(aTexto);

  ShortDateFormat := 'dd/MM/yyyy';

    FNFSEletronica := TFNFSEletronica.Create(Application);

  Try
    FNFSEletronica.ShowModal;
  Finally
    FreeAndNil(FNFSEletronica);
  End;

End;

procedure TFPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
Begin
  If key = #27 Then Begin
    ModalResult := mrcancel;
  End;
End;

procedure TFPrincipal.FormCreate(Sender: TObject);
Begin

 //if FindWindow(Nil, 'Versão 12.5 Emissor de NF-e.') > 2 then
 // begin
 // ShowMessage('O programa está sendo executado');
 //    WinExec('TaskKill -f -im Sistemas.exe', SW_HIDE);
//
//
//  end;


   Try
      Application.CreateForm(TModulo,         Modulo);
   Except
      ShowMessage('Ocorreu um erro ao conectar-se ao banco.');
      Application.Terminate;
   End;

  Modulo.SQLConexao.Connected := True;
End;

procedure TFPrincipal.GravaIni(Codigo: String);
Var
  ArqIni : TIniFile;
Begin
  ArqIni := TIniFile.Create('C:\dotcompany\Empresa.Ini');

  Try
    ArqIni.WriteString('Empresa', 'CodEmpresa', Codigo);
  Finally
    ArqIni.Free;
  End;
End;

procedure TFPrincipal.LeIni(var aTexto: string);
Var
  ArqIni: TIniFile;
Begin
  ArqIni := TIniFile.Create('C:\dotcompany\Empresa.Ini');

  Try
    aTexto := ArqIni.ReadString('Empresa', 'CodEmpresa', aTexto);

    Edit1.Text := aTexto;

  Finally
    ArqIni.Free;
  End;
End;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  GravaIni('1');
end;

procedure TFPrincipal.ToolButton15Click(Sender: TObject);
Begin
  FNFSEletronica := TFNFSEletronica.Create(Application);

  Try
    FNFSEletronica.ShowModal;
  Finally
    FreeAndNil(FNFSEletronica);
  End;
End;

procedure TFPrincipal.ToolButton2Click(Sender: TObject);
Begin
  Application.Terminate;
End;

End.

