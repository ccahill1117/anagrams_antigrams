require ('pry')

class Grams
  attr_accessor(:first_string, :second_string, :common_array)

  def initialize(first_string, second_string)
    @first_string = first_string
    @second_string = second_string
    @common_array = []
  end

  def anagram()
    self.is_word()
    self.delete_others()
    self.anti()
    self.anagram1()
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
      self.first_string = self.first_string.reject { |emp| emp.empty? }
    p = 0
    g = 0
      until (g > self.second_string.length-1)
        loop do
          if self.second_string[g] == num_punc_space[p]
            self.second_string[g] = ''
            p = p + 1
          else p = p + 1
          end
          if p > num_punc_space.length-1
            break
          end
        end
        p = 0
        g = g + 1
      end
      self.second_string = self.second_string.reject { |emp| emp.empty? }
  end

  def anagram1()
    if self.first_string.sort == self.second_string.sort
      "The two strings are anagrams!"
    else
      "The two strings are NOT anagrams!"
    end
  end

  def is_word()
    var = 0
    if (self.first_string.downcase.include?("a") == false) && (self.first_string.downcase.include?("e") == false) && (self.first_string.downcase.include?("i") == false) && (self.first_string.downcase.include?("o") == false) &&
      (self.first_string.downcase.include?("u") == false)
      var = var + 1
    else var = var + 0
    end
    if (self.second_string.downcase.include?("a") == false) && (self.second_string.downcase.include?("e") == false) && (self.second_string.downcase.include?("i") == false) && (self.second_string.downcase.include?("o") == false) &&
      (self.second_string.downcase.include?("u") == false)
      var = var + 2
    else var = var + 0
    end
    if var == 1
      p "first string is not a word"
    elsif var == 2
      p "second string is not a word"
    elsif var == 3
      p "first and second strings are not words"
    elsif var == 0
      p "these are words"
    end
  end

  def anti()
    self.first_string = self.first_string.map  {|letter| letter.downcase()}
    self.second_string = self.second_string.map {|letter| letter.downcase()}
    y = 0
    z = 0
      until (z > first_string.length-1)
        loop do
            if first_string[z] == second_string[y]
              self.common_array.push(second_string[y])
              y = y + 1
            else y = y + 1
          end
          if y > second_string.length-1
            break
          end
        end
        y = 0
        z = z + 1
      end
      if self.common_array == []
      p "these are antigrams"
      elsif self.common_array != []
      p "these are not antigrams"
      end
  end
end
