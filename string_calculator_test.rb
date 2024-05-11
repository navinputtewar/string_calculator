require 'minitest/autorun'
require './string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_empty_string_returns_zero
    input = ""
    expected_output = 0
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end

  def test_single_number_returns_itself
    input = "1"
    expected_output = 1
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end
end