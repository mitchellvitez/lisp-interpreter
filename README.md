# Lisp Interpreter in Haskell

## About

I've been interested in programming languages for a while, and Haskell for a subset of that time. What better way to explore both than writing compilers and interpreters in Haskell? This interpreter is based on [Write Yourself a Scheme](https://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours).

This project required application of a lot of fun Haskell concepts, including parsing to an AST with Parsec, using monad transformers (for Error handling and IO), using IORef (for nested Lisp environments), and more.

## Usage

Compile Lisp.hs with GHC. You can run files with `./Lisp filename.lsp` or start up the REPL with `./Lisp`

There's a small standard library in `stdlib.lsp`. To use it, run `(load "stdlib.lsp")`

An example session:
```lisp
ghc Lisp.hs
./Lisp
Lisp> (+ 1 2 2 2)
7
Lisp> (define x 1)
1
Lisp> (+ x 1)
2
Lisp> (map (curry + 1) '(1 1 1 1))
Getting an unbound variable: map
Lisp> (load "stdlib.lsp")
(lambda ("pred" "lst") ...)
Lisp> (map (curry + 1) '(1 1 1 1))
(2 2 2 2)
Lisp> quit
```
