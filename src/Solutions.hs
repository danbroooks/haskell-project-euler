module Solutions where

multiplesOfThreeAndFive :: Int -> Int
multiplesOfThreeAndFive n =
  sum [ x | x <- [1..n-1], x `mod` 5 == 0 || x `mod` 3 == 0 ]

evenFibonacciNumbers :: Int -> Int
evenFibonacciNumbers n = sum [ x | x <- takeWhile (< n) fibs, x `mod` 2 == 0 ]

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
