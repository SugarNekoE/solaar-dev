{ pkgs, ... }:

{
  packages = with pkgs; [
    flatpak
    flatpak-builder
  ];
  languages = {
    javascript = {
      enable = true;
      package = pkgs.nodejs_24;
      corepack = {
        enable = true;
      };
    };
    python = {
      enable = true;
      package = pkgs.python311;
      venv = {
        enable = true;
      };
    };
  };
}
