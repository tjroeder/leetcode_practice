require 'pry'

# @param {String} string - the string to analyze
# @returns {Boolean} - whether or not the string has properly balanced and properly nested parentheses.

def properly_nested_and_balanced?(str)
  arr = []

  str.each_char do |char|
    if char == '(' || char == ')'
      if arr.last == '(' && char == ')'
        arr.pop
      else
        arr.push(char)
      end
    end
  end

  arr.empty? ? true : false
end
