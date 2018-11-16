require ('pry')

class Grams
  attr_accessor(:first_string, :second_string, :common_array)

  def initialize(first_string, second_string)
    @first_string = first_string
    @second_string = second_string
    @common_array = []
  end

  def anagram()
    self.first_string = self.first_string.split('').sort
    self.second_string = self.second_string.split('').sort
      self.first_string.map! {|letter| letter.downcase()}
      self.second_string.map! {|letter| letter.downcase()}
    if self.first_string.sort == self.second_string.sort
      "The two strings are anagrams!"
    else "The two strings are NOT anagrams!"
    end
  end

  def anti()
    self.first_string = self.first_string.split('').sort
    self.second_string = self.second_string.split('').sort
    self.first_string.map! {|letter| letter.downcase()}
    self.second_string.map! {|letter| letter.downcase()}
    y = 0
    z = 0
      until (z > self.first_string.length-1)
        loop do
            if self.first_string[z] == self.second_string[y]
              self.common_array.push(self.second_string[y])
              y = y + 1
            else y = y + 1
          end
          if y > self.second_string.length-1
            break
          end
        end
        y = 0
        z = z + 1
      end
        if (self.common_array == [])
          "these are antigrams"
        elsif (self.common_array != [])
          "these are not antigrams"
        end
  end
end
