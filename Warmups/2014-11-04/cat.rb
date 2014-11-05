file = File.open("cat.txt")
contents = file.read
file.close

downcased = contents.split.map { |word| word.downcase.gsub(/[^a-z ]/, '') }
frequency = downcased.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
puts "There are #{frequency.size} unique words."
puts "There are #{downcased.size} total words."
puts "The most common word is: #{downcased.max_by { |v| frequency[v] }}."
frequency.sort {|h,v| v[1]<=>v[1]}.map { |x| puts "#{x[0]}: #{x[1]}"}
