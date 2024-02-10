{ ... }: {
  virtualisation.podman = {
    defaultNetwork.settings.dns_enabled = true;
    autoPrune.enable = true;
  };

  # https://github.com/NixOS/nixpkgs/issues/109389
  networking.dhcpcd.denyInterfaces = [ "veth*" ];

  networking.firewall.interfaces."podman+" = {
    allowedUDPPorts = [ 53 ];
    allowedTCPPorts = [ 53 ];
  };
}
