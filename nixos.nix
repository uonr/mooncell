{ pkgs, ... }: {
  imports = [ ./nix.nix ./users.nix ];
  config = {
    i18n.defaultLocale = "en_US.UTF-8";
    programs.nix-ld.enable = true;
    programs.mosh.enable = true;
    environment.systemPackages = with pkgs; [ wget nil nixfmt htop ];
  };
}
