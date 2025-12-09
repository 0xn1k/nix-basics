
module Box where

newtype Box a = Box a deriving Show

-- Making Box an instance of Functor, Applicative, and Monad
instance Functor Box where
  fmap f (Box x) = Box (f x)

instance Applicative Box where
  pure = Box
  (Box f) <*> (Box x) = Box (f x)

instance Monad Box where
  return = pure
  (Box x) >>= f = f x
