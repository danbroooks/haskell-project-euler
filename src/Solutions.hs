module Solutions where

import qualified Data.List as L
import           Safe

multiplesOfThreeAndFive :: Int -> Int
multiplesOfThreeAndFive n =
  sum [ x | x <- [1..n-1], x `mod` 5 == 0 || x `mod` 3 == 0 ]

evenFibonacciNumbers :: Int -> Int
evenFibonacciNumbers n =
  sum [ x | x <- takeWhile (< n) fibs, x `mod` 2 == 0 ]

largestPrimeFactor :: Int -> Maybe Int
largestPrimeFactor =
  maximumMay . primeFactors

primeFactors :: Int -> [Int]
primeFactors n = L.unfoldr findP n
  where
    findP n =
      

primes :: [Int]
primes =
  2 : 3

fibs :: [Int]
fibs =
  0 : 1 : zipWith (+) fibs (tail fibs)
