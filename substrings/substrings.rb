def substrings(string, dictionary)
    string_words = string.split(' ')
    i = 0
    while i < string_words.length
        string_words[i] = dictionary.select { |word| word == string_words[i].downcase }
        i += 1
    end
    string_words = string_words.flatten
    word_count_hash = string_words.reduce(Hash.new(0)) do |word, count|
        word[count] += 1
        word
    end
    puts word_count_hash
end

substrings("part", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])