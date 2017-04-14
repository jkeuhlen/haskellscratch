module Lib
  ( someFunc
  , myFunction
  , myFunctionT
  ) where

import Data.Text (Text)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | My function takes a string and gives it back to you 
myFunction :: String -> String
myFunction = id

-- | My function T takes a Text and gives it back to you 
myFunctionT :: Text -> Text
myFunctionT = id

averageThree :: Int -> Int -> Int -> Float
averageThree a b c = fromIntegral (a + b + c) / 3

howManyAverageThree :: Int -> Int -> Int -> Int
howManyAverageThree a b c = length $ filter (> avg) the_three
  where
    avg = averageThree a b c
    the_three = fromIntegral <$> [a, b, c]
