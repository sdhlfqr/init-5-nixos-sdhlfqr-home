{ lib, ... }: {
  programs.alacritty.enable = true;

  programs.alacritty.settings = {
    window.padding.x = 2;
    window.padding.y = 2;

    window.decorations = "full";
    window.dynamic_title = true;

    window.opacity = 0.99;

    font.normal.family = "FiraCode Nerd Font Mono";
    font.normal.style = "Regular";

    font.bold.family = "FiraCode Nerd Font Mono";
    font.bold.style = "Bold";

    font.italic.family = "FiraCode Nerd Font Mono";
    font.italic.style = "Italic";

    font.size = 12;

    colors.primary = {
      background = "0x212121";
      foreground = "0xf1f1f1";
    };

    colors.normal = {
      black = "0x212121";
      red = "0xc30771";
      green = "0x10a778";
      yellow = "0xa89c14";
      blue = "0x008ec4";
      magenta = "0x523c79";
      cyan = "0x20a5ba";
      white = "0xe0e0e0";
    };

    colors.bright = {
      black = "0x818181";
      red = "0xfb007a";
      green = "0x5fd7af";
      yellow = "0xf3e430";
      blue = "0x20bbfc";
      magenta = "0x6855de";
      cyan = "0x4fb8cc";
      white = "0xf1f1f1";
    };

    draw_bold_text_with_bright_colors = false;
  };
}
