import Data.List (\\)  -- (\\) is set-difference for unordered lists

primesTo m = sieve [2..m]
             where 
             sieve (x:xs) = x : sieve (xs \\ [x,x+x..m])
             sieve [] = []
      -- or:
           = ps 
             where
             ps = map head $ takeWhile (not.null) 
                           $ scanl (\\) [2..m] [[p, p+p..m] | p <- ps]