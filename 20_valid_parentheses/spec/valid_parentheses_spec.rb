require_relative '../lib/valid_parentheses'

RSpec.describe 'Valid Parentheses' do
  it 'returns true when closed parentheses' do
    s = '()'

    expect(is_valid(s)).to eq(true)
  end

  it 'returns true with different types of parens' do
    s = '()[]{}'

    expect(is_valid(s)).to eq(true)
  end

  it 'returns false if different parens close each other' do
    s = '(]'

    expect(is_valid(s)).to eq(false)
  end

  it 'returns true with nested parens' do
    s = '(())'

    expect(is_valid(s)).to eq(true)
  end

  it 'returns true with nested parens of different types' do
    s = '({([])()})'

    expect(is_valid(s)).to eq(true)
  end

  it 'returns false if not all nested parens are valid' do
    s = '({}})'

    expect(is_valid(s)).to eq(false)
  end

  it 'return false if nested parens do not allow other parens to be closed' do
    s = '({)}'

    expect(is_valid(s)).to eq(false)
  end
end