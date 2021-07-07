def average(num_1, num_2) 
    (num_1 + num_2).to_f / 2
end

def average_array(arr)
    arr.inject {|al, ele| al + ele}.to_f / arr.length
end

def repeat(string, num)
    new_string = ""
    while num != 0
        new_string += string
        num -= 1
    end

    new_string
end

def yell(string)
    string.upcase + "!"
end

def alternating_case(sentence)
    words = sentence.split(" ")
    ans = []
    words.each_with_index do |word, i|
        if i == 0 || i % 2 == 0
            ans << words[i].upcase
        else
            ans << words[i].downcase
        end
    end

    ans.join(" ")
end

# p alternating_case("Hello All")