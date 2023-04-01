def substrings(word,arr) 
  result = arr.reduce(Hash.new(0)) do |result, item|
    if word == item 
      result[item] += 1
    end
    result
  end
  puts result
end


dictionary = ["below","down","go","below","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below",dictionary)