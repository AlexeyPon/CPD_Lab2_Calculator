unit Unit1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TAboutForm }

  TAboutForm = class(TForm)
    AboutText: TLabel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.lfm}

{ TAboutForm }

procedure TAboutForm.Panel1Click(Sender: TObject);
begin
  AboutForm.Close;
end;
resourcestring
  Info = 'Calculator v 1.0'#13#10'Made for cross-platform development course'#13#10'© Ponomarev Alexey 2023';

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  AboutText.Caption:= Info;
end;

end.

