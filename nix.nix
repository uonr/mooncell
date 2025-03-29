{ pkgs, ... }:
{
  nix = {
    gc = {
      automatic = true;
      dates = "Wed";
      options = "--delete-older-than 8d";
    };
    settings = {
      trusted-users = [ "@wheel" ];
      allowed-users = [ "@wheel" ];
    };
    extraOptions = ''
      experimental-features = nix-command flakes ca-derivations
    '';
  };
  programs.command-not-found.enable = false;
}
