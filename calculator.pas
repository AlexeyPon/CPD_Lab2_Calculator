unit Calculator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
    ButtonSubmit: TButton;
    ButtonClear: TButton;
    Button3: TButton;
    ButtonQuit: TButton;
    EditNum1: TEdit;
    EditNum2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    LabelSign: TLabel;
    LabelAnswer: TLabel;
    RadioButtonAdd: TRadioButton;
    RadioButtonSubtract: TRadioButton;
    RadioButtonMultiply: TRadioButton;
    RadioButtonDivide: TRadioButton;
    RadioGroupOperator: TRadioGroup;
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonQuitClick(Sender: TObject);
    procedure ButtonSubmitClick(Sender: TObject);
    procedure EditNum1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure LabelAnswerClick(Sender: TObject);
    procedure LabelSignClick(Sender: TObject);
    procedure RadioButtonAddChange(Sender: TObject);
    procedure RadioButtonDivideChange(Sender: TObject);
    procedure RadioButtonMultiplyChange(Sender: TObject);
    procedure RadioButtonSubtractChange(Sender: TObject);
  private

  public

  end;

var
  FormCalculator: TFormCalculator;

implementation

{$R *.lfm}

{ TFormCalculator }

procedure TFormCalculator.EditNum1Change(Sender: TObject);
begin

end;

procedure TFormCalculator.FormCreate(Sender: TObject);
begin
  LabelAnswer.Caption:='';
end;

procedure TFormCalculator.ButtonSubmitClick(Sender: TObject);
begin
  try
    if RadioButtonAdd.Checked = True then
       LabelAnswer.Caption:= FloatToStr(StrToFloat(EditNum1.Text) + StrToFloat(EditNum2.Text))
    else if RadioButtonSubtract.Checked = True then
       LabelAnswer.Caption:= FloatToStr(StrToFloat(EditNum1.Text) - StrToFloat(EditNum2.Text))
    else if RadioButtonDivide.Checked = True then
       LabelAnswer.Caption:= FloatToStr(StrToFloat(EditNum1.Text) / StrToFloat(EditNum2.Text))
    else if RadioButtonMultiply.Checked = True then
       LabelAnswer.Caption:= FloatToStr(StrToFloat(EditNum1.Text) * StrToFloat(EditNum2.Text))
    else
       ShowMessage('Please select an operator');
  except
    ShowMessage('Please check input');
  end;
end;

procedure TFormCalculator.ButtonClearClick(Sender: TObject);
begin
  EditNum1.Clear;
  EditNum2.Clear;
  EditNum1.SetFocus;
end;

procedure TFormCalculator.ButtonQuitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormCalculator.Label2Click(Sender: TObject);
begin

end;

procedure TFormCalculator.LabelAnswerClick(Sender: TObject);
begin

end;

procedure TFormCalculator.LabelSignClick(Sender: TObject);
begin

end;

procedure TFormCalculator.RadioButtonAddChange(Sender: TObject);
begin
  LabelSign.Caption:='+';
end;

procedure TFormCalculator.RadioButtonDivideChange(Sender: TObject);
begin
  LabelSign.Caption:='/';
end;

procedure TFormCalculator.RadioButtonMultiplyChange(Sender: TObject);
begin
  LabelSign.Caption:='X';
end;

procedure TFormCalculator.RadioButtonSubtractChange(Sender: TObject);
begin
  LabelSign.Caption:='-';
end;

end.

