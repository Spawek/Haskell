-- https://www.hackerrank.com/challenges/super-digit

import Control.Monad
import Data.List.Split

digitsSum :: Integer -> Integer
digitsSum x | x < 10 = x
            | otherwise = x `mod` 10 + digitsSum (x `div` 10)

superDigit :: Integer -> Integer -> Integer
superDigit n k = superDigit2 ((digitsSum n) * k)

superDigit2 :: Integer -> Integer
superDigit2 x | x < 10 = x
              | otherwise = superDigit2 (digitsSum x)

solve :: String -> Integer
solve x = superDigit n k
    where
        splitted = (splitOn " " x)
        n = read $ splitted !! 0
        k = read $ splitted !! 1

main :: IO()
main = do
    lines <- replicateM 1 getLine -- doesnt work well on big integers
    print lines
    mapM_ (print . solve) lines -- THIS SUCKS - learn monads better! (use "interact"?)
