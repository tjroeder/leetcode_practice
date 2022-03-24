require 'pry'

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  dfs(root, -Float::INFINITY, Float::INFINITY)
end

def dfs(node, lower_bound, upper_bound)
  return true if node.nil?
  return false if (lower_bound >= node.val) || (node.val >= upper_bound)
  
  left = dfs(node.left, lower_bound, node.val)
  right = dfs(node.right, node.val, upper_bound)
  return left && right
end
