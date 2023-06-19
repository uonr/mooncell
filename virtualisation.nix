{ ... }: {
  virtualisation.podman = {
    defaultNetwork.settings = { dns_enabled = true; };
    autoPrune.enable = true;
  };

  # https://github.com/NixOS/nixpkgs/issues/109387
  networking.dhcpcd.denyInterfaces = [ "veth*" ];
}
