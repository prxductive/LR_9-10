program z_3;
var a:array of integer; i, pl: integer;

function pol(b: array of integer) : integer;
var j,Z : integer;
begin
  for j:=length(b)-1 downto 0 do begin
    if b[j]<0 then begin
      Z:=j+1;
      break;
      end
    else Z:=0;
  end;
  pol:=Z;
end;
  
  begin
    setlength(a,5);
    for i:=0 to length(a)-1 do
      read (a[i]);
    pl:=pol(a);
    writeln(pl)
end.