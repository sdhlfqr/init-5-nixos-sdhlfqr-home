{ pkgs, ... }: {
  gtk.enable = true;

  gtk.iconTheme.name = "WhiteSur-dark";
  gtk.iconTheme.package = pkgs.whitesur-icon-theme;

  gtk.theme.name = "WhiteSur-Dark";
  gtk.theme.package = pkgs.whitesur-gtk-theme;

  home.sessionVariables.GTK_THEME = "WhiteSur-Dark";

  gtk.cursorTheme.name = "Quintom_Snow";
  gtk.cursorTheme.package = pkgs.quintom-cursor-theme;

  gtk.gtk3.extraConfig.Settings = ''
    gtk-application-prefer-dark-theme=1
  '';

  gtk.gtk4.extraConfig.Settings = ''
    gtk-application-prefer-dark-theme=1
  '';

  dconf.settings = {
    "org/freedesktop/tracker/miner/files".index-recursive-directories = [ ];

    "org/gnome/desktop/app-folders/folders/Utilities".apps = [
      "org.gnome.FileRoller.desktop"
      "org.gnome.Settings.desktop"
      "org.gnome.Extensions.desktop"
      "htop.desktop"
      "nvidia-settings.desktop"
      "nvim.desktop"
      "nixos-manual.desktop"
    ];

    "org/gnome/desktop/background".color-shading-type = "solid";
    "org/gnome/desktop/background".picture-opacity = 100;
    "org/gnome/desktop/background".picture-options = "zoom";
    "org/gnome/desktop/background".picture-uri = "";
    "org/gnome/desktop/background".picture-uri-dark = "";
    "org/gnome/desktop/background".primary-color = "#111111";
    "org/gnome/desktop/background".secondary-color = "#111111";

    "org/gnome/desktop/calendar".show-weekdate = true;
    "org/gnome/desktop/datetime".automatic-timezone = false;

    "org/gnome/desktop/interface".clock-format = "24h";
    "org/gnome/desktop/interface".clock-show-weekday = true;
    "org/gnome/desktop/interface".color-scheme = "prefer-dark";
    "org/gnome/desktop/interface".cursor-blink = false;
    "org/gnome/desktop/interface".document-font-name = "Ubuntu 10";
    "org/gnome/desktop/interface".enable-animations = true;
    "org/gnome/desktop/interface".enable-hot-corners = false;
    "org/gnome/desktop/interface".font-antialiasing = "rgba";
    "org/gnome/desktop/interface".font-hinting = "medium";
    "org/gnome/desktop/interface".font-name = "Ubuntu 10";
    "org/gnome/desktop/interface".gtk-enable-primary-paste = false;
    "org/gnome/desktop/interface".monospace-font-name = "FiraCode Nerd Font Mono weight=450 11";
    "org/gnome/desktop/interface".show-battery-percentage = true;
    "org/gnome/desktop/interface".text-scaling-factor = 0.85;


    "org/gnome/desktop/lockdown".disable-log-out = false;
    "org/gnome/desktop/lockdown".disable-printing = true;
    "org/gnome/desktop/lockdown".disable-print-setup = true;
    "org/gnome/desktop/lockdown".disable-show-password = true;
    "org/gnome/desktop/lockdown".disable-user-switching = true;

    "org/gnome/desktop/media-handling".automount = true;
    "org/gnome/desktop/media-handling".automount-open = false;
    "org/gnome/desktop/media-handling".autorun-never = true;

    "org/gnome/desktop/notifications".show-in-lock-screen = false;

    "org/gnome/desktop/peripherals/keyboard".remember-numlock-state = true;

    "org/gnome/desktop/peripherals/mouse".accel-profile = "adaptive";

    "org/gnome/desktop/peripherals/touchpad".accel-profile = "adaptive";
    "org/gnome/desktop/peripherals/touchpad".disable-while-typing = false;
    "org/gnome/desktop/peripherals/touchpad".natural-scroll = true;
    "org/gnome/desktop/peripherals/touchpad".tap-to-click = true;
    "org/gnome/desktop/peripherals/touchpad".two-finger-scrolling-enabled = true;

    "org/gnome/desktop/privacy".disable-camera = true;
    "org/gnome/desktop/privacy".disable-microphone = true;
    "org/gnome/desktop/privacy".hide-identity = true;
    "org/gnome/desktop/privacy".old-files-age = 7;
    "org/gnome/desktop/privacy".remember-app-usage = false;
    "org/gnome/desktop/privacy".remember-recent-files = false;
    "org/gnome/desktop/privacy".remember-old-temp-files = false;
    "org/gnome/desktop/privacy".remove-old-trash-files = true;
    "org/gnome/desktop/privacy".report-technical-problems = false;
    "org/gnome/desktop/privacy".send-software-usage-stats = false;
    "org/gnome/desktop/privacy".show-full-name-in-top-bar = false;
    "org/gnome/desktop/privacy".usb-protection = true;
    "org/gnome/desktop/privacy".usb-protection-level = "lockscreen";

    "org/gnome/desktop/sound".allow-volume-above-100-percent = true;
    "org/gnome/desktop/sound".event-sounds = false;
    "org/gnome/desktop/sound".input-feedback-sounds = false;

    "org/gnome/desktop/wm/preferences".audible-bell = false;
    "org/gnome/desktop/wm/preferences".button-layout = "close,minimize,maximize:appmenu";
    "org/gnome/desktop/wm/preferences".num-workspaces = 4;
    "org/gnome/desktop/wm/preferences".titlebar-font = "Ubuntu 12";
    "org/gnome/desktop/wm/preferences".titlebar-uses-system-fonts = true;
    "org/gnome/desktop/wm/preferences".workspace-names = [ "Main" "Work" "Social" "Music" ];

    "org/gnome/SessionManager".auto-save-session = true;
    "org/gnome/SessionManager".logout-prompt = false;
    "org/gnome/SessionManager".show-fallback-warning = false;

    "org/gnome/mutter".center-new-windows = true;
    "org/gnome/mutter".dynamic-workspaces = false;

    "org/gnome/nautilus/preferences".default-folder-viewer = "list-view";
    "org/gnome/nautilus/preferences".migrated-gtk-settings = true;
    "org/gnome/nautilus/preferences".show-create-link = true;
    "org/gnome/nautilus/preferences".show-delete-permanently = true;

    "org/gnome/settings-daemon/plugins/power".power-button-action = "hibernate";
    "org/gnome/settings-daemon/plugins/power".sleep-inactive-ac-typ = "hibernate";
    "org/gnome/settings-daemon/plugins/power".sleep-inactive-battery-type = "hibernate";

    "org/gnome/shell".disable-user-extensions = true;
    "org/gnome/shell".favorite-apps = [
      "org.gnome.Nautilus.desktop"
      "chromium-browser.desktop"
      "Alacritty.desktop"
      "codium.desktop"
    ];

    "org/gnome/system/location".enabled = false;
    "org/gtk/gtk4/settings/file-chooser".sort-directories-first = true;
    "org/gtk/settings/file-chooser".clock-format = "24h";
  };
}
