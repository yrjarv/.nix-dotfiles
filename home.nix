{ lib, pkgs, ...} :
{
  home = {
    packages = with pkgs; [
      hello
    ];

    username = "y";
    homeDirectory = "/home/y";

    # NEVER change!
    stateVersion = "23.11";
  };
}
