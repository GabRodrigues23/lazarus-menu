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
  Forms, zcomponent, frmMain, frmGroupRegister, frmProductRegister,
  frmSupplierRegister, dbDocument
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, main);
  Application.CreateForm(TfrmGroup, frmGroup);
  Application.CreateForm(TfrmProduct, frmProduct);
  Application.CreateForm(TfrmSupplier, frmSupplier);
  Application.CreateForm(TdbDocumentController, DocumentController);
  Application.Run;
end.

