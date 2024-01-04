program Paiemen_Scolaire;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, uPrincipale, uConfiguration, uStagiaires, uInscription
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipale, FrmPrincipale);
  Application.CreateForm(TFrmConfiguration, FrmConfiguration);
  Application.CreateForm(TFrmStagiaires, FrmStagiaires);
  Application.CreateForm(TFrmInscription, FrmInscription);
  Application.Run;
end.

