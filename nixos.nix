{ pkgs, lib, ... }:
{
  imports = [
    ./nix.nix
    ./users.nix
    ./networking.nix
    ./virtualisation.nix
    ./acme.nix
  ];
  config = {
    i18n.defaultLocale = "en_US.UTF-8";
    programs.nix-ld.enable = true;
    programs.nix-ld.package = pkgs.nix-ld-rs;
    environment.systemPackages = with pkgs; [
      du-dust
      wget
      git
      htop
      tmux
    ];

    services.journald.extraConfig = lib.mkDefault ''
      SystemMaxUse=500M
      RuntimeMaxUse=100M
      SystemMaxFileSize=50M
      RuntimeMaxFileSize=20M
    '';
  };
}
