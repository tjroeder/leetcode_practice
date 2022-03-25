require_relative '../lib/maximum_subarray'

RSpec.describe 'Maximum Subarray' do
  context 'large array with a subarray' do
    it 'return the sum of the sub array' do
      nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

      expect(max_sub_array(nums)).to eq(6)
    end
  end

  context 'array with one element' do
    it 'returns the sumn of array' do
      nums = [1]

      expect(max_sub_array(nums)).to eq(1)
    end
  end

  context 'large array with no sub array' do
    it 'returns the sum of the array' do
      nums = [5, 4, -1, 7, 8]

      expect(max_sub_array(nums)).to eq(23)
    end
  end
end
