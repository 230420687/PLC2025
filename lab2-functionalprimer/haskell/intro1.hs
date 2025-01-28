module Intro1 where

-- define named constants:
r1 = 1
r2 = b^2 + 1/b where b = 2

-- define a function:
diff a b = abs (a - b)
--the inside differnece function is ran first
--after the the outside is ran
r3 = diff (diff a a) a  where a = 1
r4 = diff (diff a b) b  where a = 1; b = 1

-- lists by enumeration
r5 = [1,3,4,1]
r6 = [1..5]

inc n = n + 1
-- each element in the list is incremented by +1
r7 = map inc [1..3]
r8 = map (diff 2) [1..3]
r9 = map sqrt [1..3]

--this maps each number in the zip list with the sqrt list
r10 = zip [1..3] (map sqrt [1..3])
r11 = zip [1..3] (map sqrt [1..2])

r12 = print [1..3]

main :: IO ()
main = pure ()