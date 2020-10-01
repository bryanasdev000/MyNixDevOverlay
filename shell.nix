{ pkgs ? import <nixpkgs> { overlays = [ (import ./default.nix) ]; } }:

with pkgs;
pkgs.mkShell {
  buildInputs = [ bryanasdev000.kubectl-example bryanasdev000.kube-capacity ];
}
