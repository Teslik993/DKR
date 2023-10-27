program otchot2; 
 
var 
x: real; // переменная для ввода значения аргумента функции 
result: real; // переменная для хранения результата вычисления 
c:real; 
// вычисление значения функции на интервале [-12; 0] с шагом 0,1 
begin
 x:=-12; 
while x<0 do 
begin 
if x < -10 then 
result := power(x, 1/3) 
else if (x >= -10) and (x < -2) then 
result := power(x, 3) * power(x, (0.1*x)) - ln(x) 
else 
result := -x; 
 
// исправление NAN 
if result = result then c:=1 
else c:=0; 
if c = 1 then writeln('x=',x:0:1,' ',result:0:1) 
else writeln('x=',x:0:1,' Неверный корень'); 
x:=x+0.1; 
end; 
end.