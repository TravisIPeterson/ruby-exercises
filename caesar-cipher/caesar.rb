# frozen_string_literal: true

def caesar_cipher(string, int)
  ascii_string = string.bytes
  i = 0
  cipher_array = []
  while i < string.length
    ascii_string[i] += int
    if ascii_string[i] == 32 + int || ascii_string[i] < 65 + int
      ascii_string[i] -= int
    elsif ascii_string[i] > 90 && ascii_string[i] < 91 + int
      ascii_string[i] -= 26
    elsif ascii_string[i] > 122
      ascii_string[i] -= 26
    end
    cipher_array[i] = ascii_string[i].chr
    i += 1
  end
  cipher_string = cipher_array.join('')
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('ThIs Is a LOnGeR TeSt!!!', 23)
puts caesar_cipher('Th!$ T3$t h@s a L0t G0in6 On#@$%^&*(())', 11)

# and now, just for funsies, a decipher

def caesar_decipher(string, int)
  ascii_string = string.bytes
  i = 0
  cipher_array = []
  while i < string.length
    ascii_string[i] -= int
    if ascii_string[i] == 32 - int || ascii_string[i] < 65 - int
      ascii_string[i] += int
    elsif ascii_string[i] < 97 && ascii_string[i] > 96 - int
      ascii_string[i] += 26
    elsif ascii_string[i] < 65
      ascii_string[i] += 26
    end
    cipher_array[i] = ascii_string[i].chr
    i += 1
  end
  cipher_string = cipher_array.join('')
end

puts caesar_decipher('QeFp Fp x ILkDbO QbPq!!!', 23)
puts caesar_decipher("Es!$ E3$e s@d l W0e R0ty6 Zy\#@$%i&*(())", 11)
