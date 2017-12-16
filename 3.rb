def is_prime(num)
  # a number is prime if its only factors are are one and itself
  return false if num.even?
  (3..(num / 2)).each do |i|
    return false if num % i == 0
  end
  return true
end

# (3..20).each do |number|
#   p "is #{number} prime? #{is_prime(number)}"
# end

def factors_of_non_primes(num)
  factors_array = []
  if num.odd?
    (3..(num / 2).to_i).step(2).each do |i|
      # if divisible
      if num % i == 0
        return factors_array if factors_array.index(i)
        divisor = i
        quotient = num / i
        if divisor != quotient
          factors_array << divisor
          factors_array << quotient
        else
          factors_array << divisor
          return factors_array
        end
      end
    end
  else
    (2..(num / 2).to_i).each do |i|
      # if divisible
      if num % i == 0
        return factors_array if factors_array.index(i)
        divisor = i
        quotient = num / i
        if divisor != quotient
          factors_array << divisor
          factors_array << quotient
        else
          factors_array << divisor
          return factors_array
        end
      end
    end
  end
end
