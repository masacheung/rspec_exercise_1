def hipsterfy(word)
    vowel = "aeiou"
    char = word.split("")
    i = word.length
    is_vowel = false

    while is_vowel == false && i != 0
        i -= 1
        if vowel.include?(char[i])
            is_vowel = true
        end
    end

    if is_vowel == false 
        return word
    else
        return word[0...i] + word[i+1..-1]
    end
end

def vowel_counts(string)
    vowel = "aeiou"
    hash = Hash.new(0)
    string.downcase.each_char do |char|
        if vowel.include?(char)
            hash[char] += 1
        end
    end
    hash
end

def caesar_cipher(message, n)
    char_d = "abcdefghijklmnopqrstuvwxyz"
    char_u = "ABCDEFGHIJKLMNOPQRJTUVWXYZ"
    new_message = ""

    message.each_char do |char|
        if char_d.include?(char)
            idx = char_d.index(char)
            new_char = char_d[(idx+n)%26]
            new_message += new_char
        else
            new_message += char
        end
    end
    new_message
end
