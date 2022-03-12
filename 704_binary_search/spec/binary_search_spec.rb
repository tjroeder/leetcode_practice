require_relative '../lib/binary_search'

RSpec.describe 'Binary Search' do
  it 'returns the target number' do
    nums = [-1,0,3,5,9,12]
    target = 9

    expect(search(nums, target)).to eq(4)
  end

  it 'returns negative one if it cannot be found' do
    nums = [-1,0,3,5,9,12]
    target = 2

    expect(search(nums, target)).to eq(-1)
  end
end
