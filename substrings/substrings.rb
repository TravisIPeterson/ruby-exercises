dictionary_array = ["Below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    word_count = Hash.new(0)
    dictionary = dictionary.join(' ').downcase.split(' ')
    dictionary.each do |word|
        if string.scan(word).count > 0
            word_count[word] = string.downcase.scan(word).count
        end
    end
    word_count
end

puts substrings("below them black white red blue Below Go GO gO going go down how howdy Horn", dictionary_array)