import Numeric (showHex)
import Data.Char (toLower)

-- 1. Check if number is positive, negative or zero
checkNumber :: Int -> String
checkNumber n =
  if n > 0 then "Positive"
  else if n < 0 then "Negative"
  else "Zero"

main1 :: IO ()
main1 = do
  print (checkNumber 5)
  print (checkNumber (-3))
  print (checkNumber 0)

-- 2. Grade based on score
grade :: Int -> String
grade n
  | n >= 90 = "A"
  | n >= 80 = "B"
  | n >= 70 = "C"
  | n >= 60 = "D"
  | otherwise = "F"

main2 :: IO ()
main2 = do
  print (grade 95)
  print (grade 72)
  print (grade 50)

-- 3. Convert RGB to Hex
rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
  let toHex n = if length h == 1 then '0':h else h where h = showHex n ""
  in "#" ++ toHex r ++ toHex g ++ toHex b

main3 :: IO ()
main3 = do
  print (rgbToHex (255, 0, 127))
  print (rgbToHex (0, 255, 64))

-- 4. Triangle area using Heron's formula
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
  let s = (a + b + c) / 2
  in sqrt (s * (s - a) * (s - b) * (s - c))

main4 :: IO ()
main4 = do
  print (triangleArea 3 4 5)
  print (triangleArea 7 8 9)

-- 5. Triangle type using guards
triangleType :: Float -> Float -> Float -> String
triangleType a b c
  | a == b && b == c = "Equilateral"
  | a == b || b == c || a == c = "Isosceles"
  | otherwise = "Scalene"

main5 :: IO ()
main5 = do
  print (triangleType 3 3 3)
  print (triangleType 5 5 8)
  print (triangleType 6 7 8)

-- 6. Check leap year using if-then-else
isLeapYear :: Int -> Bool
isLeapYear year =
  if year `mod` 400 == 0 then True
  else if year `mod` 100 == 0 then False
  else if year `mod` 4 == 0 then True
  else False

main6 :: IO ()
main6 = do
  print (isLeapYear 2000)
  print (isLeapYear 1900)
  print (isLeapYear 2024)

-- 7. Determine season from month using guards
season :: Int -> String
season m
  | m == 12 || m == 1 || m == 2 = "Winter"
  | m >= 3 && m <= 5 = "Spring"
  | m >= 6 && m <= 8 = "Summer"
  | m >= 9 && m <= 11 = "Autumn"
  | otherwise = "Invalid month"

main7 :: IO ()
main7 = do
  print (season 3)
  print (season 7)
  print (season 11)

-- 8. BMI Category using where
bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25 = "Normal"
  | bmi < 30 = "Overweight"
  | otherwise = "Obese"
  where bmi = weight / (height ^ 2)

main8 :: IO ()
main8 = do
  print (bmiCategory 70 1.75)
  print (bmiCategory 90 1.8)

-- 9. Max of three numbers using let
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z =
  let max1 = max x y
      max2 = max max1 z
  in max2

main9 :: IO ()
main9 = do
  print (maxOfThree 10 20 15)
  print (maxOfThree 5 25 10)

-- 10. Check if string is a palindrome (recursive)
isPalindrome :: String -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome str
  | toLower (head str) == toLower (last str) = isPalindrome (init (tail str))
  | otherwise = False

main10 :: IO ()
main10 = do
  print (isPalindrome "racecar")
  print (isPalindrome "haskell")
  print (isPalindrome "madam")

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
