#!/usr/bin/env python

def fibo(num):
    fibo_list = [1]
    a, b = 1, 1
    while a+b < num:
        a, b = b, a+b
        fibo_list.append(b)
    return fibo_list
    
    
if __name__ == '__main__':
    fibo(100)