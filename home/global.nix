{ ... }: {
  imports = [
    ../programs/git.nix
    ../programs/nvim.nix
    ../programs/zsh.nix
  ];

  home.username = "sdhlfqr";
  home.homeDirectory = "/home/sdhlfqr";

  # Fixing electron apps not working with Wayland
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
