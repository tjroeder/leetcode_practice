require 'pry'

# @param {Integer[]} nums
# @return {Integer}
# def single_number(nums)
#   sorted = nums.sort
#   i = 0
#   until sorted[i] != sorted[i + 1] do
#     i += 2
#   end
#   return sorted[i]
# end

def single_number(nums)
  first = nums.first
  nums[1..-1].each do |n|
    require 'pry'; binding.pry
    first ^= n
  end
  first
end