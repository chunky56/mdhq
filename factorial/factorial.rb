#!/usr/bin/env ruby 

def factorial(x)
  return "<Error: input is negative>" unless x >= 0
  return 1 unless x >= 2

  this_fact = nil
  last_fact = 1
  (2..x).each do |i|
    this_fact = i * last_fact
    last_fact = this_fact
  end

  return this_fact
end

# This doesn't exactly work because to_i cannot differentiate between something
# that doesn't convert to a number and an actual zero; to_i returns 0 for both.
if ARGV[0] && ARGV[0].to_i >= 0 then
  puts "The factorial of " + ARGV[0] + " is: " + factorial(ARGV[0].to_i).to_s
else
  puts "Usage: factorial.rb <non-negative integer>"
end