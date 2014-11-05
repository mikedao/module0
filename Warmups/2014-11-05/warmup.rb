def factorial(number)
  array = Array (1..number)
  array.reduce(:*)
end

def add_digits(number)
  number.to_s.split('').map! { |num| num.to_i }.reduce(:+)
end

number_one = 10
number_two = 100

puts "The sum of the digits of the factorial of #{number_one} is #{add_digits(factorial(number_one))}"
puts "The sum of the digits of the factorial of #{number_two} is #{add_digits(factorial(number_two))}"
