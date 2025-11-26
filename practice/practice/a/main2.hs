main = do
  line1 <- getLine
  let a = read line1 :: Int
  line2 <- getLine
  let [b, c] = map read $ words line2 :: [Int]
  s <- getLine
  putStrLn $ show (a + b + c) ++ " " ++ s
