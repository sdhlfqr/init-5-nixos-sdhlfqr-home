{ pkgs, ... }: {
  home.packages = [ pkgs.git-lfs ];

  programs.git.enable = true;
  programs.git.package = pkgs.gitAndTools.gitFull;

  programs.git.userName = "Sayf Dhulfiqar";
  programs.git.userEmail = "126487164+sdhlfqr@users.noreply.github.com";

  programs.git.extraConfig.init.defaultBranch = "main";
  programs.git.extraConfig.core.editor = "nvim";

  programs.git.aliases = {
    s = "status";

    l = "log --pretty=format:\"%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) [%an]\" --abbrev-commit -30";

    co = "checkout";
    cob = "checkout -b";
    del = "branch -D";

    branches = "branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate";

    push-all = "submodule foreach --recursive git push origin main";
    pull-all = "submodule foreach --recursive git pull origin main";
  };
}
