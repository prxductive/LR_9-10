program z_4;

const
  n = 10;

var
  a, b: array of integer;  //ГЛОБАЛЬНЫЕ, ФОРМАЛЬНЫЕ
  i, sum1, sum2: integer; // ЛОКАЛЬНЫЕ, ФОРМАЛЬНЫЕ 

procedure pro10(i, sum1, sum2: integer; var a, b: array of integer); //ФАКТИЧЕСКИЕ
const                //ПАРАМЕТРЫ ЗНАЧЕНИЙ, ПАРАМЕТРЫ ПЕРЕМЕННЫЕ
  n = 10;
var
  aa, bb: array [1..n] of integer; // ЛОКАЛЬНЫЕ

begin
  // Генерация и вывод изначальных массивов
  writeln('Изначальные массивы:');
  for i := 1 to n do
  begin
    aa[i] := random(-20, 20);
    bb[i] := random(-20, 20);
  end;
  writeln(aa);
  writeln(bb);
  writeln;

  // Вычисление сумм положительных элементов в каждом массиве
  for i := 1 to n do
  begin
    if aa[i] > 0 then
      sum1 := sum1 + aa[i];
    if bb[i] > 0 then
      sum2 := sum2 + bb[i];
  end;

  // Умножение на 10 элементов массива, у которого сумма положительных элементов меньше
  if sum1 < sum2 then
    for i := 1 to n do
      aa[i] := aa[i] * 10
  else
    for i := 1 to n do
      bb[i] := bb[i] * 10;

  // Вывод измененных массивов
  writeln('Изменённые массивы:');
  writeln(aa);
  writeln(bb);
end;

begin
  pro10(i, sum1, sum2, a, b);
end.
