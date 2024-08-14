{ pkgs, ... }:
{
  users = {
    mutableUsers = false;
    defaultUserShell = pkgs.zsh;
  };
  environment.pathsToLink = [ "/share/zsh" ];
  programs.zsh.enable = true;
}
