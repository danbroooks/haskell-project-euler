module Test where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

import Solutions (multiplesOfThreeAndFive)

solutions :: TestTree
solutions = testGroup "solutions" [
    testCase "multiplesOfThreeAndFive"
      $ assertEqual "sum of numbers divisable by 3 and 5 less than 10" 23 (multiplesOfThreeAndFive 10)
  ]

tests :: TestTree
tests = testGroup "tests" [solutions]

main :: IO ()
main = defaultMain tests
