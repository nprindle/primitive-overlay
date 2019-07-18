A nixpkgs overlay for the haskell-primitive ecosystem.

An example where you can enter a shell suitable for hacking on
`vector` with the overlay:

```nix
# shell.nix

let
  pkgs = import <nixpkgs> {};
  overrides = import ./primitive-overlay.nix {
    hlib = pkgs.haskell.lib;
    fetchFromGitHub = pkgs.fetchFromGitHub;
  };
  hPkgs = pkgs.haskell.packages.ghc865.override { inherit overrides; };
in hPkgs.shellFor {
  packages = ps: with ps; [ vector ];
}
```
