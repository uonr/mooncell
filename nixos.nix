{ pkgs, ... }:
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
  };
}
