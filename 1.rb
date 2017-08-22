sum = 0

(1..999).each do |number|
  if number%3 == 0 || number%5 == 0
    sum += number
  end
end

p sum