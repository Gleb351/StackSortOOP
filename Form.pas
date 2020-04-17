unit Form;

{Ќа вершине иерархии расположен класс Ч стек, элементами которого €вл€ютс€ данные типа
Pointer. Ќаследники данного класса Ч стез из целых чисел и стек из строк. –еализовать указанную
иерархию объектов и решить следующую задачу: даны два стека с некоторыми элементами Ч
числами или строками (по выбору пользовател€). ѕоместить элементы, удоволетвор€ющие
заданному критерию в один стек, а не удовлетвор€ющие Ч в другой.
 ритерий: у целых чисел четность и нечЄтность, а у строк четность и нечетность кол-во букв. „етные во второй, нечетные в первый}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UStack, UIntStack, UStringStack;

type
  TClassStack = class of TStack;
  TForm1 = class(TForm)
    Stack1Edit: TEdit;
    Stack2Edit: TEdit;
    TaskButton: TButton;
    ExitButton: TButton;
    Result1Edit: TEdit;
    Result2Edit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IntRadioButton: TRadioButton;
    StringRadioButton: TRadioButton;
    ClearButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure TaskButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ClearButtonClick(Sender: TObject);
begin
  Stack1Edit.Text := '';
  Stack2Edit.Text := '';
  Result1Edit.Text := '';
  Result2Edit.Text := '';
  Stack1Edit.SetFocus;
end;

function NextWord(s:string; var i:integer):string;
var
  len:integer;
begin
  len:=length(s);
  while(i<=len) and (s[i]=' ') do
    inc(i);
  result:='';
  while(i<=len) and (s[i]<>' ') do
    begin
      result:=result+s[i];
      inc(i);
    end;
end;

procedure TForm1.TaskButtonClick(Sender: TObject);
var s1,s2,tmpst:TStack;
  s:TClassStack;
  str,tmp:string;
  i,len:integer;
  p:pointer;
begin
  i:=1;
  if (IntRadioButton.Checked) then
    s:=TIntStack
  else
    s:=TStrStack;
  s1:=s.Create;
  s2:=s.Create;
  str := Trim(Stack1Edit.Text);
  len:=length(str);
  while (i<=len) do
  begin
    tmp:=NextWord(str,i);
    if s.TryStrToElem(tmp, p) then
      s1.TryPush(p);
  end;
  i:=1;  
  str := Trim(Stack2Edit.Text);
  len:=length(str);
  while (i<=len) do
  begin
    tmp:=NextWord(str,i);
    if s.TryStrToElem(tmp, p) then
      s2.TryPush(p);
  end;
  tmpst:=s.Create;
  while not s1.isEmpty do
  begin
    s1.TryPop(p);
    tmpst.TryPush(p);
  end;
  while not s2.isEmpty do
  begin
    s2.TryPop(p);
    tmpst.TryPush(p);
  end;
  while not tmpst.IsEmpty do
  begin
    tmpst.TryPop(p);
    if s.CheckElem(p) then
      s1.TryPush(p)
    else
      s2.TryPush(p);
  end;
  Result1Edit.Text := s1.PrintAndClear;
  Result2Edit.Text := s2.PrintAndClear;
end;

end.
