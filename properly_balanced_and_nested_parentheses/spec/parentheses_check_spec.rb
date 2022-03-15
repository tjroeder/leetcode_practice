require_relative '../lib/parentheses_check'

RSpec.describe 'Properly Nested and Balanced' do
  it 'returns true if two properly nested parenthesis' do
    string = '(())'

    expect(properly_nested_and_balanced?(string)).to eq(true)
  end

  it 'returns true even if other characters are in string with proper parens' do
    string = '(()(words words words))'

    expect(properly_nested_and_balanced?(string)).to eq(true)
  end

  it 'returns false if not proper parens' do
    string = ')('

    expect(properly_nested_and_balanced?(string)).to eq(false)
  end

  it 'returns false even if there is one proper parens in string' do
    string = '())'

    expect(properly_nested_and_balanced?(string)).to eq(false)
  end
end
