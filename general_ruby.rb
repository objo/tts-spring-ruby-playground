# comments are anything after a # sign

# printing information

puts "Hello"  # will print the word hello with a return
putc "h"      # will print the character h without a return afterwards

# numbers are integers
2
3
4

# decimals are floats
2.3
puts 3.5.class  # will print out Float

if 2.even?
  puts "even number"
end

# if blocks are always closed with an end ... ALWAYS
# Notice we use 2 spaces to indent in ruby.

if 2.odd?
  puts "This won't be called"
else
  puts "This will always be printed"
end

if 2.odd?
  puts "This won't be called"
elsif 2.even?
  puts "This will return, note there is no e in else here"
else
  puts "This won't be called either"
end


# define methods by using def with a name and variables for values passed in

def say_hello(name)
  puts "Hello, #{name}"
end

# two or more arguments get more variable names
def divide(number_one, number_two)
  puts number_one / number_two
end


# Ranges are objects themselves
# two dots includes last amount

1..4   # 1,2,3,4

# three dots leaves out last amount

1...4   # 1,2,3
