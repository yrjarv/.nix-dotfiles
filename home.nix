{ lib, pkgs, ...} :
{
  home = {
    packages = with pkgs; [
      hello
      home-manager
      pandoc
      emacs-pgtk
      waybar
    ];

    username = "y";
    homeDirectory = "/home/y";

    # NEVER change!
    stateVersion = "23.11";
  };

  imports = [
  ];
}
