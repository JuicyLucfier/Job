require "matrix"
stop = false
c_strok=0
k=0
arr_mat = []
while !stop
  puts "Введите строку с цифрами через запятую или два раза введите пустую строку для окончания ввода:"
stroka = gets.chomp
if stroka==""
  if k+1==2
    stop = true
  else
    k+=1
  end
else
  k=0
  c_strok+=1
  chisla = stroka.split(',').map(&:to_i)
  for i in 0..chisla.length
    chisla[0].to_i
  end
  col = chisla.length
  arr_mat += [chisla[0..col-1]]
end
end
if col == c_strok
  puts "Матрица квадратная!"
  matrix = Matrix[*arr_mat]
  puts "Сама матрица: #{matrix}"
  puts "Определитель матрицы: #{matrix.determinant()}"
else
  puts "Матрица не квадратная!"
end