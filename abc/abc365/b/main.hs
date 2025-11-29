import Data.List (elemIndex, sortOn)
import Data.Maybe (fromJust)
import Data.Ord (Down (Down))

posSecondLargest :: [Int] -> Int
posSecondLargest xs =
  let sorted = sortOn Down xs
      second = sorted !! 1
   in fromJust (elemIndex second xs) + 1

main = do
  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]
  print $ posSecondLargest as
