program z2_3;
const m = 8; n = 8;
var a: array[1..m, 1..n] of integer;
    b: array[1..m] of integer;
    i,z:integer;

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
    b[i]:=-1;
    for z:=1 to n-1 do
    begin
     if (a[i,z]+a[i,z+1]=7) then
     begin
       b[i] := 1;
       break;
     end;
    end;
    write(b[i]:4);
  end;
end.