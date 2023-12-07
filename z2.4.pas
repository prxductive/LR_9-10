const m = 8; n = 8;
var a: array[1..m, 1..n] of integer;
    b: array[1..m] of integer;
    i,z,s,avg:integer;

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
    b[i]:=a[i,1]; //первый как минимальный
    for z:=2 to n do
    begin
      if a[i,z]<b[i] then
        b[i]:=a[i,z]; //>? - присваиваем
    end;
    write(b[i]:4);
  end;
  s:=0;
  for i:=1 to m do
    s:=s+b[i];
  avg:=s div m; //ср арифм
  writeln;
  if avg in b then
    writeln('Одномерный массив содержит своё среднее арифметическое ')
  else
    writeln('Одномерный массив НЕ содержит своё среднее арифметическое ');
end.