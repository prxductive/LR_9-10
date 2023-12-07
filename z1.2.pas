program z_2;
var a: array of integer;
j, max, nom: integer;

procedure maximum(b:array of integer; var max, nom: integer);
var i: integer;
begin
  for i:=0 to length(b)-1 do 
    if b[i]>max then begin
      max:=b[i];
      nom:=i+1;
      end;
end;

begin
  setlength(a,5);
  for j:=0 to length(a)-1 do
    read(a[j]);
  maximum(a, max, nom);
  writeln ('Максимальный элемент = ', max, '  Номер элемента = ', nom);
end.