require ('rspec')
require ('anagrams')
require ('pry')

describe('Grams#initialize') do
  it('takes two user inputs') do
    grams = Grams.new("hey","hi")
    expect(grams.first_string).to eq("hey")
    expect(grams.second_string).to eq("hi")
  end
end
