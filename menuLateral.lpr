program menuLateral;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, frmMain, frmGroupRegister, frmProductRegister
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, main);
  Application.CreateForm(TfrmGroup, frmGroup);
  Application.CreateForm(TfrmProduct, frmProduct);
  Application.Run;
end.

