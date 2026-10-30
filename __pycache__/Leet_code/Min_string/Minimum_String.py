print("Enter string: ")
str=input()
str=str.upper()
print("Original input string: ",str)
i=0
while i<len(str):
    if (i+2)!=len(str):
        if (str[i:i+2]=="AB" or str[i:i+2]=="CD"):
            str=str.replace(str[i:i+2],"").strip()
            i=0
    if (i+2)==len(str):
        if (str[i:]=="AB" or str[i:]=="CD"):
            str=str[:i]
    i=i+1      
       
print("New string is: ",str)
print("Min length of new string: ",len(str))

    

