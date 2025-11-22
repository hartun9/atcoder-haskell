ints :: IO [Int]
ints = map read . words <$> getLine

abcxCount :: (Int, Int, Int) -> Int -> Int
abcxCount (a, b, c) x =
  length
    [ ()
    | i <- [0 .. a],
      j <- [0 .. b],
      k <- [0 .. c],
      500 * i + 100 * j + 50 * k == x
    ]

main :: IO ()
main = do
  [a] <- ints
  [b] <- ints
  [c] <- ints
  [x] <- ints
  print (abcxCount (a, b, c) x)
