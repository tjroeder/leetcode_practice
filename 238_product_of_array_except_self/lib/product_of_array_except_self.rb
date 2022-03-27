require 'pry'

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  output = []
  length = nums.length - 1

  pre = 1
  0.upto(length) do |i|
    output << pre
    pre *= nums[i]
  end
  
  post = 1
  0.upto(length) do |i|
    output[~i] *= post
    post *= nums[~i]
  end
  output
end
