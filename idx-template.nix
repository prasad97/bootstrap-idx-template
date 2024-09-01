# No user-configurable parameters
{ pkgs, ... }: {
  # Shell script that produces the final environment
  bootstrap = ''
    cp -rf ${./.} "$out"
    chmod -R +w "$out"
    rm -rf "$out/.git" "$out/idx-template".{nix,json}
  '';
}