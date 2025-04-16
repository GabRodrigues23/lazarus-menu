unit dbDocument;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ZConnection,
  ZDataset, ZSqlMetadata;

type

  { TDocumentController }

  TDocumentController = class(TForm)
    dsGroup: TDataSource;
    zConn: TZConnection;
    trCommit: TZTransaction;
    qrGroup: TZQuery;
  private

  public

  end;

var
  DocumentController: TDocumentController;

implementation

{$R *.lfm}

end.

