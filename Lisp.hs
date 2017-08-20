import System.Environment
import System.IO
import REPL

main :: IO ()
main = do
  args <- getArgs
  if null args then runRepl else runOne $ args
