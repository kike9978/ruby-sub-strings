require "pry-byebug"

def substrings(word,arr) 
  word_arr = word.split
  result = arr.reduce(Hash.new(0)) do |result, item|
      word_arr.each { |word| result[item] += 1 if word == item }
    result
  end
  puts result
end


dictionary = ["below","down","go","below","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below down",dictionary)
def iterate_substring(word)
  string_range = (0..word.size)
  i = 0
  word.each_char do |c| 
    puts word[(i..word.size)]
    
    i += 1
  end
end


iterate_substring("hola")
