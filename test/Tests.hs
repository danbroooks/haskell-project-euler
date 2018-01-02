import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

import Solutions
  ( multiplesOfThreeAndFive
  , evenFibonacciNumbers
  )

tests :: TestTree
tests = testGroup "tests" testCases
  where
    testCases =
      [ testCase "multiplesOfThreeAndFive"
      $ uncurry (assertEqual "sum of numbers divisable by 3 and 5 less than 10")
      (23, multiplesOfThreeAndFive 10)
      , testCase "evenFibonacciNumbers"
      $ uncurry (assertEqual "return the sum of all prime fib numbers up to four million")
      (4613732, evenFibonacciNumbers 4000000)
      ]

main :: IO ()
main = defaultMain tests
