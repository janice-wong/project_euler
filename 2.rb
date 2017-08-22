numbers = [1, 2]

while numbers[-2] + numbers[-1] < 4000000
  numbers << numbers[-2] + numbers[-1]
end

sum = 0
numbers.each do |num|
  if num%2 == 0
    sum += num
  end
end

p sum