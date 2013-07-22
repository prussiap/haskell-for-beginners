-- Use folds to solve the following problems

-- Define a function that determines to total area of a list of rectangles
totalArea :: (Num a) => [(a,a)] -> a
totalArea myrect = foldl (+) 0 (map area myrect)
      where area (l,w) = l* w

-- Define a function that finds the dimensions of a rectangle that will
-- encompass every rectangle in a list (individually, not at all the same
-- time)
-- WHAT IS THE QUESTION ?
encompass :: (Ord a) => [(a,a)] -> (a,a)
encompass = foldl1 expand
    where expand (l1,w1) (l2,w2) = (max l1 l2, max w1 w2)

-- Define a function that determines the total magnitude (abs) of
-- multiples of 3 in a list. Do so only via fold, not using map or filter.
amountOfFizz :: [Integer] -> Integer
amountOfFizz = d

-- Define a function that determines if any rectangle in
-- a given list is big. A rectangle is big if its area is greater than 100.
anyBig :: (Num a, Ord a) => [(a,a)] -> Bool
anyBig = undefined

-- Define a function that flattens a list of pairs
flatten :: [(a,a)] -> [a]
flatten = undefined

-- Define a function that places a comma between every two strings in a
-- list of strings.
-- e.g. ["Hello", "Bob", "and Alice"] -> ["Hello", ",", "Bob", ",", "and Alice"]
separate :: [String] -> [String]
separate = undefined

-- Define a function that joins together a list of strings
join :: [String] -> String
join = undefined

-- Define a function that returns every suffix of a string
suffixes :: String -> [String]
suffixes = undefined

-- Define a function that returns every prefix of a string
prefixes :: String -> [String]
prefixes = undefined

