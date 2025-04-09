unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    imgCashierSale: TImage;
    imgPDVSale: TImage;
    imgReportSale: TImage;
    imgrReturnStock: TImage;
    imgPurchaseStock: TImage;
    imgInventoryStock: TImage;
    imgRegister: TImage;
    imgGroupRegister: TImage;
    imgReturnRegister: TImage;
    imgrReturnSale: TImage;
    imgSale: TImage;
    imgSupplierRegister: TImage;
    imgStock: TImage;
    imgExit: TImage;
    imgProductRegister: TImage;
    imgReportStock: TImage;
    pnpCashierSale: TPanel;
    pnpMainSale: TPanel;
    pnpMainSaleContent: TPanel;
    pnpPDVSale: TPanel;
    pnpReportSale: TPanel;
    pnpReturnRegister: TPanel;
    pnpReturnStock: TPanel;
    pnpPurchaseStock: TPanel;
    pnpMainRegister: TPanel;
    pnpMainContent: TPanel;
    pnpMainStock: TPanel;
    pnpMainRegisterContent: TPanel;
    pnpMainStockContent: TPanel;
    pnpInventoryStock: TPanel;
    pnpRegister: TPanel;
    pnpGroupRegister: TPanel;
    pnpReturnSale: TPanel;
    pnpSales: TPanel;
    pnpSupplierRegister: TPanel;
    pnpStock: TPanel;
    pnpExit: TPanel;
    pnpMain: TPanel;
    pnpProductRegister: TPanel;
    pnpReportStock: TPanel;
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

