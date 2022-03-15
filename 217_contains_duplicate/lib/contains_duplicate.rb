require 'pry'

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  verified = {}

  nums.each do |i|
    return true if verified[i] == i
    verified[i] = i
  end
  return false
end
