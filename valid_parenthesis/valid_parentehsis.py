class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        closing = {
            ")": "(",
            "]": "[",
            "}": "{"
        }
        for char in s:
            print(char)
            if(len(stack) == 0):
                stack.append(char)
            elif(stack[-1] == closing[char]):
                stack.pop()
            else:
                stack.append(char)
        return len(stack) == 0


x = Solution()
x.isValid()
