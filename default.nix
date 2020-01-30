{ lib # pkgs.lib
, hlib # haskell.lib
, fetchFromGitHub
, ...
}:

let
  c2nOverlay = import ./c2n.nix { inherit lib hlib; };
  primitiveOverlay = import ./primitive-overlay.nix { inherit hlib fetchFromGitHub; };
in
  lib.composeExtensions c2nOverlay primitiveOverlay
