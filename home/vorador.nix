{ ... }: {
  imports = [
    ./global.nix

    ../programs/alacritty.nix
    ../programs/chrome.nix
  ];
}
