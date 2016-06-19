def make_change(input)
  tens, rest = input.divmod(10)
  fives, ones = rest.divmod(5)
  coins = tens + fives + ones

  coins
end

input = gets.chomp.to_i
output = make_change(input)
puts output
