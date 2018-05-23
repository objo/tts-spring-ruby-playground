puts "Enter a number"

user_number = gets.to_i

odd_or_even = 'odd'

odd_or_even = 'even' if user_number % 2 == 0


puts "The number is #{user_number} and it #{odd_or_even}"
