require_relative '../lib/validate_binary_search_tree'

RSpec.describe 'Validate Binary Search Tree' do
  context 'small binary tree with two leaves' do
    it 'returns true when valid' do
      three = TreeNode.new(3)
      one = TreeNode.new(1)
      root = TreeNode.new(2, one, three)

      expect(is_valid_bst(root)).to eq(true)
    end

    it 'returns false when invalid' do
      three = TreeNode.new(3)
      four = TreeNode.new(4)
      root = TreeNode.new(2, four, three)

      expect(is_valid_bst(root)).to eq(false)
    end
  end

  context 'larger tree with imbalanced branches' do
    it 'returns true when valid' do
      eight = TreeNode.new(8)
      six = TreeNode.new(6)
      seven = TreeNode.new(7, six, eight)
      one = TreeNode.new(1)
      root = TreeNode.new(5, one, seven)

      expect(is_valid_bst(root)).to eq(true)
    end

    it 'returns false when invalid' do
      six = TreeNode.new(6)
      three = TreeNode.new(3)
      four = TreeNode.new(4, three, six)
      one = TreeNode.new(1)
      root = TreeNode.new(5, one, four)

      expect(is_valid_bst(root)).to eq(false)
    end
  end
end
