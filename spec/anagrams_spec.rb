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
  it('takes two user inputs and returns if anagrams') do
    expect(grams.anagram()).to eq("The two strings are anagrams!")
  end
end

describe('Grams#anagram') do
  grams = Grams.new("deeps","spee")
  it('takes two user inputs and returns if not anagrams') do
    expect(grams.anagram()).to eq("The two strings are NOT anagrams!")
  end
end

describe('Grams#anagram') do
  grams = Grams.new("DeEps","sPeed")
  it('takes two user inputs and returns if anagrams, regardless of case') do
    expect(grams.anagram()).to eq("The two strings are anagrams!")
  end
end

describe('Grams#anagram') do
  grams = Grams.new("DeEps","sPed")
  it('takes two user inputs and returns if anagrams, regardless of case') do
    expect(grams.anagram()).to eq("The two strings are NOT anagrams!")
  end
end
