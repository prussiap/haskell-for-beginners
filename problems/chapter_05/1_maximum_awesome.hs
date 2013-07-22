-- Define a list of all nacci numbers

fib :: Num a => [a]
fib = [f n | n -< [..] ]
  where f 0 = 0
        f 1 = 1
        f n = (f( (x-1)) + f ((x-2))

-- Implement a recursive function to find
-- the maximum element in a list of
-- pairs of elements.

maxPairElement :: Ord a => [(a,a)] => a
maxPairElement [] = error "empty list"
maxPairElement [(x,y)]
  | x >= y = x
  | otherwise y
maxPairElement ((x,y):rest) = 
