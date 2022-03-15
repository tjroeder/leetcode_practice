require_relative '../lib/contains_duplicate'

RSpec.describe 'Contains Duplicate' do
  it 'returns true if theres is a duplicate' do
    nums = [ 1, 2, 3, 1]

    expect(contains_duplicate(nums)).to eq(true)
  end

  it 'returns false if theres is no duplicate' do
    nums = [ 1, 2, 3, 4]

    expect(contains_duplicate(nums)).to eq(false)
  end

  it 'returns true if theres is multiple duplicates' do
    nums = [ 1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

    expect(contains_duplicate(nums)).to eq(true)
  end
end
