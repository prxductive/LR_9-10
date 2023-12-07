program z_1;
var a: array of integer;
poz, j: integer;

function el(b: array of integer) : integer;
var i, pr: integer;
begin
  pr:=1;
  for i:=0 to length(b)-1 do begin
    if b[i] mod 2 = 0 then
      pr:= pr*b[i];
  el:=pr;
end;
end;

begin
  setlength (a,10); //задает длинну массива
  for j:=0 to length(a)-1 do
    read (a[j]);
  poz:=el(a);
  writeln('Произведение элементов массива = ', poz);
end.

