# add function
def add(numbers)
  return 0 if numbers.empty?

  begin
    raise ArgumentError, "Invalid input: #{numbers}" if numbers.end_with?(",\n")

    numbers.gsub(/\n/, ',').split(',').map(&:to_i).sum
  rescue ArgumentError => e
    puts "Error: #{e.message}"
  end
end

puts "Test Cases:"
puts "add(\"\"): #{add("")}"    # Output: 0
puts "add(\"1\"): #{add("1")}"   # Output: 1
puts "add(\"1,5\"): #{add("1,5")}" # Output: 6
puts "add(\"1,5,6\"): #{add("1,5,6")}" # Output: 12
puts "add new line(\"1\n2,3\"): #{add("1\n2,3")}" # Output: 6
puts "---------Check this context--------------"
puts "The following input is invalid: '1,\n'"
puts "-----------------------------------------"
puts "add new line(\"1,\n\"): #{add("1,\n")}" # Output: Invalid input
