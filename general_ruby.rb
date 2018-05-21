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

# variable assignment

foo = 9
two_or_more_words = 78  # two or more words seperated by underscores

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

# methods are called with their names
say_hello "Joe"  # can also use say_hello("Joe")
divide 9,3       # will return 3

# Ranges are objects themselves
# two dots includes last amount

1..4   # 1,2,3,4

# three dots leaves out last amount

1...4   # 1,2,3

# Symbols
# symbols are named objects
# written with a colon in the front (except in hashes)

:one
:some_other_key
:params

## Groups of things

# Arrays
# defined two ways

[1,2,3,4]  # most common way

Array.new(4)  # creates an empty array with 4 spaces

array = [1,2,3,4,5]

# reference items starting at zero
# use square brackets to get items

array[0]  # this is the number 1
array[3]  # this is the number 4

# arrays can have a mix of objects

[1, 2, :something, true, 9..0, Time.now ]

# you can use each item in an array by passing a block to each

# This will print out 2,4,6,8,10 each on a seperate line
array.each do |foo|
  puts foo * 2
end

# saying foo here will throw an error
# the variable number is something we assign and is ONLY available between the do and end

# We are passing code in as the last parameter in a method here

# to add a value to an array, use the "shovel, shovel" operator

array << 5
array << 'foo'

# array is now [1,2,3,4,5,5,'foo']

# some fun methods on array:
array.uniq   # returns only unique values in an array -- [1,2,3,4,5,'foo']

val = array.shift  # pulls the first value off an array and returns it
# array is now [2,3,4,5,5,'foo']
# val is 1

val = array.pop   # pull off the last item of an array and return it
# array is now [2,3,4,5,5]
# val is 'foo'

## Hashes
# set of keys that point to values

# defined using either syntax

{}
Hash.new

# this will convert, one, two, and three into symbols
hash = {
  one: "Joe",    # this is the same as :one => "Joe"
  two: "Wilma",  # you cannot mix and match hash definitions
  three: "Tanya"
}

hash[:two]  # will be "Wilma"

# when not using symbols, we use the "hash rocket" syntax
another_hash = {
  "first item" => 654,
  "second item" => Time.now
}

# adding values to an existing hash

hash["key that has not been used"] = 'new_value'

# hash is now { :one => "Joe", :two => "Wilma", :three => "Tanya", "key that has not been used" => 'new_value'}

hash[:two] = 'foo'  # this will replace the value :two is pointing to

# hash is now { :one => "Joe", :two => 'foo', :three => "Tanya", "key that has not been used" => 'new_value'}

# each with hashes yields both the key and the value

another_hash.each do |key, value|
  puts "#{key} is pointing to #{value}"
end

# will print
##  first item is pointing to 654
##  second item is pointing to 2018-05-21 19:11:35 -0400
