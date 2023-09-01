{
  description = "My shared NixOS configurations";

  inputs = {
    # nixpkgs.url = "nixpkgs/nixos-unstable";
  };
  outputs = { ... }: {
    nixosModule = ({ pkgs, ... }: { imports = [ ./nixos.nix ]; });
  };
}
