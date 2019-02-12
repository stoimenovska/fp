--task 1
fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

--task 2
doubFact :: Int -> Int
doubFact 0 = 1
doubFact 1 = 1
doubFact n = n * doubFact (n - 2)

--task3 
fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

--task 4
sum' :: Int-> Int -> Int
sum' start end
 | start > end  = 0
 | start == end = start
 | otherwise = start + sum' (start + 1) end
 
--task 5
sumEven :: Int -> Int -> Int
sumEven a b 
 | a > b     = 0
 | even a    = a + sumEven (a + 2) b
 | otherwise = sumEven (a + 1) b

--task 6
length' :: Int -> Int
length' n = if (n < 10)
            then 1
            else 1 + length' (n `div` 10)

reverse' :: Int -> Int
reverse' n
 | n < 10 = n
 | otherwise = (n `mod` 10) * (10 ^ (length' n - 1)) + reverse' (n `div` 10)

--task 7
palindrome :: Int -> Bool
palindrome n = n == (reverse' n)

--task 8
prime :: Int -> Bool
prime 1 = True
prime n = help 2 n
   where divides a b = b `mod` a == 0
         help i n
           | i == n      = True
           | divides i n = False
           | otherwise   = help (i + 1) n

