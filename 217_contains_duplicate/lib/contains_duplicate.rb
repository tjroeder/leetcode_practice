require 'pry'

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  verified = {}

  0.upto(nums.length - 1) do |i|
    return true if verified[i] == i
    verified[i] = i
  end
  return false
end
