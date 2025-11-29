isDivisibleBy4 x = x `mod` 4 == 0

isDivisibleBy100 x = x `mod` 100 == 0

isDivisibleBy400 x = x `mod` 400 == 0

f :: Int -> Int
f y
  | not (isDivisibleBy4 y) = 365
  | isDivisibleBy4 y && not (isDivisibleBy100 y) = 366
  | isDivisibleBy100 y && not (isDivisibleBy400 y) = 365
  | isDivisibleBy400 y = 366

main = do
  y <- readLn :: IO Int
  print (f y)
