.PHONY: update
update:
	home-manager switch --flake .#y

.PHONY: clean
clean:
	nix-collect-garbage -d
