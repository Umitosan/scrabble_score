require('rspec')
require('scrabble_code')

describe('String#word_score') do

  it("will return '123' when passed '123' ") do
    my_str = "123"
    expect((my_str).word_score()).to(eq("123"))
  end

  it("will return correct score for single letter inputted") do
    my_str = "K"
    expect((my_str).word_score()).to(eq("5"))
  end

end
