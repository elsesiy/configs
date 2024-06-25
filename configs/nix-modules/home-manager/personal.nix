{ pkgs, ... }: {
  home.username = "elsesiy"; 
  home.homeDirectory = "/Users/elsesiy"; 

  home.packages = [
    pkgs.macfuse-stubs
    pkgs.tailscale
  ];
}
