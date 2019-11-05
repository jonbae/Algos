# @param {String} s
# @return {Integer}
def roman_to_int(s)
    mapping = {
        "I" => 1, 
        "V" => 5, 
        "X" => 10, 
        "L" => 50, 
        "C" => 100, 
        "D" => 500, 
        "M" => 1000
    }
    total = 0
    s.each_char.with_index do |char, i| 
        print(total)
        total += mapping[char]
        print(" ")
        print(total)
        if s[i-1] != char && i > 0
            if(s[i-1] == "I")
                total -= 2
            elsif(s[i-1] == "V" && char != "I")
                total -= 10
            elsif(s[i-1] == "X" && (char != "I" || char != "V"))
                total -= 20
            elsif(s[i-1] == "L" && (char != "I" || char != "V" || char != "X"))
                total -= 100 
            elsif(s[i-1] == "C" && (char != "I" || char != "V" || char != "X" || char != "L"))
                total -= 200
            elsif(s[i-1] == "D" && (char == "M"))
                total -= 1000
            # elsif(s[i-1] == "M")
            #     total -= 2000
            end
        end
        print(" ")
        print(total)
        print("\n")

    end
    return total
end

# print(roman_to_int("LVIII"))
# print(roman_to_int("LCVIII"))
print(roman_to_int("XI"))
print("\n")
print(roman_to_int("IX"))
print("\n")