{ pkgs, ... }: {
  imports =
    [ ./nix.nix ./users.nix ./networking.nix ./virtualisation.nix ./acme.nix ];
  config = {
    i18n.defaultLocale = "en_US.UTF-8";
    programs.nix-ld.enable = true;
    programs.mosh.enable = true;
    environment.systemPackages = with pkgs; [ wget git nil nixfmt htop tmux ];
    documentation.enable = false;
  };
}
