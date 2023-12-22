var s,s1:string;
    i,j,k,n:integer;
begin
writeln('Введите строку содержащую несколько одинаковых подстрок');
s:=ReadLnString('Введите строку: ');
var ps:=ReadLnString('Введите искомую подстроку: ');
var t:='';
i:=1;
var c:=1;
k:=0;
var countPs:=0;
while i<=Length(s) do begin
   k:=0;
   while ((i+k)<=Length(s)) and (k<Length(ps)) and (s[i+k]=ps[k+1]) do
        inc(k);
   if k=Length(ps) then Inc(countPs);
   if (k=Length(ps)) and not odd(countPs) then inc(i,k)
   else begin
     t:=t+s[i];
     inc(i);
     end;
   end;
s:=t;
writeln(s);
end.