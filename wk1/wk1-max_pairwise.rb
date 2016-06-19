_ = gets.chomp
numbers = gets.chomp.split.map {|x| x.to_i}

max1 = -1
max2 = -1

numbers.each_index do |x|
  max1 = x if (max1 == -1 || numbers[x] > numbers[max1])
end

numbers.each_index do |x|
  max2 = x if x != max1 && ( max2 == -1 || numbers[x] > numbers[max2])
end

puts numbers[max1] * numbers[max2]
