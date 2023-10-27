program otchot; 
 
var 
x: real; // переменная для ввода значения аргумента функции 
result: real; // переменная для хранения результата вычисления 
c:real; 
begin 
// ввод значения аргумента функции 
write('Введите значение x: '); 
readln(x); 
 
// проверка условий и вычисление значения функции 
if x < -10 then 
result := power(x, 1/3) 
else if (x >= -10) and (x < -2) then 
result := power(x, 3) * power(x, 0.1*x) - ln(x) 
else 
result := -x; 
 
// исправление NAN 
if result = result then c:=1 
else c:=0; 
if c = 1 then write('x=',x,' ',result:0:4) 
else write('x=',x,' Неверный корень'); 
end.
