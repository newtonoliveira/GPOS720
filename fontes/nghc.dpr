program nghc;

uses
  System.StartUpCopy,
  FMX.Forms,
  nghc.funcoescomuns in 'nghc.funcoescomuns.pas',
  nghc.Log in 'nghc.Log.pas',
  nghc.pos in 'nghc.pos.pas' {frmPrincipal},
  sitef.clisitef in 'sitef.clisitef.pas',
  sitef.clisitefi in 'sitef.clisitefi.pas',
  sitef.constants in 'sitef.constants.pas',
  nghc.clisitef in 'nghc.clisitef.pas',
  G720Interface in 'G720Interface.pas',
  G720Printer in 'G720Printer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
