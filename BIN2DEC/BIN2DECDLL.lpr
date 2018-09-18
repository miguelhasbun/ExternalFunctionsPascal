library BIN2DECDLL;
{$mode objfpc}{$H+}

uses
  Classes, sysutils, Dialogs,crt,math;

var bin:string;
var i,longitud,bit:byte;
var acum:Double=0;

function BIN2DEC(var value : integer):Integer;cdecl;export;
begin
  bin:= IntToStr(value);
  longitud := Length(bin);
  for i:=longitud downto 1 do begin
    Val(bin[i],bit);
    acum += bit*power(2,(longitud-i));
  end;
  Result:= StrToInt(FloatToStr(acum));
end;

Exports
  BIN2DEC;


begin
end.

