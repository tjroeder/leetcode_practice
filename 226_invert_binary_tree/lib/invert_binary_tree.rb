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
# @return {TreeNode}
def invert_tree(root)
  return root unless root
  stack = [root]

  until stack.empty?
    curr = stack.shift
    stack.push(curr.left) if curr.left
    stack.push(curr.right) if curr.right

    curr.left, curr.right = curr.right, curr.left
  end
  root
end

# helper to test resultant inverted btree
def tree_to_array(root)
  stack = [root]
  array = [root.val]

  until stack.empty?
    curr = stack.shift
    
    stack.push(curr.left) unless curr.left.nil?
    stack.push(curr.right) unless curr.right.nil?

    array.push(curr.left.val) unless curr.left.nil?
    array.push(curr.right.val) unless curr.right.nil?
  end
  array
end
