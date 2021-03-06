module  Reverse where

addBang :: [Char] -> [Char]
addBang x =  x ++ "!"

fifthChar :: [a] -> a
fifthChar x = x !! 4

dropNine :: [a] -> [a]
dropNine x = drop 9 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome" !! x

rvrs1 x = (take 5 x) -- curry
rvrs2 x = (drop 6 (take 8 x)) -- is
rvrs3 x = drop 9 x -- awesome

rvrs :: String -> String
rvrs x = rvrs3 x ++ " " ++ rvrs2 x ++ " " ++ rvrs1 x
rvrs4 x = drop 9 x ++ " " ++ (drop 6 (take 8 x)) ++ " " ++ (take 5 x)

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood    _ = Blah

main :: IO ()
main = print $ rvrs "Curry is awesome"

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "eyyyy. What's shakin'?"
  else
    putStrLn "pshhhhh."
  where cool = coolness == "downright frosty yo"

greetIfCool2 :: String -> IO ()
greetIfCool2 coolness =
  if cool coolness
    then putStrLn "eyyyy. What's shakin'?"
  else
    putStrLn "pshhhhh."
  where cool v = v == "downright frosty yo"

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x =
  x == reverse x

isPalindrome2 :: (Eq a) => [a] -> IO ()
isPalindrome2 x =
  if x == reverse x
    then putStrLn "It's a palindrome!"
  else
    putStrLn "Not a palindrome!"

myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else x * (-1)

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tup1 tup2 = ((snd tup1, snd tup2), (fst tup1, fst tup2))
