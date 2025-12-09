module Main where


import System.Environment (getArgs)


main :: IO ()
main = do
    args <- getArgs
    putStrLn ("Hello from Nix-flake Haskell and the arguments are :  " ++ show args) 