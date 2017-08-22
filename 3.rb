def prime?(num)
  i = 2
  (num-2).times do
    if num % i == 0
      return false
      break
    else
      i += 1
    end
  end
  return true
end

def factors(n)
  the_factors = []
  (2..(Math.sqrt(n))).each do |divisible_by|
    if n % divisible_by == 0
      the_factors << divisible_by
      the_factors << (n / divisible_by)
    end
  end
  return the_factors
end

def largest_prime(factor_array)

end



p factors(24)
# p factors(13195)
# p factors(600851475143)