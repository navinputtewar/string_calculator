def string_calculator(input)
  return 0 if input.empty?  # Handle empty input (optional)
  numbers = input.split(",").map(&:to_i)  # Split by comma and convert each to integer
  numbers.sum  # Sum the array of numbers
end