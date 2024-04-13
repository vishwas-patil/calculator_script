# add function
def add(numbers)
  return 0 if numbers.empty?

  begin
    # If the string starts with a custom delimiter definition
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = delimiter_line.gsub("//", "")
      numbers.gsub!(delimiter, ",")
    else
      delimiter = ","
    end

    # If the input ends with a comma followed by a new line
    raise ArgumentError, "Invalid input: #{numbers}" if numbers.end_with?(",\n")

    # check for negative numbers.
    negative_numbers = numbers.split(',').map(&:to_i).select { |num| num.negative? }
    if negative_numbers.any?
      raise ArgumentError, "Negative numbers not allowed: #{negative_numbers.join(',')}"
    end

    # Replace new lines with commas, then split by comma and sum up the numbers
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

puts "-----------------------------------------"
puts "---------Check this context--------------"
puts "The following input is invalid: 1,\n"
puts "add new line(\"1,\n\"): #{add("1,\n")}" # Output: Invalid input
puts "-----------------------------------------"

puts "-----------------------------------------"
puts "---------Check this context--------------"
puts "Support different delimiters"
puts "Example 1 with ; delimiter '//;\n1;2;3' #{add("//;\n1;2;3")}" # Output: 6
puts "Example 2 with % delimiter '//%\n1%2%5' #{add("//%\n1%2%5")}" # Output: 8
puts "Example 3 with ^ delimiter '%%\n1%2%5' #{add("//%\n1%2%5")}" # Output: 8
puts "-----------------------------------------"


puts "-----------------------------------------"
puts "---------Check this context--------------"
puts "Negative numbers context"
puts "Example 1 with add(\"-1,5,-6\"): #{add("-1,5,-6")}" # Output: Not allowed
puts "Example 2 add new line(\"1,\n,2,3,-4,5\"): #{add("1,\n,2,3,-4,5")}" # Output: Not allowed
puts "Example 3 with ^ delimiter '%%\n1%-2%-5' #{add("//%\n1%-2%-5")}" # Output: Not allowed
puts "-----------------------------------------"
