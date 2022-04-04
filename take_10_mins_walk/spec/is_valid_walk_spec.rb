require_relative '../lib/is_valid_walk'

RSpec.describe 'is_valid_walk' do
  it 'returns true from an array of directions' do
    walk = ['n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 's']

    expect(is_valid_walk(walk)).to eq(true)
  end

  it 'returns false from an array of short directions' do
    walk = ['w']

    expect(is_valid_walk(walk)).to eq(false)
  end

  it 'returns false for an invalid walk directions' do
    walk = ['s', 'e', 'w', 'e', 'n', 's', 'e', 'w', 'n', 's']

    expect(is_valid_walk(walk)).to eq(false)
  end
end
