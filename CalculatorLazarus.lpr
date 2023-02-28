program CalculatorLazarus;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Calculator, Unit1, SysUtils;

{$R *.res}

begin
  //SysUtils.DecimalSeparator :=  '.';
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFormCalculator, FormCalculator);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.

