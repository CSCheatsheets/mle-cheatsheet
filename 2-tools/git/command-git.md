# Command - `git`

## Show Git Config

Show git configurations.

<u>Example</u>: Command

```shell
# Command 1: Show all the git configurations, both local (`./.git/config`), user-global
# (`~/.gitconfig`), and system-global (`/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig`).
git config --list
# Command 2: Show git configurations in the local git repo (`./.git/config`).
git config --list --local
# Command 3: Show git configurations in the global git configuration file (`~/.gitconfig`).
git config --list --global
# Command 4: Show origins (path to configuration files) of git configurations.
git config --list --show-origin
```

<u>Example</u>: Output

```text
# Command 1: `git config --list`
credential.helper=osxkeychain
init.defaultbranch=main
user.name=feicheng
user.email=feicheng@amazon.com
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
core.ignorecase=true
core.precomposeunicode=true
remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main
branch.main.vscode-merge-base=origin/main
branch.main.vscode-merge-base=origin/main
user.name=ChengaFEI
user.email=cf482@cornell.edu

# Command 2: `git config --list --local`
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
core.ignorecase=true
core.precomposeunicode=true
remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main
branch.main.vscode-merge-base=origin/main
branch.main.vscode-merge-base=origin/main
user.name=ChengaFEI
user.email=cf482@cornell.edu

# Command 3: `git config --list --global`
user.name=feicheng
user.email=feicheng@amazon.com

# Command 4: `git config --list --show-origin`
file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   credential.helper=osxkeychain
file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   init.defaultbranch=main
file:/Users/feicheng/.gitconfig user.name=feicheng
file:/Users/feicheng/.gitconfig user.email=feicheng@amazon.com
file:.git/config        core.repositoryformatversion=0
file:.git/config        core.filemode=true
file:.git/config        core.bare=false
file:.git/config        core.logallrefupdates=true
file:.git/config        core.ignorecase=true
file:.git/config        core.precomposeunicode=true
file:.git/config        remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
file:.git/config        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
file:.git/config        branch.main.remote=origin
file:.git/config        branch.main.merge=refs/heads/main
file:.git/config        branch.main.vscode-merge-base=origin/main
file:.git/config        branch.main.vscode-merge-base=origin/main
file:.git/config        user.name=ChengaFEI
file:.git/config        user.email=cf482@cornell.edu
```

## Set Git Config

## Change Commit Message

## Merge Multiple Commits
