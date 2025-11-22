import Data.Char (digitToInt)

main :: IO ()
main = do
  s <- getLine
  let [s1, s2, s3] = map digitToInt s
  print (s1 + s2 + s3)
