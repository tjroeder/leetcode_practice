require_relative '../lib/climbing_stairs'

RSpec.describe 'Climbing Stairs' do
  it 'returns number of permutations to climb stairs with two steps' do
    expect(climb_stairs(2)).to eq(2)
  end

  it 'returns number of permutations to climb stairs with three steps' do
    expect(climb_stairs(3)).to eq(3)
  end

  it 'returns number of permutations to climb stairs with seven steps' do
    expect(climb_stairs(7)).to eq(21)
  end
end
