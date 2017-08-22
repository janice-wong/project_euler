require 'benchmark'
def method_1
  a = (1..100).inject { |sum, n| sum + n*n }
  b = (1..100).inject { |sum, n| sum + n} ** 2

  return b - a
end

def method_2
  sum_of_squares = 0
  the_sum = 0
  
  (1..100).each do |num|
    the_sum += num * num
    sum_of_squares += num
  end

  sum_of_squares = sum_of_squares ** 2

  return sum_of_squares - the_sum
end

p method_1
p method_2

puts Benchmark.measure {
  1000000.times do
    method_1
  end
}

puts Benchmark.measure {  
  1000000.times do
    method_2
  end
}