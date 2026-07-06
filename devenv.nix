{ pkgs, ... }:

{
  languages = {
    javascript = {
      enable = true;
      package = pkgs.nodejs_24;
      corepack = {
        enable = true;
      };
    };
  };
}
