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
sumDivisors :: Int -> Int
sumDivisors n = helper 1 n
   where helper i n 
           | i > n            = 0
           | (n `mod` i) == 0 = i + helper (i + 1) n 
           | otherwise        = helper (i + 1) n 
       
--task 8
palindrome :: Int -> Bool
palindrome n = n == (reverse' n)

--task 9 
prime :: Int -> Bool
prime 1 = True
prime n = help 2 n
   where divides a b = b `mod` a == 0
         help i n
           | i == n      = True
           | divides i n = False
           | otherwise   = help (i + 1) n

--task 10
gcd' :: Int -> Int -> Int
gcd' a b
  | a == b = a 
  | a > b = gcd' (a - b) b
  | otherwise = gcd' a (b - a)

coprime :: Int -> Int -> Bool
coprime a b = gcd' a b == 1

--task 11
goldbrach :: Int -> (Int, Int)
goldbrach n = helper 1 n
  where helper i number
          | i == number                   = error "wrong"
          | prime i && prime (number - i) = (i, n - i)
          | otherwise                     = helper (i + 1) n
          
--task 12
euler :: Int -> Int
euler n = helper 1 n
  where helper i n
          | i > n       = 0
          | coprime i n = 1 + helper (i + 1) n
          | otherwise   = helper (i + 1) n

