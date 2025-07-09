-- HC2T1 - Task 1: Expected Types
-- 42 :: Int
-- 3.14 :: Fractional a => a (typically Double)
-- "Haskell" :: String
-- 'Z' :: Char
-- True && False :: Bool

main1 :: IO ()
main1 = do
  print (42)            -- Int
  print (3.14)          -- Double
  print ("Haskell")     -- String
  print ('Z')           -- Char
  print (True && False) -- Bool

-- HC2T2 - Task 2: Function Type Signatures and Implementations

add :: Int -> Int -> Int
add x y = x + y

main2 :: IO ()
main2 = print (add 10 5) -- Output: 15

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

main3 :: IO ()
main3 = print (isEven 4) -- Output: True

concatStrings :: String -> String -> String
concatStrings s1 s2 = s1 ++ s2

main4 :: IO ()
main4 = print (concatStrings "Hello, " "world!") -- Output: "Hello, world!"

-- HC2T3 - Task 3: Immutable Variables

myAge :: Int
myAge = 25

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hi Besti!"

isHaskellFun :: Bool
isHaskellFun = True

main5 :: IO ()
main5 = do
  print myAge
  print piValue
  print greeting
  print isHaskellFun
  -- myAge = 30 -- Uncommenting this will cause a compile-time error (immutability)

-- HC2T4 - Task 4: Infix & Prefix Notation

main6 :: IO ()
main6 = do
  -- Infix to prefix
  print ((+) 5 3)
  print ((*) 10 4)
  print ((&&) True False)

  -- Prefix to infix
  print (7 + 2)
  print (6 * 5)
  print (True && False)

-- HC2T5 - Task 5: Defining and Using Functions

circleArea :: Float -> Float
circleArea r = pi * r * r

main7 :: IO ()
main7 = print (circleArea 3) -- Output: ~28.27

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = max a (max b c)

main8 :: IO ()
main8 = print (maxOfThree 10 20 15) -- Output: 20

-- HC2T6 - Task 6: Int vs Integer

smallNumber :: Int
smallNumber = 2 ^ 62

bigNumber :: Integer
bigNumber = 2 ^ 127

main9 :: IO ()
main9 = do
  print smallNumber
  print bigNumber
  -- print (2 ^ 64 :: Int) -- Uncomment to observe overflow (likely incorrect value or error)

-- HC2T7 - Task 7: Boolean Expressions

main10 :: IO ()
main10 = do
  print (True && True)        -- True
  print (False || False)      -- False
  print (not False)           -- True
  print (5 > 10)              -- False

-- Master main to run all
main :: IO ()
main = do
  main1
  main2
  main3
  main4
  main5
  main6
  main7
  main8
  main9
  main10
