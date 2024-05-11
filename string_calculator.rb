def string_calculator(input)
  return 0 if input.empty?  # Handle empty input (optional)
  # Extract custom delimiter (if present)
  match = input.match(/\/\/(.*?)\n/)
  delimiter = match ? match[1] : ","  # Set comma as default delimiter
  # Spliting the input based on the delimiter
  numbers = input.split(delimiter).map(&:to_i)
  numbers.sum
end