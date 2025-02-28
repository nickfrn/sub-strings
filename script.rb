def substrings(string, dict)
  matches = Hash.new

  string_array = string.split(" ")

  string_array.each do |word|
    dict.each do |dict_word|
      if word.include?(dict_word)
        # If current match is not in hash, initialize it, otherwise update it
        unless matches[dict_word]
          matches[dict_word] = 1
        else
          matches[dict_word] += 1
        end
      end
    end
  end

  matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)