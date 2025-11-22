ints :: IO [Int]
ints = map read . words <$> getLine

digitSum :: Int -> Int
digitSum = sum . map (read . (: [])) . show

solve :: (Int, Int) -> Int -> Int
solve (a, b) n =
  sum
    [ i
    | i <- [1 .. n],
      let s = digitSum i,
      a <= s && s <= b
    ]

main :: IO ()
main = do
  [n, a, b] <- ints
  print (solve (a, b) n)
