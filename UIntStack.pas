unit UIntStack;

interface
  Uses
    SysUtils, UStack;
  const
    N=100;
  type
    TElem = pointer;
    TMas=array[0..N-1] of TElem;

  TIntStack = class(TStack)
  protected
    function ElemToStr(el : Pointer) : string; override;
  public
    class function CheckElem(el : pointer) : boolean; override;
    class function TryStrToElem(word : string; var p : pointer) : boolean; override;
  end;

implementation

function TIntStack.ElemToStr(el: Pointer) : string;
var
  tmp : integer;
begin
  tmp := Integer(el);
  Result := IntToStr(tmp);
end;

class function TIntStack.CheckElem(el : pointer) : boolean;
begin
  Result := odd(Integer(el));
end;

class function TIntStack.TryStrToElem(word : string; var p : pointer) : boolean;
var
  tmp : integer;
begin
  Result := TryStrToInt(word, tmp);
  if Result then
    try
      p:=pointer(tmp)
    except
      raise Exception.Create('Неизвестная ошибка');
    end;
end;

end.

