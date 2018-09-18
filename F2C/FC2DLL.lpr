library FC2DLL;
{$mode objfpc}{$H+}

uses
  Classes, sysutils, Dialogs;

function F2C(var tfarenheit:Double):Double;cdecl;export;
begin
  Result:=(tfarenheit - 32)* (5/9);
end;

Exports
  F2C;


begin
end.

