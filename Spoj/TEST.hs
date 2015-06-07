-- http://www.spoj.com/problems/TEST/

import Control.Monad

main :: IO()
main = do
    line <- getLine
    unless (line == "42") $ do
        print (read line :: Int)
        main