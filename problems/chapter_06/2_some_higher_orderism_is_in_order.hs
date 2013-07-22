-- For all the functions you define in these problems,
-- write the type signature before you start writing
-- the definition.

-- Define a function that applies another function
-- to each element of a pair.

mapP :: (a -> b) -> (a,a) -> (b,b)
mapP f (x,y) = (f x, f y)

-- Use your function above to write a function
-- that scales (multiplies) a pair by a given
-- factor.

-- first factor a is because of the n
scaleP :: Num a => a -> (a,a) -> (a,a)
scaleP n = mapP (n*)

-- Define a function that applies a function to
-- each element of a list.

mapL :: (a->b) -> [a] -> [b]
mapL f [] = []
mapL f (x:xs) = f x:mapL f xs


-- Use your functions above to define a function that
-- scales every pair in a list of pairs by ten.

scalePByTen :: Num a => [(a,a)] -> [(a,a)]
scalePByTen = mapL (scaleP 10)

-- Define a function that accepts a function and an
-- initial value. It should return the list of values
-- produced by repeatedly applying the function to its
-- own return value.


-- Initial value not added
arecursive' :: (a -> a) -> a ->[a]
arecursive' f x = x:arecursive' f (f x)

-- Use your functions above to define a function that
-- takes a pair and returns a list of all (infinitely many)
-- pairs by scaling that pair by powers of ten.

pairScaling' :: Num a => (a,a) -> [(a,a)]
pairScaling' = arecursive' (scaleP 10)

