module Main where

import           PGF
import           System.Console.Haskeline

loop :: InputT IO ()
loop = do
  minput <- getInputLine "% "
  case minput of
    Nothing     -> return ()
    Just "quit" -> return ()
    Just input  -> do outputStrLn $ "Input was: " ++ input
  loop

main :: IO ()
main = do
  math <- readPGF "Math.pgf"
  putStrLn "Available languages\n--------------"
  mapM_ print $ languages math
