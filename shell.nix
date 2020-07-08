{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    cargo
    cargo-fuzz
    cargo-watch
    rls
    rustc
    rustfmt

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
