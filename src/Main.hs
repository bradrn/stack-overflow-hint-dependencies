{-# LANGUAGE DataKinds #-}

module Main where

import Language.Haskell.Interpreter
import Data.Finite

main :: IO ()
main = do
  str <- getLine
  map <- runInterpreter $ do 
      setImports ["Prelude", "Data.Finite"]
      set [languageExtensions := [DataKinds]]
      interpret str (as :: Finite 10)
  print map
