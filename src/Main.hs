module Main where
import Box
import Data.Array
import qualified Data.Vector as V


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
    let v = V.fromList [1,2,3]
    let y = V.length v;
    let x  = V.map (*2) v
    putStrLn ("Vector after mapping (*2): " ++ show x)
    putStrLn ("Vector length: " ++ show y)  

    putStrLn ("Vector contents: " ++ show v)
    let arr = array (1,3)
              [ (1, "apple")
              , (2, "banana")
              , (3, "cherry")
              ]
    putStrLn ("Array contents: " ++ show (arr ! 2))

