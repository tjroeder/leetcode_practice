require_relative '../lib/product_of_array_except_self'

RSpec.describe 'Product of Array Except Self' do
  context 'array with positive numbers' do
    it 'returns the product array with positive numbers' do
      nums = [1, 2, 3, 4]
      expected = [24, 12, 8, 6]

      expect(product_except_self(nums)).to eq(expected)
    end
  end

  context 'array with negative numbers and zero' do
    it 'returns product array with correct sign and 0 if multiplied by zero' do
      nums = [-1, 1, 0, -3, 3]
      expected = [0, 0, 9, 0, 0]

      expect(product_except_self(nums)).to eq(expected)
    end
  end
end
