import Control.Monad
import Data.List (nub)

main :: IO ()
main = do
  n <- readLn :: IO Int
  ds <- replicateM n (readLn :: IO Int)
  print . length . nub $ ds
