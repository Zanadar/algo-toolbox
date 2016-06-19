def sort_tuples_descending(value_weight_tuples)
  sorted = value_weight_tuples.sort_by do |tuple|
    value, weight = tuple
    value/weight
  end
  sorted.reverse! # So we're sorted in descending order
end

def fill_sack(capacity, value_weight_tuples)
  sorted = sort_tuples_descending(value_weight_tuples)
  n = sorted.length
  amounts = []
  value = 0

  (0...n).each do |i|
    return value if capacity == 0
    vi, wi = sorted[i]

    amount = [wi, capacity].min
    value += amount * (vi.to_f/wi)
    amounts[i] = amount
    capacity -= amount
  end
  return value
end

val_weight_tuples = []
num, capacity = gets.chomp.split.map{|x| x.to_i}

num.times do
  val_weight_tuples << gets.chomp.split.map{|x| x.to_i}
end

value = fill_sack(capacity, val_weight_tuples)

puts value.round(3)

