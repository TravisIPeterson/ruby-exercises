def caesar_cipher(string, int)
    ascii_string = string.bytes
    i = 0
    cipher_array = []
    while i < string.length
        ascii_string[i] += int
        cipher_array[i] = ascii_string[i].chr
        i += 1
    end
    cipher_string = cipher_array.join('')
end

print caesar_cipher('What a string!', 5)