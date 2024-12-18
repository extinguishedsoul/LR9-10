program lbrtrn910tsk2;
const N = 8;
type T2DArray = array[1..N, 1..N] of Integer; T1DArray = array[1..N] of Integer;
function ProcessArray(matrix: T2DArray): T1DArray;
var i, j: Integer; resultArray: T1DArray; found: Boolean;
begin
  for i := 1 to N do
  begin
    found := False;
    for j := 1 to N - 1 do
    begin
      if matrix[i, j] + matrix[i, j + 1] = 7 then
      begin
        found := True;
        Break;
      end;
    end;
    if found then
      resultArray[i] := 1
    else
      resultArray[i] := -1;
  end;
  ProcessArray := resultArray;
end;
var
  matrix: T2DArray;
  resultArray: T1DArray;
  i, j: Integer;
begin
  Randomize;
  WriteLn('Исходный двумерный массив:');
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      matrix[i, j] := Random(11);
      Write(matrix[i, j]:4);
    end;
    WriteLn;
  end;
  resultArray := ProcessArray(matrix);
  WriteLn('Результирующий одномерный массив:');
  for i := 1 to N do
    Write(resultArray[i]:4);
  WriteLn;
end.