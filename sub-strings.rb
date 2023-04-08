require "pry-byebug"

def substrings(text, dictionary) 
  result = Hash.new(0)
  downcase_text = text.downcase

  dictionary.each do |word|
    # scan search in all the phrase for the string or regex in te argument, it return an array of th elements found
    matches = downcase_text.scan(word).length
    result[word] = matches unless matches == 0
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substrings("Howdy partner, sit down! How's it going?", dictionary)