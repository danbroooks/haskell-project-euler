module Solutions where

multiplesOfThreeAndFive :: Integer -> Integer
multiplesOfThreeAndFive n = sum [ x | x <- [1..n-1], x `mod` 5 == 0 || x `mod` 3 == 0 ]

main :: IO ()
main = putStrLn "Run the tests with cabal test"
