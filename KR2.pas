var
A: array of integer;
i, n: integer;
begin
writeln('Enter the size of the array:');
readln(n);
SetLength(A, n);
for i := 0 to n - 1 do
read(A[i]);
if (n <= 1) or (A[0] > A[1]) or (A[n - 2] > A[n - 1]) then
writeln('The array is not decreasing.')
else
writeln('The array is decreasing.');
end.