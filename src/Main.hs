module Main where
import Box


import System.Environment (getArgs)


main :: IO ()
main = do
    args <- getArgs
    putStrLn ("Hello from Nix-flake Haskell and the arguments are :  " ++ show args) 
    let boxedValue = Box 10
    let incrementedBox = fmap (+1) boxedValue
    let finalPrint = 10 + 1
    let final = Box 5 >>= (\n -> Box (n * 2))
    putStrLn ("Initial boxed value: " ++ show boxedValue)
    putStrLn("Box after final computation: " ++ show final)
    putStrLn ("Final computed value: " ++ show finalPrint)
    putStrLn ("Boxed value after increment: " ++ show incrementedBox)
