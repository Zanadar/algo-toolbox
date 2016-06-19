_ = gets.chomp
a = gets.chomp.split.map{|x| x.to_i}
b = gets.chomp.split.map{|x| x.to_i}

def min_dot_product(a, b)
  a = a.sort.reverse!
  b = b.sort

  values = a.zip(b)

  value = values.reduce(0) do |sum, tuple|
    ai, bi = tuple
    sum + (ai * bi)
  end
  return value
end

puts min_dot_product(a, b)
