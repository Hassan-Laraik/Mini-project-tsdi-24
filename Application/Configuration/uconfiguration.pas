unit uConfiguration;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  DBCtrls, ExtCtrls;

type

  { TFrmConfiguration }

  TFrmConfiguration = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
  private

  public

  end;

var
  FrmConfiguration: TFrmConfiguration;

implementation

{$R *.lfm}

end.

