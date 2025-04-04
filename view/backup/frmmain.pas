unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    imgClient: TImage;
    imgSale: TImage;
    imgStock: TImage;
    imgExit: TImage;
    pnpMainContent: TPanel;
    pnpRegister: TPanel;
    pnpSales: TPanel;
    pnpStock: TPanel;
    pnpExit: TPanel;
    pnpMain: TPanel;
    pnpTitle: TPanel;
    procedure pnpRegisterEnter(Sender: TObject);
    procedure pnpRegisterMouseEnter(Sender: TObject);
    procedure pnpRegisterMouseLeave(Sender: TObject);
  private

  public

  end;

var
  main: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.pnpRegisterMouseEnter(Sender: TObject);
begin
  MouseOn(Sender);
end;

procedure TfrmMain.pnpRegisterMouseLeave(Sender: TObject);
begin
  MouseOff(Sender);
end;


/// Functions MouseOn - MouseOff
procedure TfrmMain.MouseOn(Sender: TObject);
begin
  if not (sender is TPanel) then
    exit;
  (sender as TPanel).Color := RGBToColor(43, 162, 182);
end;

function TfrmMain.MouseOff(Sender: TObject);
begin
  if not (sender is TPanel) then
    exit;
  (sender as TPanel).ParentColor := True;
end;

end.

