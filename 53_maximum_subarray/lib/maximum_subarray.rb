require 'pry'

# @param {Integer[]} nums
# @return {Integer}

def max_sub_array(nums)
  curr_sum = nums[0]
  max_sum = nums[0]

  1.upto(nums.size - 1) do |i|
    curr_sum = [curr_sum + nums[i], nums[i]].max
    max_sum = [max_sum, curr_sum].max
  end
  max_sum
end
