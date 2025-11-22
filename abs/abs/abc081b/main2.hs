ints :: IO [Int]
ints = map read . words <$> getLine

divideCount :: [Int] -> Int
divideCount =
  length
    . takeWhile (all even)
    . iterate (map (`div` 2))

main :: IO ()
main = do
  [n] <- ints
  as <- ints
  print (divideCount as)
