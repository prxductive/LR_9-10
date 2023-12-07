program z_5;

const
  n = 5;

type
  arn = array[1..n] of integer;  //

procedure max(var ar: arn);
var
  maxi, k: integer;
begin
  maxi := 1;
  // Находим индекс максимального элемента
  for k := 2 to n do
  begin
    if ar[k] > ar[maxi] then
    begin
      maxi := k;
    end;
  end;
  // Заменяем максимальный элемент на 0
  ar[maxi] := 0;
end;

procedure min(var ar: arn);
var
  mini, k: integer;
begin
  mini := 1;
  // Находим индекс минимального элемента
  for k := 2 to n do
  begin
    if ar[k] < ar[mini] then
    begin
      mini := k;
    end;
  end;
  // Умножаем на 2 все элементы после минимального
  for k := mini + 1 to n do
  begin
    ar[k] := ar[k] * 2;
  end;
end;

var
  a, b: arn;
  i: integer;
begin
  writeln('Введите массив 1:');
  // Вводим элементы массива a
  for i := 1 to n do
    read(a[i]);

  writeln('Введите массив 2:');
  // Вводим элементы массива b
  for i := 1 to n do
    read(b[i]);

  i := 1;
  // Поиск первого элемента, кратного 5, в одном из массивов
  while (i <= n) do
  begin
    if (a[i] mod 5 = 0) or (b[i] mod 5 = 0) then
    begin
      if (a[i] mod 5 = 0) and (b[i] mod 5 <> 0) then
      begin
        // Если элемент встретился раньше в массиве a, то заменяем максимальный элемент этого массива на 0
        max(a);
        min(b);
      end
      else if (a[i] mod 5 <> 0) and (b[i] mod 5 = 0) then
      begin
        // Если элемент встретился раньше в массиве b, то заменяем максимальный элемент этого массива на 0
        max(b);
        min(a);
      end;
      break; // Прерываем цикл, так как нашли первый элемент, кратный 5
    end;
    i := i + 1;
  end;

  // Выводим измененные массивы
  writeln('Массив 1 после изменений:');
  for i := 1 to n do
  begin
    write(a[i], ' ');
  end;
  writeln;

  writeln('Массив 2 после изменений:');
  for i := 1 to n do
  begin
    write(b[i], ' ');
  end;
end.
