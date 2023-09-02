{ lib, ... }:

{
  config = {
    security.acme.acceptTerms = true;
    security.acme.defaults.email = lib.mkDefault "new.note2948@fastmail.com";
    security.acme.defaults.dnsResolver = "1.1.1.1:53";
  };
}
