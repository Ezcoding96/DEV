print("input a string: ")
s=input()
stack=[]
for i in s:
    stack.append(i)
    print(stack)
    if len(stack)>1:
        if "".join(stack[-2:]) in ["AB","CD"]: #joins the last two entered elements in the list (stack) 
            stack.pop()
            stack.pop()
print(len(stack))
