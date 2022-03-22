require_relative '../lib/max_depth_binary_tree'

RSpec.describe 'Max Depth of Binary Tree' do
  context 'larger tree' do
    let!(:neg_five) { TreeNode.new(-5) }
    let!(:nine) { TreeNode.new(9, nil, neg_five) }
    let!(:neg_three) { TreeNode.new(-3, nil, nine) }
    let!(:six) { TreeNode.new(6) }
    let!(:eight) { TreeNode.new(8, neg_three, six) }
    let!(:neg_seven) { TreeNode.new(-7) }
    let!(:root) { TreeNode.new(7, neg_seven, eight) }

    it 'returns the max depth for the larger tree' do
      expect(max_depth(root)).to eq(5)
    end
  end

  context 'large tree' do
    let!(:seven) { TreeNode.new(7) }
    let!(:fifteen) { TreeNode.new(15) }
    let!(:twenty) { TreeNode.new(20, fifteen, seven) }
    let!(:nine) { TreeNode.new(9) }
    let!(:root) { TreeNode.new(3, nine, twenty) }

    it 'return max depth' do
      expect(max_depth(root)).to eq(3)
    end
  end  

  context 'small tree' do
    let!(:two) { TreeNode.new(2) }
    let!(:root) { TreeNode.new(1, nil, two) }

    it 'return max depth' do
      expect(max_depth(root)).to eq(2)
    end
  end

  context 'no leaves connected to root' do
    it 'return max depth of 1 node' do
      root = TreeNode.new(5, nil, nil)

      expect(max_depth(root)).to eq(1)
    end
  end

  context 'no root is given' do
    it 'return 0 if no root is given' do
      root = nil

      expect(max_depth(root)).to eq(0)
    end
  end
end
