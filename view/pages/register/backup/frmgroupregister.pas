unit frmGroupRegister;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Grids, DBGrids;

type

  { TfrmGroup }

  TfrmGroup = class(TForm)
    dbGridGroup: TDBGrid;
    pnpButtonAdd: TPanel;
    pnpButtonSave: TPanel;
    pnpButtonEdit: TPanel;
    pnpButtonCancel: TPanel;
    pnpTitle: TPanel;
  private

  public

  end;

var
  frmGroup: TfrmGroup;

implementation

{$R *.lfm}

end.

