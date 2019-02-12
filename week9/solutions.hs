fact::Int -> Int
fact 0 = 1
fact n = n * fact( n - 1)

doubFact::Int-> Int
doubFact 0 = 1
doubFact 1 = 1
doubFact n = n* doubFact(n-2)

fibonacci::Int-> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci(n-2)
