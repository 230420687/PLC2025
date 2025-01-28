--the below is simple conditionals
--sgn x = if x < 0 then -1 else if x == 0 then 0 else 1

--this uses guards which are more readable than conditionals
sgn x   | X < 0 = -1
        | x == 0 =0
        | otherwise =1
main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgn (x)) )