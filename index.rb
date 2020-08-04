dictionary = ["being", "beautiful", "going", "gone", "how", "howl", "i", "it", 
  "jogging", "part", "partner", "run", "running", "see", "saw", "seen", "save", 
  "to", "toward"]

def get_substring(user_input, dictionary)
  output = Hash.new
  user_words = user_input.split(/[\s,']/).reject { |e| e.empty? }

  user_words.each do |word|
    frequency = dictionary.join(", ").downcase.scan(word.downcase).count
    output[word] = frequency
  end
  puts output
end

get_substring(gets.chomp, dictionary)
