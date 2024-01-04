unit uInscription;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, DBGrids, DBExtCtrls, DBCtrls;

type

  { TFrmInscription }

  TFrmInscription = class(TForm)
    BtnRechercher: TButton;
    DbedtInscription: TDBDateEdit;
    DbedtMontantEchaeance: TDBEdit;
    DbedtNombreEcheance: TDBEdit;
    DbedtTotalAPayer: TDBEdit;
    DBPhoto: TDBImage;
    dbedtCodeStagaire: TDBLookupComboBox;
    DDbedtFiliere: TDBLookupComboBox;
    DDbedtAnneScolaire: TDBLookupComboBox;
    DBTxtCodeStagiaire: TDBText;
    DBTxtNom: TDBText;
    DBTxtPrenom: TDBText;
    DBTxtNaissance: TDBText;
    DBTxtNiveau: TDBText;
    DBTxtGSM: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel6: TPanel;
    Suprimer: TButton;
    Modifier: TButton;
    Nouveau: TButton;
    BtnVAlider: TButton;
    BtnAnnuler: TButton;
    DBGrid1: TDBGrid;
    EdtRechercher: TEdit;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  FrmInscription: TFrmInscription;

implementation

{$R *.lfm}

{ TFrmInscription }

procedure TFrmInscription.FormShow(Sender: TObject);
begin
  FrmInscription.PageControl1.ActivePage:= TabSheet1;
end;

end.

