#
#  L33t Sp34k
#
#  Generate a passphrase by
#   x Take away leading and trailing whitespace
#   X taking in a phrase from the user
#   X stripping out all spaces
#   - converting the right letters to numbers
#     * A == 4
#     * E == 3
#     * I == 1
#     * O == 0
#     * T == 7
#     * S == $
#
#  Example:
#
#  Fold The Table  < -- User enters this
#  F0ldTh3T4bl3    <-- We return this

LEET_LETTERS = {
  'a' => '4',
  'e' => '3',
  'i' => '1',
  'q' => '@',
  'o' => '0',
  't' => '7',
  's' => '$',
}

puts "=== Password Generator ==="
puts "Please enter a phrase to convert: "

user_string = gets.strip

no_spaces = user_string.gsub(" ", "")

letters = no_spaces.split('')

passphrase = ""

letters.each do |letter|
  if LEET_LETTERS.has_key?(letter.downcase)
    passphrase << LEET_LETTERS[letter.downcase]
  else
    passphrase << letter
  end
end


puts "Your new passphrase is #{passphrase}"
