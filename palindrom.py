class palindrom:
    def __init__(self, a:str):
        self.a=a
    
    def show(self):
        print("String is: ",self.a)

    def checkPalindrom(self):
        temp_string=self.a.lower()
        reverse_string=temp_string[::-1]
        if temp_string==reverse_string:
            return True
        else:
            return False