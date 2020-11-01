stop = false
basket = {}
final_sum = 0
while !stop
  puts "Введите название товара или введите 'stop', чтобы закончить ввод"
item = gets.chomp
if item != "stop"
  puts "Введите цену за единицу товара"
  cost = gets.chomp.to_f
  puts "Введите кол-во купленного товара"
  amount = gets.chomp.to_f
  properties = {:cost => cost, :amount => amount, :sum => cost*amount}
  basket["#{item}"] = properties
  final_sum += cost*amount
else
stop = true
end
end
puts "Хэш: #{basket}"
puts "Итоговая сумма: #{final_sum}"