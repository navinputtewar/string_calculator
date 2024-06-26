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

  def test_new_lines_between_numbers
    input = "1\n2,3"
    expected_output = 6
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end

  def test_multiple_negative_numbers
    input = "-1,-2,3"
    begin
      string_calculator(input)
    rescue ArgumentError => e
      assert_equal "Negative numbers not allowed: -1, -2", e.message
    end
  end

  def test_ignoring_numbers_greater_than_1000
    input = "2,1001,3"
    expected_output = 5  # Only 2 and 3 are considered
    result = string_calculator(input)
    assert_equal(expected_output, result)
  end

end