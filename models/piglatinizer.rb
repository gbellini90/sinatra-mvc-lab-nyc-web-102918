#myattempt
# class PigLatinizer
#
#   def piglatinize(string)  #hello there
#     array_of_words=string.split(" ")  #["hello", "there", "outside"]
#     array_of_words.each do |element|
#       if element.start_with?(/a,e,i,o,u/)
#         element.concat("way")
#       else
#         element.find do |letter| #['h','e','l','l','o']
#         letter == (/a,e,i,o,u/)  #should find e for hello
#           letter.index
#           element[index]
#
# end

#solutionfound

class PigLatinizer


     def piglatinize(sentence)
          sentence_array = sentence.split(' ')
          sentence_array = sentence_array.map{|word| piglatinize_word(word)}
          sentence_array.join(' ')
     end


    def piglatinize_word(word)
          first_vowel = word.split('').find{|letter| letter.downcase.include?('a') || letter.downcase.include?('e') || letter.downcase.include?('i') ||
          letter.downcase.include?('o') ||
          letter.downcase.include?('u') }

          number = word.split('').find_index(first_vowel)
          word_array = word.split('').rotate(number)

          if word_array.last.downcase == 'i' || word_array.last.downcase == 'e' || word_array.last.downcase == 'o' || word_array.last.downcase == 'u'|| word_array.last.downcase == 'a'
               word_array.join('') + 'way'
          elsif  word_array.join('') == word
               word_array.join('') + 'way'
          else
               word_array.join('') + 'ay'
          end

    end
end
