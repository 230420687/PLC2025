module Main where

main =
    do
    print (myFunc1 5)
    print (myFunc2 10)
    print (rdFunc)

myFunc1 x = x*10
myFunc2 x = x*2
rdFunc = "Hello, this is 3rd Func"
--variables can't begin with numbers and must start in lowercase letters