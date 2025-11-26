main = do
  a <- readLn :: IO Int
  [b, c] <- map read . words <$> getLine :: IO [Int]
  s <- getLine
  putStrLn $ show (a + b + c) ++ " " ++ s
