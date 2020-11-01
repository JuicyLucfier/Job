puts "Введите 3 коэффициента квадратного уравнения: a, b, c"
#Переменные a,b,c, ввод с клавиатуры
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

#Дискриминант
d = b**2-(4*a*c)
puts a
if d>0
  x1 = (-b+Math.sqrt(d))/(2*a) #1-ый корень
  x2 = (-b-Math.sqrt(d))/(2*a) #2-ой корень
  puts "D = #{d}, x1 = #{x1}, x2 = #{x2}"
elsif d==0
  x = -b/(2*a) #корень
  puts "D = #{d}, x = #{x}"
else
  puts "D = #{d}. Корней нет"
end