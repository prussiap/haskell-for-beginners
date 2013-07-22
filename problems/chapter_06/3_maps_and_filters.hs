-- Use map and filter to construct expressions
-- for the following calculations.

-- Double all the numbers from 1 to 10

mydouble == map(*2) [1..10]

-- Compute the first 20 perfect cubes.

cubes = map (*3) [1..20]

-- Greet [Bob, Alice, and Eve] by adding "Hello, " in front each name.

greet = map ("Hello, " ++) ["Bob", "Alice", "Eve"]

-- Find all the odd numbers in [2,13,7,14,4,15,6,8,9,11]

isodd = filter odd [2,13,7,14,4,15,6,8,9,11]

-- Find all the even perfect cubes greater than 30 up to 1000

perfectcube = filter (>30_) (filter even (map (*3) [1..]))
-- Create a list of all the positive even numbers (using filter)

poseven = filter even [1..]
-- Create a list of all the positive even numbers (using map)

posevenmap = map (*2) [1..]

-- Find all the perfect squares less than 10,000

perfectsqures = filter (<10000) (map(^2) [1..])

-- Find all the proper divisors of 8128. These are the positive
-- integers that divide it evenly and are less than it.
divisors = filter exactdiv [1..8127]
        where exactdiv n = (8128 `mod` n ) == 0
