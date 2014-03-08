require('rspec')
require('numbers_in_words')

describe('numbers_in_words') do
  it('should translate integers into English') do
    numbers_in_words(8).should(eq("eight"))
  end
end
