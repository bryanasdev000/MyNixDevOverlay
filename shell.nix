{ pkgs ? import <nixpkgs> { overlays = [ (import ./default.nix) ]; } }:

with pkgs;
pkgs.mkShell { buildInputs = [ bryanasdev000.velero bryanasdev000.popeye ]; }
