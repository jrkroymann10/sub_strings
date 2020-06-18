require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def string_checker(words_array, dictionary)
  subhash = {}
  for i in 0...words_array.length()
    for j in 0...dictionary.length()
      if subhash.has_key?(dictionary[j]) and words_array[i].include? dictionary[j]
        subhash[dictionary[j]] += 1
      elsif words_array[i].include? dictionary[j]
        subhash[dictionary[j]] = 1
      end
    end
  end
  p subhash
end

def sub_strings(words, dictionary)
  low_words = words.downcase
  low_words.gsub!(/[!@%&".,'?]/,'')
  words_array = low_words.split(" ")
  string_checker(words_array, dictionary)
end


sub_strings("Howdy partner, sit down! How's it going?", dictionary)