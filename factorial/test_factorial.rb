require './factorial'
require 'test/unit'

class TestFactorial < Test::Unit::TestCase
  def test_factorial
    tests = Hash.new
    tests[-10] = -1
    tests[0] = 1
    tests[1] = 1
    tests[2] = 2
    tests[10] = 3628800
    tests.each do |k,v|
      assert_equal(factorial(k),v)
    end
  end
end
