unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    imgExitRegister1: TImage;
    imgGroupRegister1: TImage;
    imgProductRegister1: TImage;
    imgRegister: TImage;
    imgGroupRegister: TImage;
    imgExitRegister: TImage;
    imgSale: TImage;
    imgSupplierRegister: TImage;
    imgStock: TImage;
    imgExit: TImage;
    imgProductRegister: TImage;
    imgSupplierRegister1: TImage;
    pnpExitRegister: TPanel;
    pnpExitRegister1: TPanel;
    pnpGroupRegister1: TPanel;
    pnpMainRegister: TPanel;
    pnpMainContent: TPanel;
    pnpMainStock: TPanel;
    pnpMainRegisterContent: TPanel;
    pnpMainRegisterContent1: TPanel;
    pnpProductRegister1: TPanel;
    pnpRegister: TPanel;
    pnpGroupRegister: TPanel;
    pnpSales: TPanel;
    pnpSupplierRegister: TPanel;
    pnpStock: TPanel;
    pnpExit: TPanel;
    pnpMain: TPanel;
    pnpProductRegister: TPanel;
    pnpSupplierRegister1: TPanel;
    pnpTitle: TPanel;

    procedure pnpMouseEnter(Sender: TObject);
    procedure pnpMouseLeave(Sender: TObject);
  private

  public

  end;

var
  main: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.pnpMouseEnter(Sender: TObject);
begin
  if Sender is TPanel then
    (Sender as TPanel).Color := RGBToColor(43, 162, 182);
end;

procedure TfrmMain.pnpMouseLeave(Sender: TObject);
begin
  if Sender is TPanel then
    (Sender as TPanel).ParentColor := True;
end;

end.

