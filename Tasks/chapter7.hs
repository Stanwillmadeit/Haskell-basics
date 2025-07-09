-- 1. Define Color and implement Eq
data Color = Red | Green | Blue deriving (Show, Read, Enum, Bounded)

instance Eq Color where
  Red   == Red   = True
  Green == Green = True
  Blue  == Blue  = True
  _     == _     = False

main1 :: IO ()
main1 = do
  print (Red == Red)
  print (Red == Green)

-- 2. Implement Ord for Color (Red < Green < Blue)
instance Ord Color where
  compare Red Green   = LT
  compare Red Blue    = LT
  compare Green Blue  = LT
  compare a b
    | a == b    = EQ
    | otherwise = GT

main2 :: IO ()
main2 = do
  print (Red < Green)
  print (Blue > Green)
  print (Red == Red)

-- 3. Function with Eq and Ord constraints
compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues a b = if a >= b then a else b

main3 :: IO ()
main3 = do
  print (compareValues 10 20)
  print (compareValues "apple" "banana")

-- 4. Shape with Show and Read
data Shape = Circle Double | Rectangle Double Double

instance Show Shape where
  show (Circle r) = "Circle " ++ show r
  show (Rectangle w h) = "Rectangle " ++ show w ++ " " ++ show h

instance Read Shape where
  readsPrec _ input =
    case words input of
      ["Circle", r]       -> [(Circle (read r), "")]
      ["Rectangle", w, h] -> [(Rectangle (read w) (read h), "")]
      _                   -> []

main4 :: IO ()
main4 = do
  let c = Circle 5.0
  let r = Rectangle 3.0 4.0
  print c
  print r
  print (read "Circle 7.5" :: Shape)
  print (read "Rectangle 6.0 2.0" :: Shape)

-- 5. squareArea with Num constraint
squareArea :: Num a => a -> a
squareArea side = side * side

main5 :: IO ()
main5 = print (squareArea 4.5)

-- 6. circleCircumference with Integral and Floating
circleCircumference :: (Integral a, Floating b) => a -> b
circleCircumference r = 2 * pi * fromIntegral r

main6 :: IO ()
main6 = print (circleCircumference 7 :: Double)

-- 7. nextColor with Bounded and Enum
nextColor :: Color -> Color
nextColor c
  | c == maxBound = minBound
  | otherwise     = succ c

main7 :: IO ()
main7 = do
  print (nextColor Red)     -- Green
  print (nextColor Green)   -- Blue
  print (nextColor Blue)    -- Red (wraps)

-- 8. parseShape using Read
parseShape :: String -> Maybe Shape
parseShape str =
  case reads str :: [(Shape, String)] of
    [(s, "")] -> Just s
    _         -> Nothing

main8 :: IO ()
main8 = do
  print (parseShape "Circle 10.0")
  print (parseShape "Rectangle 3.0 6.0")
  print (parseShape "Square 5.0")

-- 9. Describable type class
class Describable a where
  describe :: a -> String

instance Describable Bool where
  describe True = "Yes"
  describe False = "No"

instance Describable Shape where
  describe (Circle r) = "A circle with radius " ++ show r
  describe (Rectangle w h) = "A rectangle " ++ show w ++ "x" ++ show h

main9 :: IO ()
main9 = do
  print (describe True)
  print (describe (Rectangle 4 5))

-- 10. describeAndCompare with constraints
describeAndCompare :: (Describable a, Ord a) => a -> a -> String
describeAndCompare a b =
  if a >= b then describe a else describe b

main10 :: IO ()
main10 = do
  print (describeAndCompare True False)
  print (describeAndCompare (Circle 3) (Circle 5))  -- uses Show ordering (not very meaningful here)

-- Master main
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
