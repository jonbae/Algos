# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.empty?
    lcp = strs[0] 
    strs.each do |str| 
        lcp.each_char.with_index do |char, i| 
             if(str[i] != lcp[i])
                 lcp = lcp[0...i]
             end
        end
    end
    
    return lcp
end 

print(longest_common_prefix(["flower","f", "flow", "flock"]))
print("\n")