# @param {String} address
# @return {String}
def defang_i_paddr(address)
    defanged = []
    address.each_char.with_index do |char, i| 
        if char == "."
            defanged.push("[#{char}]") 
        else
            defanged.push(char) 
        end
    end
    defanged.join()
    
end