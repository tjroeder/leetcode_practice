require_relative '../lib/invert_binary_tree'

RSpec.describe 'Invert Binary Tree' do
  context 'btree values to array' do
    it 'converts btree node values to an array' do
      nine = TreeNode.new(9)
      six = TreeNode.new(6)
      seven = TreeNode.new(7, six, nine)
      three = TreeNode.new(3)
      one = TreeNode.new(1)
      two = TreeNode.new(2, one, three)
      root = TreeNode.new(4, two, seven)
      expected = [4, 2, 7, 1, 3, 6, 9]

      expect(tree_to_array(root)).to eq(expected)
    end

    it 'converts btree node values to an array' do
      new_nine = TreeNode.new(9)
      new_six = TreeNode.new(6)
      new_seven = TreeNode.new(7, new_nine, new_six)
      new_three = TreeNode.new(3)
      new_one = TreeNode.new(1)
      new_two = TreeNode.new(2, new_three, new_one)
      root = TreeNode.new(4, new_seven, new_two)
      expected = [4, 7, 2, 9, 6, 3, 1]

      expect(tree_to_array(root)).to eq(expected)
    end
  end

  context 'large binary tree' do
    it 'swaps all branches of a binary tree and returns the root' do
      nine = TreeNode.new(9)
      six = TreeNode.new(6)
      seven = TreeNode.new(7, six, nine)
      three = TreeNode.new(3)
      one = TreeNode.new(1)
      two = TreeNode.new(2, one, three)
      root = TreeNode.new(4, two, seven)
      
      new_root = invert_tree(root)
      array = tree_to_array(new_root)
      expected_array = [4, 7, 2, 9, 6, 3, 1]

      expect(array).to eq(expected_array)
    end
  end

  context 'smaller binary tree' do
    it 'swaps all branches of a binary tree and returns the root' do
      three = TreeNode.new(3)
      one = TreeNode.new(1)
      root = TreeNode.new(2, one, three)
      
      new_root = invert_tree(root)
      array = tree_to_array(new_root)
      expected_array = [2, 3, 1]

      expect(array).to eq(expected_array)
    end
  end

  context 'with no root' do
    it 'returns nil' do
      expect(invert_tree(nil)).to eq(nil)
    end
  end
end
