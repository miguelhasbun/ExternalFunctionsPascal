library PTMDLL;
{$mode objfpc}{$H+}

uses
  Classes, sysutils, Dialogs,CRT,math;
function PTM(var forI,n,mont:Double):Double;cdecl;export;
begin
  Result:= mont*(((forI/12)* (power(1 + (forI/12),n)))/
  ((power(1 + (forI/12),n)) - 1));
end;

Exports
  PTM;


begin
end.

