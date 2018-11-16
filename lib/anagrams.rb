require ('pry')

class Grams
  attr_accessor(:first_string, :second_string)

  def initialize(first_string, second_string)
    @first_string = first_string
    @second_string = second_string
  end

  def anagram()
    self.first_string = self.first_string.split('').sort
    self.second_string = self.second_string.split('').sort
    if self.first_string == self.second_string
      "The two strings are anagrams!"
    else "The two strings are NOT anagrams!"
    end
  end

end
