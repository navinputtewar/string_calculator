def string_calculator(input)
  return 0 if input.empty?  # Handle empty input
  numbers = input.split(",")
  if numbers.length == 1 
    numbers.first.to_i # Handle single number input
  else
   numbers.map(&:to_i).sum # Handle comma seperated number input
  end
end
