unit uStagiaires;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, DBGrids, DBCtrls, DBExtCtrls;

type

  { TFrmStagiaires }

  TFrmStagiaires = class(TForm)
    BtbRechercher: TButton;
    BtnSupprimer: TButton;
    BtnNouveau: TButton;
    BtnModifier: TButton;
    BtnAnnuler: TButton;
    BtnValider: TButton;
    DbedtNaissance: TDBDateEdit;
    DbedtCode: TDBEdit;
    DbedtNom: TDBEdit;
    DbedtPrenom: TDBEdit;
    DbedtGSM: TDBEdit;
    DbedtAdresse: TDBEdit;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DbedtPhoto: TDBImage;
    EcdtRechercher: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  FrmStagiaires: TFrmStagiaires;

implementation

{$R *.lfm}

{ TFrmStagiaires }

procedure TFrmStagiaires.FormShow(Sender: TObject);
begin
  FrmStagiaires.PageControl1.ActivePage:= TabSheet1;
end;

end.

