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
    pnpMainSales: TPanel;
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

    procedure pnpRegisterClick(Sender: TObject);
    procedure pnpSalesClick(Sender: TObject);
    procedure pnpStockClick(Sender: TObject);

    procedure pnpExitClick(Sender: TObject);
    procedure pnpReturnRegisterClick(Sender: TObject);
    procedure pnpReturnSaleClick(Sender: TObject);
    procedure pnpReturnStockClick(Sender: TObject);

    procedure pnpGroupRegisterClick(Sender: TObject);
    procedure pnpProductRegisterclick(Sender: TObject);

  private
    procedure SelectMenu(nMENU: integer);
  public

  end;

var
  main: TfrmMain;

implementation
  uses frmGroupRegister, frmProductRegister;

{$R *.lfm}

{ TfrmMain }

{Main Menu}
// Change Menu Value
procedure TfrmMain.pnpRegisterClick(Sender: TObject); // Register Menu
begin
  SelectMenu(1);
end;

procedure TfrmMain.pnpStockClick(Sender: TObject); // Stock Menu
begin
  SelectMenu(2);
end;

procedure TfrmMain.pnpSalesClick(Sender: TObject); // Sales Menu
begin
  SelectMenu(3);
end;

procedure TfrmMain.pnpExitClick(Sender: TObject); // Main Exit
begin
  Application.Terminate;
end;

{Register Menu}

procedure TfrmMain.pnpGroupRegisterClick(Sender: TObject); // Group Menu Button
begin
  frmGroup := TfrmGroup.Create(Self);
  try
    frmGroup.pnpTitle.Caption := 'Cadastro Grupos';
    frmGroup.ShowModal;
  finally
    frmGroup.Release;
    frmGroup := nil;
  end;
end;

procedure TfrmMain.pnpProductRegisterclick(Sender: TObject); // Product Menu Button
begin
  frmProduct := TfrmProduct.Create(Self);
  try
    frmProduct.pnpTitle.Caption := 'Cadastro Produtos';
    frmProduct.ShowModal;
  finally
    frmProduct.Release;
    frmProduct := nil;
  end;
end;

// Supplier Menu Button

procedure TfrmMain.pnpReturnRegisterClick(Sender: TObject); // Return Button
begin
  SelectMenu(0);
end;

{Stock Menu}
procedure TfrmMain.pnpReturnStockClick(Sender: TObject);
begin
  SelectMenu(0);
end;

{Sales Menu}
procedure TfrmMain.pnpReturnSaleClick(Sender: TObject);
begin
  SelectMenu(0);
end;

{Change Menu Page}
procedure TfrmMain.SelectMenu(nMenu: integer);
begin
  if nMENU = 0 then // Show Main Menu
    begin
      pnpMain.visible := True;
      pnpMainRegister.visible := False;
      pnpMainStock.visible := False;
      pnpMainSales.visible := False;
    end

  else if nMENU = 1 then // Show Register Menu
    begin
      pnpMain.visible := False;
      pnpMainRegister.visible := True;
      pnpMainStock.visible := False;
      pnpMainSales.visible := False;
    end

  else if nMENU = 2 then // Show Stock Menu
    begin
      pnpMain.visible := False;
      pnpMainRegister.visible := False;
      pnpMainStock.visible := True;
      pnpMainSales.visible := False;
    end

  else if nMENU = 3 then // Show Sales Menu
    begin
      pnpMain.visible := False;
      pnpMainRegister.visible := False;
      pnpMainStock.visible := False;
      pnpMainSales.visible := True;
    end

  else // Show Main Menu as default
    begin
      pnpMain.visible := True;
      pnpMainRegister.visible := False;
      pnpMainStock.visible := False;
      pnpMainSales.visible := False;
    end;
end;

{Mouse Panel Animation}
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

