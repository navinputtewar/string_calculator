def string_calculator(input)
  return 0 if input.empty?  # Handle empty input (optional)
  # Extract custom delimiter (if present)
  match = input.match(/\/\/(.*?)\n/)
  delimiters = /[,\n;]/  # Regular expression for comma (,), newline (\n), or semicolon (;)
  # Spliting the input based on the delimiter
  numbers = input.split(delimiters).map(&:to_i)
  # Check for negative numbers
  negatives = numbers.select(&:negative?)
  raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}" if numbers.any?(&:negative?)
  numbers.sum
end
