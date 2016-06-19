n = gets.chomp.to_i

def fib(n)
  fibs = [0, 1]
  (2..n).each do |x|
    fibs[x] = (fibs[x-1] + fibs[x-2]) % 10
  end
  return fibs[n]
end

puts fib(n)
