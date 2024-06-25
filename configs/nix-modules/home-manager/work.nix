{ pkgs, ... }: {
  home.username = "jelsesiy"; 
  home.homeDirectory = "/Users/jelsesiy"; 

  nixpkgs.config = {
    allowUnfree = true;
  };

  home.packages = [
    pkgs.awscli2
    pkgs.azure-cli
    pkgs.google-cloud-sdk
    pkgs.tfswitch
    pkgs.vault
  ];
}
