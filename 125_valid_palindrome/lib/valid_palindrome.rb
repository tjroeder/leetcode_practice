require 'pry'

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  # sub_string = s.gsub(/[^a-zA-Z0-9]/, '').downcase
  valid_chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  sub_string = ''

  s.each_char do |char|
    sub_string << char.downcase if valid_chars.include?(char)
  end
  length = sub_string.length - 1
  
  0.upto(length/2) do |i|
    return false unless sub_string[i] == sub_string[~i]
  end
  return true
end
