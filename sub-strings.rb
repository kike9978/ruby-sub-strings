def substrings(word,arr) 
  word_arr = word.split
  result = arr.reduce(Hash.new(0)) do |result, item|
      word_arr.each { |word| result[item] += 1 if word == item }
    result
  end
  puts result
end


dictionary = ["below","down","go","below","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below down",dictionary)