def is_prime(num)
  # a number is prime if its only factors are are one and itself
  return false if num % 2 == 0
  (3..(num / 2)).each do |i|
    return false if num % i == 0
  end
  return true
end

# (3..20).each do |number|
#   p "is #{number} prime? #{is_prime(number)}"
# end

def
