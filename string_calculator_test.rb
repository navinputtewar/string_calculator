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

  def test_two_numbers_separated_by_comma_returns_sum
    input = "1,5"
    expected_output = 6
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end

  def test_multiple_numbers_separated_by_comma_returns_sum
    input = "1,2,3"
    expected_output = 6
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end

  def test_custom_delimiters
    input = "//;\n1;2"  # Delimiter is ';'
    expected_output = 3
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end

  def test_negative_numbers
    input = "-1,2"
    assert_raises(ArgumentError) { string_calculator(input) }
  end

end