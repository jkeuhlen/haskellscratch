module Main where

import Lib

main :: IO ()
main = do 
  putStrLn "Test1" 
  putStrLn $ myFunction "Hello World!"

