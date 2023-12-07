program z2_5;
const m = 8; n = 8;
var a: array[1..m, 1..n] of integer;
    b: array[1..m] of integer;
    i,z, max, m_vse:integer;

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
    max:=a[i,1]; //первый как максимум
    m_vse:=1;
    for z:=2 to n do
    begin
      if a[i,z]>max then
      begin
        max:=a[i,z];
        m_vse:=1; //очистка совпадений
      end
      else if a[i,z]=max then
        m_vse:=m_vse+1; 
        //m_vse:=0;
    end;
    if m_vse=1 then //определение макс
      b[i]:=1
    else
      b[i]:=-1;
    write(b[i]:4);
  end;
end.