a, b = gets.chomp.split
a = a.to_i
b = b.to_i

def EuclidGCD(a, b)
  return a if b == 0
  a_prime = a % b
  EuclidGCD(b, a_prime)
end

def LCD(a, b)
  return (a * b) / EuclidGCD(a, b)
end

puts LCD(a, b)
