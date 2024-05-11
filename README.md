# String Calculator

This repository contains a Ruby program that implements a simple string calculator with the following features:

Features:

Adds numbers separated by commas, semicolons, or newlines.
Handles custom delimiters of any length specified at the beginning of the input

Requirements:

Ruby programming language
Usage:

Clone this repository: git clone https://github.com/navinputtewar/string_calculator.git .
Navigate to the project directory: cd string_calculator
Run the program from your terminal using ruby string_calculator.rb.
The program will prompt you to enter an expression.
Enter your string containing numbers separated by supported delimiters and press Enter.
The program will output the sum of the valid numbers.
Example:

Enter an expression: ""
Output: 0

Enter an expression: "1"
Output: 1

Enter an expression: "1,2,3"
Output: 6

Enter an expression: "-1,2"
Output: ERROR: Negatives not allowed: -1

Enter an expression: "1\n2,3"
Output: 6

Enter an expression: "//;\n1;2"  # Delimiter is ';'
Output: 3

Enter an expression: "2,1001,3" # Ignore 1001
Output: 5  # Only 2 and 3 are considered

Testing:

This program includes unit tests to ensure its functionality. You can run the tests using a testing framework Minitest.

Feel free to contribute to this project by forking the repository and submitting pull requests with improvements or bug fixes.

License:

This project is licensed under the MIT License.

Author:

Navin Puttewar
