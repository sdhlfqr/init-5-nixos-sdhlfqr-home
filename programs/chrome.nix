{ pkgs, ... }:
{
  programs.chromium = {
    enable = true;

    package = pkgs.ungoogled-chromium;

    # Fixing chromium apps not working with Wayland
    commandLineArgs = [ "--enable-features=UseOzonePlatform" "--ozone-platform=wayland" ];
  };
}

