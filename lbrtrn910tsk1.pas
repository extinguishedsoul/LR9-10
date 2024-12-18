program lbrtrn910tsk1;
type TArray = array of Integer; 
function FindFirstPositive(arr: TArray): Integer; 
// arr формальный параметр, по значению
// FindFirstPositive формальная функция
var i: Integer; // Локальная переменная функции
begin
  for i := 0 to High(arr) do 
  begin
    if arr[i] > 0 then
    begin
      FindFirstPositive := i + 1; 
      Exit;
    end;
  end;
  FindFirstPositive := 0; // Если положительных элементов нет, локальное значение
end;
// Функция для нахождения номера последнего отрицательного элемента
function FindLastNegative(arr: TArray): Integer; 
// arr — формальный параметр, по значению
// FindLastNegative — формальная функция
var i: Integer; // Локальная переменная функции
begin
  for i := High(arr) downto 0 do
  begin
    if arr[i] < 0 then
    begin
      FindLastNegative := i + 1; 
      Exit;
    end;
  end;
  FindLastNegative := 0; // Если отрицательных элементов нет, локальное значение
end;
var arr: TArray; n, i: Integer; resultFirstPositive, resultLastNegative: Integer; // Глобальные переменные программы
begin
  Write('Введите количество элементов массива: ');
  ReadLn(n); 
  SetLength(arr, n); 
  WriteLn('Введите элементы массива:');
  for i := 0 to n - 1 do 
  begin
    Write('Элемент [', i + 1, ']: ');
    ReadLn(arr[i]); // передача по индексу
  end;
  resultFirstPositive := FindFirstPositive(arr); 
  // фактический вызов функции
  // arr передается по значению
  WriteLn('Номер первого положительного элемента: ', resultFirstPositive);
  resultLastNegative := FindLastNegative(arr); 
  // фактический вызов функции
  // arr передается по значению 
  WriteLn('Номер последнего отрицательного элемента: ', resultLastNegative);
end.
