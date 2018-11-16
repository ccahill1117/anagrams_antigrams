require ('rspec')
require ('anagrams')
require ('pry')


describe('Grams#initialize') do
  grams = Grams.new("deeps","speed")
  it('takes two user inputs') do
    expect(grams.first_string).to eq("deeps")
    expect(grams.second_string).to eq("speed")
  end
end

describe('Grams#anagram') do
  grams = Grams.new("deeps","speed")
  grams.anagram()
  it('takes two user inputs and turns into an array') do
    expect(grams.first_string).to eq(["d","e","e","p","s"])
    expect(grams.second_string).to eq(["s","p","e","e","d"])
  end
end
