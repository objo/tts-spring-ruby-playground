puts "Enter a number" 

number = gets.to_i

odd_or_even = 'odd'

odd_or_even = 'even' if number % 2 == 0  


puts "The number is #{number} and it #{odd_or_even}"
