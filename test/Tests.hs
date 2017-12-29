import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

import Solutions (multiplesOfThreeAndFive)

tests :: TestTree
tests = testGroup "tests" testCases
  where
    testCases =
      [ testCase "multiplesOfThreeAndFive"
      $ assertEqual "sum of numbers divisable by 3 and 5 less than 10" 23 (multiplesOfThreeAndFive 10)
      ]

main :: IO ()
main = defaultMain tests
