require 'pry'

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.length == 0
  return -1 if nums.first > target || nums.last < target

  left = 0
  right = nums.length - 1

  while left <= right
    midpt = left + (right - left) / 2

    if nums[midpt] == target
      return midpt
    elsif nums[midpt] > target
      right = midpt - 1
    else
      left = midpt + 1
    end
  end
  return -1
end
