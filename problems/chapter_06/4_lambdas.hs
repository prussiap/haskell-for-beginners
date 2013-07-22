-- Define the following funtions using lambda
-- notation.

timesTwo :: Num a => a -> a
timesTwo = ( \x -> x*2)

triangleArea :: Fractional a => a -> a -> a
triangleArea = (\ x y -> x * y *.5)

jamesBondIntroduction :: String -> String -> String
jamesBondIntroduction = \ j b -> bond ++ ", " ++ james ++ " " ++ bond

rectangularVolume :: Num a => a -> a -> a -> a
rectangularVolume = \l w h -> l * w * h

-- Use lambdas to perform the following maps and filters

-- Compute the areas of these rectangles: [(1,2),(3,4),(5,6)]
rectarea = map (\(l,w) -> l*w) [(1,2),(3,4),(5,6)] 
-- Pick out all the vowels from "Bond, James Bond"

bondvowels = filter (\v -> v `elem` aeiou) "Bond, James Bond" 

-- Write a function to pick out all the numbers in a list greater
-- than a given number

allgreater :: Orda => a -> [a] -> [a]
allgreater n = filter (\x -> x>n)

