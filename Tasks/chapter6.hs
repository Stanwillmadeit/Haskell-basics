-- 1. Recursive factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main1 :: IO ()
main1 = print (factorial 5) -- Output: 120

-- 2. Recursive Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main2 :: IO ()
main2 = print (fibonacci 7) -- Output: 13

-- 3. Sum of list using foldr
sumList :: [Int] -> Int
sumList = foldr (+) 0

main3 :: IO ()
main3 = print (sumList [1,2,3,4,5]) -- Output: 15

-- 4. Product of list using foldl
productList :: [Int] -> Int
productList = foldl (*) 1

main4 :: IO ()
main4 = print (productList [1,2,3,4]) -- Output: 24

-- 5. Reverse list using recursion
reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main5 :: IO ()
main5 = print (reverseList [1,2,3,4]) -- Output: [4,3,2,1]

-- 6. Element exists in list
elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists x (y:ys)
  | x == y    = True
  | otherwise = elementExists x ys

main6 :: IO ()
main6 = do
  print (elementExists 3 [1,2,3,4]) -- True
  print (elementExists 9 [1,2,3])   -- False

-- 7. Length of list
listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

main7 :: IO ()
main7 = print (listLength [10, 20, 30]) -- Output: 3

-- 8. Filter even numbers
filterEvens :: [Int] -> [Int]
filterEvens [] = []
filterEvens (x:xs)
  | even x    = x : filterEvens xs
  | otherwise = filterEvens xs

main8 :: IO ()
main8 = print (filterEvens [1..10]) -- Output: [2,4,6,8,10]

-- 9. Implement map
mapCustom :: (a -> b) -> [a] -> [b]
mapCustom _ [] = []
mapCustom f (x:xs) = f x : mapCustom f xs

main9 :: IO ()
main9 = print (mapCustom (+2) [1,2,3]) -- Output: [3,4,5]

-- 10. Recursive digits extraction
digits :: Int -> [Int]
digits n
  | n < 10 = [n]
  | otherwise = digits (n `div` 10) ++ [n `mod` 10]

main10 :: IO ()
main10 = print (digits 12345) -- Output: [1,2,3,4,5]

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
