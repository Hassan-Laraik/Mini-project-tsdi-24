unit uPrincipale;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  DBGrids, DBCtrls, ZConnection, ZDataset;

type

  { TFrmPrincipale }

  TFrmPrincipale = class(TForm)
    BtnInscription: TButton;
    BtnStagiaire: TButton;
    BtnPAiement: TButton;
    Btnconfiguration: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure BtnconfigurationClick(Sender: TObject);
    procedure BtnInscriptionClick(Sender: TObject);
    procedure BtnStagiaireClick(Sender: TObject);
  private

  public

  end;

var
  FrmPrincipale: TFrmPrincipale;

implementation
 uses uConfiguration,uStagiaires, uInscription;
{$R *.lfm}

 { TFrmPrincipale }

 procedure TFrmPrincipale.BtnconfigurationClick(Sender: TObject);
 begin
   FrmConfiguration.ShowModal;
 end;

procedure TFrmPrincipale.BtnInscriptionClick(Sender: TObject);
begin
  FrmInscription.ShowModal;
end;

procedure TFrmPrincipale.BtnStagiaireClick(Sender: TObject);
begin
  FrmStagiaires.ShowModal;


end;

end.

