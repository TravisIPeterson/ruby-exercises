def substrings(string, dictionary)
    string_words = string.split(' ')
    dictionary_string = dictionary.join(' ')
    word_count = Hash.new(0)
    string_words.each do |word|
        if dictionary_string.scan(word).count > 0
            word_count[word] = dictionary_string.scan(word).count
        end
    end
    puts word_count
end

substrings("part", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])