import Control.Monad (replicateM)
import Data.List

isAllEatable :: [String] -> Bool
isAllEatable xs =
  not $ any isDoubleSweetAndAny tripleTuples
  where
    tripleTuples = zip3 xs (drop 1 xs) (drop 2 xs)
    isDoubleSweetAndAny (a, b, c) = a == "sweet" && b == "sweet"

main = do
  n <- readLn :: IO Int
  ss <- replicateM n getLine
  putStrLn $ if isAllEatable ss then "Yes" else "No"
