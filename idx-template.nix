{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  name = "html-css-idx-template";
  src = ./.;
  buildInputs = [ pkgs.coreutils ];
  installPhase = ''
    mkdir -p $out
    cp -r index.html styles.css idx-template.json .idx/dev.nix $out/
  '';
}