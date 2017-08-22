def is_prime(n)
  result = true
  for i in (2..n-1)
    if n%i==0
      result = false
      break
    else
      i+=1
    end
  end
  return result
end
 
sum = 0
n = 2
while n < 2000000
  if is_prime(n)
    sum += n
  end
  n += 1
end
 
p sum