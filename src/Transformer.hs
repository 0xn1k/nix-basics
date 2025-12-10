module Transformer where

import Control.Monad.Trans.Maybe
import Control.Monad.IO.Class

foo :: MaybeT IO Int
foo = do
  line <- liftIO getLine
  if null line
    then fail "empty"   -- or mzero
    else return (length line)

runFoo :: IO ()
runFoo = do
  result <- runMaybeT foo
  print result
