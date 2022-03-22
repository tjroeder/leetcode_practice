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
# @return {Integer}
def max_depth(root)
  return 0 unless root

  depth = 0
  stack = [root]

  while stack.any?
    breadth = stack.size
    depth += 1

    breadth.times do
      node = stack.shift

      stack.push(node.left) if node.left
      stack.push(node.right) if node.right
    end
  end
  depth
end
