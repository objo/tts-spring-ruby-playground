#   Fizz Buzz
#
#   Rules:
#   x print out the numbers from 1 to 100
#   x Numbers divisible by three get replaced with "Fizz"
#   - Numbers divisible by five get replaced with "Buzz"
#   - Numbers divisible by both get replaced with "FizzBuzz"
#

def divisible_by_three?(number)
  number % 3 == 0
end

def divisible_by_five?(number)
  number % 5 == 0
end

(1..100).each do |number|
  if divisible_by_three?(number) && divisible_by_five?(number)
    puts "FizzBuzz"
  elsif divisible_by_three? number
    puts "Fizz"
  elsif divisible_by_five? number
    puts "Buzz"
  else
    puts number
  end
end
