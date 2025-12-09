Command	What it does: 
cabal build	Builds project defined in .cabal
cabal run	Runs the executable specified
cabal update	Gets latest package list
cabal init	Creates a new .cabal file interactively
nix develop  Create a build shell to run cabal and ghc
---

### 🔑 Summary Table

| Component | Role |
|----------|------|
| **GHC** | Compiles Haskell code |
| **Cabal** | Build + dependency manager |
| **Nix Flakes** | Provides reproducible environment including GHC + Cabal |

---

### One-Line Summary

> **Flake
---

A Monad means:

✔ You can take a value from a Box
✔ Apply a function that returns a Box again