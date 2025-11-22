import Control.Applicative

main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine
  putStrLn $ case odd (a * b) of
    True -> "Odd"
    False -> "Even"
