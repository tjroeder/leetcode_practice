require_relative '../lib/valid_anagram'

RSpec.describe 'Valid Anagram' do
  it 'returns true if the words are anagrams' do
    s = 'anagram'
    t = 'nagaram'

    expect(is_anagram(s, t)).to eq(true)
  end

  it 'returns false if the words are not anagrams' do
    s = 'rat'
    t = 'car'

    expect(is_anagram(s, t)).to eq(false)
  end

  it 'returns true if strings are one letter' do
    s = 'a'
    t = 'a'

    expect(is_anagram(s, t)).to eq(true)
  end

  it 'returns false if strings are different lengths' do
    s = 'a'
    t = 'ab'

    expect(is_anagram(s,t)).to eq(false)
  end
end
