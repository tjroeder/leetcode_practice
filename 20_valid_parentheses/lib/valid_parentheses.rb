require 'pry'

# @param {String} s
# @return {Boolean}
def is_valid(s)
  return true if s.empty?
  stack = []

  s.each_char do |char|
    case char
    when '(', '{', '['
      stack.push(char)
    when ')'
      return false unless stack.pop == '('
    when '}'
      return false unless stack.pop == '{'
    when ']'
      return false unless stack.pop == '['
    end
  end
  return stack.empty?
end
