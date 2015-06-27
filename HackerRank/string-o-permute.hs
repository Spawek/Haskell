-- https://www.hackerrank.com/challenges/string-o-permute

import Control.Monad

solve :: String -> String
solve [] = []
solve (xs:xs2:tail) = xs2:xs:solve(tail)

main :: IO()
main = do
    n <- getLine
    lines <- replicateM (read n) getLine
    mapM_ (putStrLn . solve) lines
