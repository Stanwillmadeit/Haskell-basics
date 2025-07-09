import Data.Char (isUpper)

-- 1. Apply a function three times
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f (f (f x))

main1 :: IO ()
main1 = print (applyThrice (+1) 5) -- Output: 8

-- 2. Filter odd numbers from 1 to 30
oddNumbers :: [Int]
oddNumbers = filter odd [1..30]

main2 :: IO ()
main2 = print oddNumbers -- Output: [1,3,5,...,29]

-- 3. Check if any word starts with an uppercase letter
hasUppercaseWord :: [String] -> Bool
hasUppercaseWord = any (\w -> not (null w) && isUpper (head w))

main3 :: IO ()
main3 = do
  print (hasUppercaseWord ["hello", "world"])
  print (hasUppercaseWord ["hello", "World"])

-- 4. Lambda version of biggerThan10
biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10

main4 :: IO ()
main4 = print (biggerThan10 15) -- Output: True

-- 5. Partial application
multiplyByFive :: Int -> Int
multiplyByFive = (*) 5

main5 :: IO ()
main5 = print (multiplyByFive 6) -- Output: 30

-- 6. Function composition: square then filter even
squareEvens :: [Int] -> [Int]
squareEvens = filter even . map (^2)

main6 :: IO ()
main6 = print (squareEvens [1..10]) -- Output: [4,16,36,64,100]

-- 7. Using $ operator
result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]

main7 :: IO ()
main7 = print result -- Output: 98

-- 8. Point-free style
addFive :: Int -> Int
addFive = (+5)

main8 :: IO ()
main8 = print (addFive 10) -- Output: 15

-- 9. Higher-order function to apply a function twice on each list element
transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

main9 :: IO ()
main9 = print (transformList (+1) [1,2,3]) -- Output: [3,4,5]

-- 10. Combine filter, map, any
hasSquareOver50 :: [Int] -> Bool
hasSquareOver50 = any (>50) . map (^2) . filter (>0)

main10 :: IO ()
main10 = do
  print (hasSquareOver50 [1,2,3,4,5,8])
  print (hasSquareOver50 [1,2,3])

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
