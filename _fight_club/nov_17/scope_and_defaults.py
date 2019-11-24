# DEFAULT

# default arguments for a method are intialized ONCE per function definiton


def foo(c=[0]):
    print(id(c))
    c.append("potato")
    print(c)


foo()
foo()


# SCOPE

# 1. A function in python CAN access vairables declared outside of it:
# foo = "pop tart"


# def bar():
#     foo = "potato"


# bar()

# 2. If a function declares a variable, it cannot be accessed outside of that func


# def bar():
#     foo = "potato"


# bar()
# print(foo)

# 3. A block CAN access variables declared outside

# def bar():
#     bar = 'can'
#     if True:
#         print(bar)

# bar()

# 4. If a block declares a variable, it CAN be accessed outside of that block

# if True:
#     bar = 'kale'
# print(bar)
