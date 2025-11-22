ints :: IO [Int]
ints = map read . words <$> getLine

divideByTwoIfAllEven :: ([Int], Int) -> ([Int], Int)
divideByTwoIfAllEven (xs, cnt)
  | all even xs = divideByTwoIfAllEven (map (`div` 2) xs, cnt + 1)
  | otherwise = (xs, cnt)

main :: IO ()
main = do
  [n] <- ints
  as <- ints
  let (_, cnt) = divideByTwoIfAllEven (as, 0)
  print cnt
