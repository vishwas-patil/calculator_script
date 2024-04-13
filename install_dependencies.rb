# Check if ruby is installed or not.
ruby_installed = system("ruby --version > /dev/null 2>&1")

unless ruby_installed
  puts "Ruby is not installed. Installing Ruby library..."
  system("sudo apt-get update")
  system("sudo apt-get install -y ruby-full")
end

# Check if RSpec gem is installed
rspec_installed = system("gem list rspec -i > /dev/null 2>&1")

unless rspec_installed
  puts "RSpec gem is not installed. Installing RSpec..."
  system("gem install rspec")
end
