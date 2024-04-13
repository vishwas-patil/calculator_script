# add function
def add(numbers)
  return 0 if numbers.empty?

  numbers.split(',').map(&:to_i).sum
end

puts "Test Cases:"
puts "add(\"\"): #{add("")}"    # Output: 0
puts "add(\"1\"): #{add("1")}"   # Output: 1
puts "add(\"1,5\"): #{add("1,5")}" # Output: 6
puts "add(\"1,5,6\"): #{add("1,5,6")}" # Output: 12
