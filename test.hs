module Main (main) where

import System.Environment (getArgs)
import Math.NumberTheory.Primes

main :: IO ()
main = do
    args <- getArgs
    let lim = case args of
                (a:_) -> read a
                _     -> 1000000
    print . sum $ takeWhile (<= lim) primes