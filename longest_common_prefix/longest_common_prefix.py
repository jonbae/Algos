class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 0:
            return "" 
        lcp = strs[0]
        for str in strs: 
            i=0
            while i < lcp.length: 
                if(str[i] != lcp[i]):
                    lcp = lcp[0:i]
        return lcp



    print(longestCommonPrefix(self,["asdf","awer","axcv"]))
