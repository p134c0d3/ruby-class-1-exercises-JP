# 3a. The script aims to define a method count_words that takes a sentence as a string and returns a hash with each word as a key and its frequency as the value.
# The current implementation is flawed and needs debugging.

def count_words(sentence)
  word_frequency = Hash.new(0)
  sentence.downcase.scan(/\b\w+\b/) do |word|
    word_frequency[word] += 1
  end

  word_frequency
end

# 3b. The script is intended to define a method calculate_factorial that takes an integer and returns its factorial. The current implementation is not functioning correctly.

def calculate_factorial(number)
  if number == 0
    1
  elsif number < 0
    puts "Error: Negative number"
  else
    number * calculate_factorial(number - 1)
  end
end

puts calculate_factorial(5)

# 3c. The script is meant to define a method find_median that takes an array of numbers, sorts it, and returns the median value. The current implementation is not working correctly.

def find_median(numbers)
  numbers = numbers.sort.reverse!
  new_num = 0
  numbers.each do |num|
    new_num += num
  end
  new_num / numbers.length
end
