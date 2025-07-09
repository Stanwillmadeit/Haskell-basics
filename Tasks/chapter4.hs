-- 1. weatherReport using pattern matching
weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

main1 :: IO ()
main1 = do
  print (weatherReport "sunny")
  print (weatherReport "rainy")
  print (weatherReport "windy")

-- 2. dayType using pattern matching
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType "Monday"   = "It's a weekday."
dayType "Tuesday"  = "It's a weekday."
dayType "Wednesday"= "It's a weekday."
dayType "Thursday" = "It's a weekday."
dayType "Friday"   = "It's a weekday."
dayType _          = "Invalid day"

main2 :: IO ()
main2 = do
  print (dayType "Sunday")
  print (dayType "Monday")
  print (dayType "Funday")

-- 3. gradeComment using guards
gradeComment :: Int -> String
gradeComment n
  | n >= 90 && n <= 100 = "Excellent!"
  | n >= 70 && n <= 89  = "Good job!"
  | n >= 50 && n <= 69  = "You passed."
  | n >= 0 && n <= 49   = "Better luck next time."
  | otherwise           = "Invalid grade"

main3 :: IO ()
main3 = do
  print (gradeComment 95)
  print (gradeComment 75)
  print (gradeComment 30)
  print (gradeComment 110)

-- 4. specialBirthday using pattern matching
specialBirthday :: Int -> String
specialBirthday 1  = "First birthday! 🎂"
specialBirthday 18 = "Adulting begins! 🥳"
specialBirthday 50 = "Golden Jubilee! 🎉"
specialBirthday _  = "Happy Birthday!"

main4 :: IO ()
main4 = do
  print (specialBirthday 1)
  print (specialBirthday 18)
  print (specialBirthday 50)
  print (specialBirthday 30)

-- 5. specialBirthday with age included for other cases
specialBirthdayMsg :: Int -> String
specialBirthdayMsg 1  = "First birthday! 🎂"
specialBirthdayMsg 18 = "Adulting begins! 🥳"
specialBirthdayMsg 50 = "Golden Jubilee! 🎉"
specialBirthdayMsg age = "Happy Birthday! You are " ++ show age ++ " years old."

main5 :: IO ()
main5 = do
  print (specialBirthdayMsg 2)
  print (specialBirthdayMsg 50)
  print (specialBirthdayMsg 27)

-- 6. whatsInsideThisList using pattern matching
whatsInsideThisList :: [a] -> String
whatsInsideThisList [] = "The list is empty."
whatsInsideThisList [_] = "The list has one item."
whatsInsideThisList [_, _] = "The list has two items."
whatsInsideThisList _ = "The list has many items."

main6 :: IO ()
main6 = do
  print (whatsInsideThisList ([] :: [Int]))
  print (whatsInsideThisList [1])
  print (whatsInsideThisList [1,2])
  print (whatsInsideThisList [1,2,3])

-- 7. firstAndThird: Get only first and third elements
firstAndThird :: [a] -> Maybe (a, a)
firstAndThird (x:_:z:_) = Just (x, z)
firstAndThird _         = Nothing

main7 :: IO ()
main7 = do
  print (firstAndThird [1,2,3,4]) -- Just (1,3)
  print (firstAndThird [1,2])     -- Nothing

-- 8. describeTuple: Extract and describe tuple content
describeTuple :: (String, Int) -> String
describeTuple (name, score) = name ++ " scored " ++ show score ++ " points."

main8 :: IO ()
main8 = do
  print (describeTuple ("Alice", 90))
  print (describeTuple ("Bob", 75))

-- Master main to run everything
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

