import Control.Arrow (Arrow (second))
import Data.List (elemIndex, sortOn)
import Data.Maybe (fromJust)
import Data.Ord (Down (Down))

posSecondLargest :: [Int] -> Maybe Int
posSecondLargest xs = do
  second <- case sortOn Down xs of (_ : y : _) -> Just y; _ -> Nothing
  idx <- elemIndex second xs
  pure (idx + 1)

main = do
  n <- readLn :: IO Int
  as <- map read . words <$> getLine :: IO [Int]
  print $ fromJust (posSecondLargest as)
