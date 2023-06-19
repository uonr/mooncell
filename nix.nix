{ pkgs, ... }: {
  nix = {
    package = pkgs.nixVersions.nix_2_16;
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
      experimental-features = nix-command flakes
    '';
  };
  nixpkgs = { config.allowUnfree = true; };
}
