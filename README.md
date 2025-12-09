Command	What it does: 
cabal build	Builds project defined in .cabal
cabal run	Runs the executable specified
cabal update	Gets latest package list
cabal init	Creates a new .cabal file interactively
nix develop  Create a build shell to run cabal and ghc
---

 ┌───────────────────────────┐
 │         Developer         │
 │        (You write .hs)    │
 └───────────────┬───────────┘
                 │
                 ▼
 ┌─────────────────────────────────┐
 │           Nix Flake            │
 │        (flake.nix file)        │
 │  - Defines exact GHC version   │
 │  - Provides Cabal + libraries  │
 │  - Reproducible environment    │
 └───────────────┬────────────────┘
                 │ `nix develop`
                 ▼
     Dev Shell with pinned tools
 ┌─────────────────────────────────┐
 │  Cabal (Build Tool)            │
 │  - Reads .cabal file           │
 │  - Resolves dependencies       │
 │  - Calls GHC to compile code   │
 └───────────────┬────────────────┘
                 │ `cabal build`
                 ▼
 ┌─────────────────────────────────┐
 │  GHC (Haskell Compiler)        │
 │  - Compiles .hs → Binary       │
 │  - Creates executable/library  │
 └─────────────────────────────────┘


---

A Monad means:

✔ You can take a value from a Box
✔ Apply a function that returns a Box again