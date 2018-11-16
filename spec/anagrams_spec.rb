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

describe('Grams#anti') do
  grams = Grams.new("b","bb")
  grams.anti()
  it('if common element, then push common element to common array') do
    expect(grams.common_array).to eq(["b","b"])
  end
end

describe('Grams#anti') do
  grams = Grams.new("bbc","bbc")
  grams.anti()
  it('if common element, then push common element to common array') do
    expect(grams.common_array).to eq(["b","b","b","b","c"])
  end
end

describe('Grams#anti') do
  grams = Grams.new("ixxxxxxxx","yyyyyyyyi")
  it('can determine if antigrams or not') do
    expect(grams.anti()).to eq("these are not antigrams")
  end
end

describe('Gramsis_word') do
  grams = Grams.new("tbh","hi")
  it('can determine if one or more strings are either words or non-words') do
    expect(grams.is_word()).to eq("first string is not a word")
  end
end

grams = Grams.new("?","")
