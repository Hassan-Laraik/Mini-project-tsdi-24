unit uPrincipale;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

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
    procedure BtnStagiaireClick(Sender: TObject);
  private

  public

  end;

var
  FrmPrincipale: TFrmPrincipale;

implementation
 uses uConfiguration,uStagiaires;
{$R *.lfm}

 { TFrmPrincipale }

 procedure TFrmPrincipale.BtnconfigurationClick(Sender: TObject);
 begin
   FrmConfiguration.ShowModal;
 end;

procedure TFrmPrincipale.BtnStagiaireClick(Sender: TObject);
begin
  FrmStagiaires.ShowModal;


end;

end.

