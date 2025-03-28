{
  description = "My Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... } @ inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

    in {
      homeConfigurations = {
        y = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [./home.nix];
	  extraSpecialArgs = {
	    inherit inputs;
	  };
        };
      };
    };
}
