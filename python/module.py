#!/usr/local/bin/python3

def some_function():
    print("Hello from some_function!")
    print("Module name:", __name__)
    

if __name__=="__main__":
    print("This module is being run directly")
else:
    print("This module is being imported.")