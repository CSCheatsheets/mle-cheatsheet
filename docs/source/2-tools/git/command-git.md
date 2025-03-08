# Command - `git`

## Show Git Config

Show git configurations.

```shell
# Command 1: Show all the git configurations, both local (`./.git/config`), user-global
# (`~/.gitconfig`), and system-global (`/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig`).
git config --list

# Output 1
# credential.helper=osxkeychain
# init.defaultbranch=main
# user.name=global-name
# user.email=global-email
# core.repositoryformatversion=0
# core.filemode=true
# core.bare=false
# core.logallrefupdates=true
# core.ignorecase=true
# core.precomposeunicode=true
# remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
# remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
# branch.main.remote=origin
# branch.main.merge=refs/heads/main
# branch.main.vscode-merge-base=origin/main
# branch.main.vscode-merge-base=origin/main
# user.name=local-name
# user.email=local-email

# Command 2: Show git configurations in the local git repo (`./.git/config`).
git config --list --local

# Output 2
# core.repositoryformatversion=0
# core.filemode=true
# core.bare=false
# core.logallrefupdates=true
# core.ignorecase=true
# core.precomposeunicode=true
# remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
# remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
# branch.main.remote=origin
# branch.main.merge=refs/heads/main
# branch.main.vscode-merge-base=origin/main
# branch.main.vscode-merge-base=origin/main
# user.name=local-name
# user.email=local-email

# Command 3: Show git configurations in the global git configuration file (`~/.gitconfig`).
git config --list --global

# Output 3
# user.name=global-name
# user.email=global-email

# Command 4: Show origins (path to configuration files) of git configurations.
git config --list --show-origin

# Output 4
# file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   credential.helper=osxkeychain
# file:/Library/Developer/CommandLineTools/usr/share/git-core/gitconfig   init.defaultbranch=main
# file:/Users/feicheng/.gitconfig user.name=global-name
# file:/Users/feicheng/.gitconfig user.email=global-email
# file:.git/config        core.repositoryformatversion=0
# file:.git/config        core.filemode=true
# file:.git/config        core.bare=false
# file:.git/config        core.logallrefupdates=true
# file:.git/config        core.ignorecase=true
# file:.git/config        core.precomposeunicode=true
# file:.git/config        remote.origin.url=https://github.com/TechDailyNotes/study-notes-development-cheatsheets.git
# file:.git/config        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
# file:.git/config        branch.main.remote=origin
# file:.git/config        branch.main.merge=refs/heads/main
# file:.git/config        branch.main.vscode-merge-base=origin/main
# file:.git/config        branch.main.vscode-merge-base=origin/main
# file:.git/config        user.name=local-name
# file:.git/config        user.email=local-email
```

## Set Git Config

Set git configurations.

```shell
# Command 1: Set local user name.
git config user.name local-name

# Command 2: Set local user email.
git config user.email local-email

# Command 3: Set global user name.
git config --global user.name global-name

# Command 4: Set global user email.
git config --global user.email global-email
```

## Edit Commit Message

**Step 1**: Use the `--amend` option to open an interactive shell for editing
commit message.

```shell
git commit --amend
```

**Step 2**: In the interactive shell, edit the commit message.

## Merge Multiple Commits

Rebase/Squash/Merge multiple commits.

**Step 1**: Use the `-i` option to open an interactive shell for editing commit
message, and specify the number of commits to merge.

```shell
# Command 1
git rebase -i HEAD~[number_of_commits]

# Example 1
git rebase -i HEAD~2
```

**Step 2**: In the interactive shell, change leading `pick` to `s` to squash
selected commits, while keeping the leading `pick` to choose the base commit.
Then save the change.

```text
pick 3ac3a7b Add steps in example formats in templates
pick 688e5d6 Add

# Change to ...

# Keep this commit as the base commit.
pick 3ac3a7b Add steps in example formats in templates
# Merge this commit into the base commit.
s 688e5d6 Add
```

**Step 3**: In the interactive shell, edit the message for merged commits.

## Create an Orphan Branch

Create an orphan branch with no commit histories and no contexts, which looks
like a clean new repository. It can be used as the main branch for the GitHub page.

```shell
# Command 1: Use `checkout` in older Git versions.
git checkout --orphan new-branch

# Example 1
git checkout --orphan new-branch
git rm -rf .  # Remove all the tracked files.
echo "Hello World!" > README.md
git add .
git commit -m "Initial commit"

# Command 2: Use `switch` in newer Git versions.
git switch --orphan new-branch
```
