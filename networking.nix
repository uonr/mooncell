{ ... }: {
  # https://wiki.archlinux.org/title/Sysctl#Improving_performance
  boot = {
    kernelModules = [ "tcp_bbr" ];
    kernel.sysctl = {
      "net.core.somaxconn" = "4096";
      "net.core.default_qdisc" = "fq";
      "net.ipv4.tcp_congestion_control" = "bbr";
      "net.ipv4.tcp_fastopen" = "3";
      "net.ipv4.tcp_mtu_probing" = "1";
      "net.ipv4.tcp_sack" = "1";
      "net.ipv4.tcp_keepalive_time" = "80";
      "net.ipv4.tcp_keepalive_intvl" = "10";
      "net.ipv4.tcp_keepalive_probes" = "6";
    };
  };
}
