array = []
(0..100).each do |n|
  array[n] = n
end

array.each do |n|
 array[n] = array[n].to_i * array[n].to_i
end

sum_one = 0
array.each { |a| sum_one+=a }
puts sum_one

array = []

(0..100).each do |n|
  array[n] = n
end

sum_two = 0
array.each { |a| sum_two+=a }
puts sum_two

puts sum_one - sum_two
