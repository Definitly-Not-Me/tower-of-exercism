{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "gleam track";
  packages = with pkgs; [
    exercism
    gleam
    beamPackages.erlang
    beamPackages.rebar3
  ];

  shellHook = ''
    echo "Welcome to gleam Land!"
    echo "Gleam: $(gleam --version || echo not found)"
    echo "--------------------------------------------------"
  '';
}
