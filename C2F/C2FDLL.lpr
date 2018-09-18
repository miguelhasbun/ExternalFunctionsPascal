library C2FDLL;
{$mode objfpc}{$H+}

uses
  Classes, sysutils, Dialogs;

function C2F(var tcelcius:Double):Double;cdecl;export;
begin
  Result:=(tcelcius * (9/5)) + 32;
end;

Exports
  C2F;


begin
end.

