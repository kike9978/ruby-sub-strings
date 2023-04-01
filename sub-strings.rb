require "pry-byebug"

def substrings(word,arr) 
  word_arr = word.downcase.split
  result = arr.reduce(Hash.new(0)) do |result, item|
    word_arr.each do |word| 
      iterate_substring(word).each do |substring|
        result[item] += 1 if substring == item 
        # binding.pry
        end
      end
    result
  end
  result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def iterate_substring(word)
  string_range = (0..word.size)
  i = 0
  
  sub_string_arr = []
  word.each_char do |c| 
    substring = word[(i..word.size)]
    sub_string_arr.push(substring)
    i += 1
  end
  sub_string_arr
end

p substrings("below Howdy partner, sit down! How's it going?",dictionary)

# p iterate_substring("hola")
