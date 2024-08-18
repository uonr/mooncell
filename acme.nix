{ lib, ... }:

{
  config = {
    security.acme.acceptTerms = true;
    security.acme.defaults.email = lib.mkDefault "new.note2948@fastmail.com";
    security.acme.defaults.dnsResolver = "8.8.8.8:53";
  };
}
