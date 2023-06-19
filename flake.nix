{
  description = "My shared NixOS configurations";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    sweet-home.url = "github:uonr/sweet-home";
    sweet-home.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { home-manager, sweet-home, ... }: {
    nixosModule = ({ pkgs, ... }: {
      imports = [ home-manager.nixosModules.home-manager ./nixos.nix ];
      config = {
        home-manager.sharedModules = [ sweet-home.nixosModules.home ];
      };
    });
  };
}
