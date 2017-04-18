require('rspec')
require('scrabble_code')

describe('String#word_score') do
  it("will return 'word' when user inputs any string") do
    expect(("word").word_score()).to(eq("word"))
  end
end
