import Data.List (sortBy)

-- 1. double: Multiplies a number by 2
double :: Int -> Int
double x = x * 2

main1 :: IO ()
main1 = print (double 4)  -- Output: 8

-- 2. increment: Increases a number by 1
increment :: Int -> Int
increment x = x + 1

main2 :: IO ()
main2 = print (increment 4)  -- Output: 5

-- 3. doubleThenIncrement: Uses composition (double first, then increment)
doubleThenIncrement :: Int -> Int
doubleThenIncrement = increment . double

main3 :: IO ()
main3 = print (doubleThenIncrement 4)  -- Output: 9

-- 4. circleArea: Pure function for area of a circle
circleArea :: Floating a => a -> a
circleArea r = pi * r * r

main4 :: IO ()
main4 = print (circleArea 3)  -- Output: 28.274333882308138

-- 5. greaterThan18: Check if a number is greater than 18
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

main5 :: IO ()
main5 = print (greaterThan18 20)  -- Output: True

-- 6. Player data functions
type Player = (String, Int)

extractPlayers :: [Player] -> [String]
extractPlayers = map fst

sortByScore :: [Player] -> [Player]
sortByScore = reverse . sortBy (\(_, s1) (_, s2) -> compare s1 s2)

topThree :: [Player] -> [Player]
topThree = take 3

getTopThreePlayers :: [Player] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

main6 :: IO ()
main6 = do
  let players = [("Alice", 25), ("Bob", 30), ("Charlie", 20), ("Dave", 28)]
  print (getTopThreePlayers players)  -- Output: ["Bob","Dave","Alice"]

-- 7. infiniteNumbers and takeN
infiniteNumbers :: [Int]
infiniteNumbers = [1..]

takeN :: Int -> [Int]
takeN n = take n infiniteNumbers

main7 :: IO ()
main7 = print (takeN 5)  -- Output: [1,2,3,4,5]

-- 8. addNumbers: Adds two integers
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

main8 :: IO ()
main8 = print (addNumbers 3 7)  -- Output: 10

-- 9. fToC: Fahrenheit to Celsius
fToC :: Floating a => a -> a
fToC f = (f - 32) * 5 / 9

main9 :: IO ()
main9 = print (fToC 100)  -- Output: 37.77778

-- 10. applyTwice: Applies a function twice
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main10 :: IO ()
main10 = print (applyTwice (+1) 3)  -- Output: 5
