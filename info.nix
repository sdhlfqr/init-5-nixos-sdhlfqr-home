{
  description = "Sayf Dhulfiqar";
  extraGroups = [
    "wheel"
    "video"
    "audio"
  ] ++ utilities.miscs.addGroupsIfExist config.users.groups [
    "networkmanager"
    "docker"
    "git"
  ];
  initialPassword = "password";
  isNormalUser = true;
  shell = pkgs.zsh;
  uid = 1000;
  username = "sdhlfqr";
}
