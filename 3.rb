def is_prime(num)
  # a number is prime if its only factors are are one and itself
  return false if num.even?
  (3..(num / 2)).each do |i|
    return false if num % i == 0
  end
  return true
end

def prime_factors_of_non_primes(num)
  factors_array = []
  prime_factors = []
  if num.odd?
    (3..(num / 2).to_i).step(2).each do |i|
      # if divisible
      if num % i == 0
        return prime_factors if factors_array.index(i)
        divisor = i
        quotient = num / i
        if divisor != quotient
          factors_array << divisor
          factors_array << quotient
          prime_factors << divisor if is_prime(divisor)
          prime_factors << quotient if is_prime(quotient)
        else
          factors_array << divisor
          prime_factors << divisor if is_prime(divisor)
          prime_factors << quotient if is_prime(quotient)
          return prime_factors
        end
      end
    end
  else
    (2..(num / 2).to_i).each do |i|
      # if divisible
      if num % i == 0
        return prime_factors if factors_array.index(i)
        divisor = i
        quotient = num / i
        if divisor != quotient
          factors_array << divisor
          factors_array << quotient
          prime_factors << divisor if is_prime(divisor)
          prime_factors << quotient if is_prime(quotient)
        else
          factors_array << divisor
          prime_factors << divisor if is_prime(divisor)
          prime_factors << quotient if is_prime(quotient)
          return prime_factors
        end
      end
    end
  end
end

# p prime_factors_of_non_primes(12)
# p prime_factors_of_non_primes(15)
# p prime_factors_of_non_primes(28)
# p prime_factors_of_non_primes(30)
# p prime_factors_of_non_primes(13195)
p prime_factors_of_non_primes(600851475143)
