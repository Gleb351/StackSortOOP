unit UStringStack;

interface
  Uses
    SysUtils, UStack;
  const
    N=100;
  type
    TElem = pointer;
    TMas=array[0..N-1] of TElem;

  TStrStack = class(TStack)
  protected
    function ElemToStr(el : Pointer) : string; override;
  public
    class function CheckElem(el : pointer) : boolean; override;
    class function TryStrToElem(word : string; var p : pointer) : boolean; override;
  end;

implementation

function TStrStack.ElemToStr(el: Pointer) : string;
begin
  Result := String(el^);
end;

class function TStrStack.CheckElem(el : pointer) : boolean;
var
  temp : string;
  tmp : integer;
begin
  temp := String(el^);
  tmp := length(temp);
  Result := odd(tmp);
end;

class function TStrStack.TryStrToElem(word : string; var p : pointer) : boolean;
var
  ps : ^String;
begin
  Result := false;
  try
    new(ps);
    ps^ := word;
    p := ps;
    Result := true;
  except
    raise Exception.Create('Unknown Error');
  end;
end;

end.

