# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    closing = {")"=>"(","]"=>"[","}" =>"{"}
    # stack.push(s[0])
    s.each_char.with_index do |char,i| 
        if(stack.empty?)
            stack.push(char)
        elsif(stack.last == closing[char])
            stack.pop()
        else
            stack.push(char)
        end
    end

    return stack.empty?
end



print("#{is_valid("()")}\n")
print("#{is_valid("([]))")}\n")
print("#{is_valid("({})()()")}\n")
print("#{is_valid("()(")}\n")

