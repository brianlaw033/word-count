require 'pry'
class String
  define_method(:word_count1) do |word|
    words = self.split(" ")
    result = 0
    words.each do |wordToFind|
      if wordToFind == word
        result += 1
      end
    end
    result
  end

  define_method(:word_count2) do |word|
    result = self.scan(word).length
  end
end

  # define_method(:word_count2) do |word|
  #   length = self.length-1
  #   result = 0
  #   length.times do |i|
  #     if self[i,word.length] == word
  #       result += 1
  #     end
  #   end
  #   result
  # end
