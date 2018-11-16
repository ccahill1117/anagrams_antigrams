require ('pry')

class Grams
  attr_accessor(:first_string, :second_string, :common_array)

  def initialize(first_string, second_string)
    @first_string = first_string
    @second_string = second_string
    @common_array = []
  end

  def delete_others()
    self.first_string = self.first_string.split('')
    self.second_string = self.second_string.split('')

        num_punc_space = [' ','0','1','2','3','4','5','6','7','8','9','~','`','!','@','#','$','%','^','&','*','(',')','-','_','+','=','[',']','{','}','|',':',';','<',',','>','.','/','?']
        y = 0
        z = 0
          until (z > self.first_string.length-1)
            loop do
                if self.first_string[z] == num_punc_space[y]
                  self.first_string[z] = ''
                  y = y + 1
                else y = y + 1
              end
              if y > num_punc_space.length-1
                break
              end
            end
            y = 0
            z = z + 1
          end

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

  def is_word()
    if (self.first_string.include?("a") == false) && (self.first_string.include?("e") == false) && (self.first_string.include?("i") == false) && (self.first_string.include?("o") == false) &&
      (self.first_string.include?("u") == false)
      var = 1
    else var =0
    end
    if (self.second_string.include?("a") == false) && (self.second_string.include?("e") == false) && (self.second_string.include?("i") == false) && (self.second_string.include?("o") == false) &&
      (self.second_string.include?("u") == false)
      var = var + 2
    else var = var + 0
    end
    if var == 1
      "first string is not a word"
    elsif var == 2
      "second string is not a word"
    elsif var == 3
      "first and second strings are not words"
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
        if self.common_array == []
          "these are antigrams"
        elsif self.common_array != []
          "these are not antigrams"
        end
  end
end
