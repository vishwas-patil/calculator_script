# Load the add_numbers.rb file
require_relative 'add_numbers'

# Load rspec
require 'rspec'

# Run the rspec tests if this script is executed directly
RSpec.describe "StringCalculator" do  
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(add("")).to eq(0)
    end

    it "returns the number itself for a single number string" do
      expect(add("1")).to eq(1)
      expect(add("5")).to eq(5)
    end

    it "returns the sum of two numbers for a two number string separated by comma" do
      expect(add("1,2")).to eq(3)
      expect(add("3,5")).to eq(8)
    end

    it "returns the sum of multiple numbers for a string with multiple comma-separated numbers" do
      expect(add("1,2,3,4,5")).to eq(15)
      expect(add("10,20,30")).to eq(60)
    end
  end
end
