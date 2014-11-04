file = File.open("cat.txt")
contents = file.read

text_array = contents.split

downcased = text_array.map { |word| word.downcase.gsub(/[^a-z ]/, '') }

puts "There are #{downcased.size} words."
frequency = downcased.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
puts "The most common word is: #{downcased.max_by { |v| frequency[v] }}."


frequency = frequency.sort { |a, b| a <=> b }
frequency.map { |h,v| puts "#{h}: #{v}" }

file.close
