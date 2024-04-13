# Load dependencies if not installed
require_relative 'install_dependencies'

# Load the add_numbers.rb file
require_relative 'add_numbers'

puts "running rspec test cases..."
system("rspec add_numbers_spec.rb")

puts "All scripts executed successfully."
