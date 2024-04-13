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

    it "handles new lines between numbers" do
     expect(add("1\n2,3")).to eq(6)
    end

    it "supports different delimiters" do
      expect(add("//;\n1;2;3")).to eq(6)
      expect(add("//%\n1%2%5")).to eq(8)
      expect(add("//^\n1^2^5")).to eq(8)
    end

    context "with invalid input" do
      it "returns an error message for input ending with a comma followed by a new line" do
        expect(add("1,\n")).to eq("Invalid input: 1,\n")
      end

      it "returns an error message for negative numbers" do
        expect(add("-1,5,-6")).to eq("Negative numbers not allowed: -1,-6")
      end
    end

  end
end
