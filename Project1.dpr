program Project1;

uses
  Forms,
  Form in 'Form.pas' {Form1},
  UStack in 'UStack.pas',
  UIntStack in 'UIntStack.pas',
  UStringStack in 'UStringStack.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
