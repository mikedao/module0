def sum_of_squares(limit)
  array = []
  (0..limit).each do |n|
    array[n] = n
  end

  sum = 0
  array.each { |a| sum += a * a}
  return sum
end

def sum_squared(limit)
  array = []
  sum = 0

  (0..limit).each do |n|
    array[n] = n
  end

    array.each { |a| sum += a }
  return sum * sum
end

puts "The sum of the numbers from 1 to 10 squared is #{sum_squared(10)}"
puts "The sum of the squares of 1 to 10 is #{sum_of_squares(10)}."
puts "The difference between the two is #{sum_squared(10) - sum_of_squares(10)}"

puts "\n"

puts "The sum of the numbers from 1 to 100 squared is #{sum_squared(100)}"
puts "The sum of the squares of 1 to 10 is #{sum_of_squares(100)}."
puts "The difference between the two is #{sum_squared(100) - sum_of_squares(100)}"
