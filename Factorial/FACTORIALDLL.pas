library FACTORIALDLL;
{$mode objfpc}{$H+}

uses
  Classes, sysutils, Dialogs,Crt;
var Flag : Integer;
var Result: Integer;

function FACTORIAL(var Value:Integer):Integer;cdecl;export;
begin
     Result:= 1;
     ClrScr;
     GotoXY(4, 2);

     for Flag := 1 to Value do
        begin
             Result:= Result * Flag;
        end
end;

Exports
  FACTORIAL;


begin
end.

