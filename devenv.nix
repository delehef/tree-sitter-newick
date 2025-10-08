{ pkgs, lib, config, inputs, ... }:

{
  cachix.enable = false;

  packages = [ pkgs.git pkgs.tree-sitter pkgs.git-cliff pkgs.cargo-release ];

  languages = {
    rust.enable = true;
    javascript.enable = true;
    typescript.enable = true;
  };

  git-hooks.hooks = {
    rustfmt.enable = true;
    cargo-check.enable = true;
  };
}
