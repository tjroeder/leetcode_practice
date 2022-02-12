require './136_single_number/lib/single_number'

RSpec.describe 'Single Number' do
  it 'returns a single number that does not have a pair' do
    nums = [2, 2, 1]

    expect(single_number(nums)).to eq(1)
  end

  it 'returns a single number that does not have a pair in larger set' do
    nums = [4, 1, 2, 1, 2]

    expect(single_number(nums)).to eq(4)
  end

  it 'returns a single number that when array size is one' do
    nums = [1]

    expect(single_number(nums)).to eq(1)
  end
end