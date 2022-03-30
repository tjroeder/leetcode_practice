require_relative '../lib/valid_palindrome'

RSpec.describe 'Valid Palindrome' do
  context 'a palindrome string with upper and lower case, and special characters' do
    it 'returns true' do
      string = 'A man, a plan, a canal: Panama'

      expect(is_palindrome(string)).to eq(true)
    end
  end

  context 'a non palindrome string with spaces' do
    it 'returns false' do
      string = 'race a car'

      expect(is_palindrome(string)).to eq(false)
    end
  end

  context 'a blank space' do
    it 'returns true' do
      string = ' '

      expect(is_palindrome(string)).to eq(true)
    end
  end

  context 'a single letter' do
    it 'returns true' do
      string = 'a'

      expect(is_palindrome(string)).to eq(true)
    end
  end

  context 'a letter and number' do
    it 'returns false' do
      string = '0P'

      expect(is_palindrome(string)).to eq(false)
    end

  end
end
