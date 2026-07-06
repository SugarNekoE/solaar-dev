{ pkgs, ... }:

{
  packages = with pkgs; [
    flatpak
    meson
    ninja
    pkg-config
    dbus
    dbus.dev
    glib
    glib.dev
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
