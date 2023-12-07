program z2_2;
const m = 8; n = 6;
var a: array[1..m, 1..n] of integer;
    b: array[1..m] of integer;
    i,z:integer; sas:boolean;

begin
  for i:=1 to m do
  for z:=1 to n do a[i,z] := random(-10,10);

  writeln('двумерный массив:');
  for i:=1 to m do
  begin
    for z:=1 to n do
      write(a[i,z]:4);
    writeln;
  end;
  writeln('одномерный массив:');
  for i:=1 to m do
  begin
    sas:=false;
    for z:=1 to n do
    begin
     if a[i,z]<0 then
     begin
       sas:=true;
       break;
     end;
    end;
    if sas then b[i]:=-1
    else b[i]:=1;
    write(b[i]:4);
  end;
end.