{ ... }: {
  programs.zsh = {
    enable = true;

    shellAliases = {
      n = "nvim";
      ll = "ls -lA";
      sudo = "doas";
    };

    history = {
      size = 10000;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };
}

