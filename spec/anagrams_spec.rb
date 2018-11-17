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

describe('Grams#anagram1') do
  grams = Grams.new("deeps","speed")
  grams.is_word()
  grams.delete_others()
  grams.anti()
  it('takes two user inputs and returns if anagrams') do
    expect(grams.anagram1()).to eq("The two strings are anagrams!")
  end
end

describe('Grams#anagram1') do
  grams = Grams.new("deeps","spee")
  grams.is_word()
  grams.delete_others()
  grams.anti()
  it('takes two user inputs and returns if not anagrams') do
    expect(grams.anagram1()).to eq("The two strings are NOT anagrams!")
  end
end

describe('Grams#anagram1') do
  grams = Grams.new("DeEps","sPeed")
  grams.is_word()
  grams.delete_others()
  grams.anti()
  it('takes two user inputs and returns if anagrams, regardless of case') do
    expect(grams.anagram1()).to eq("The two strings are anagrams!")
  end
end

describe('Grams#anagram1') do
  grams = Grams.new("DeEps","sPed")
  it('takes two user inputs and returns if anagrams, regardless of case') do
    expect(grams.anagram()).to eq("The two strings are NOT anagrams!")
  end
end

describe('Grams#is_word') do
  grams = Grams.new("tbh","hi")
  it('can determine if one or more strings are either words or non-words') do
    expect(grams.is_word()).to eq("first string is not a word")
  end
end


describe('Gramsis_word') do
  grams = Grams.new("? hi !","? hi !")
  it('delete non letter chars and return both are words') do
    expect(grams.is_word()).to eq("these are words")
  end
end

describe('Gramsis_word') do
  grams = Grams.new("okay does this work?","?krow siht seod yako")
  it('returns all descriptors') do
    expect(grams.anagram()).to eq("The two strings are anagrams!")
  end
end
