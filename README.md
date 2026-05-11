# backpack

A personal toolkit I carry to every machine. Like a dotfiles repo, but for tools, scripts, and workflows — not just config. Anything that proves useful in one place comes here so it's available everywhere.

## Philosophy

- **Portable by default.** Clone and run `setup.sh` to be up and running.
- **Earned, not aspirational.** Nothing goes in backpack until it's proven useful.
- **Cross-machine consistency.** The same muscle memory, tools, and shortcuts work wherever you land.

## Contents

### `task` — Git worktree task manager

A CLI for managing parallel workstreams inside a git repo using worktrees and tmux windows.

**Dependencies:** `git`, `tmux`, `fzf`

**Usage:**

```
task [command]

commands:
  switch                 open the fzf task palette (default)
  list                   list all worktree tasks
  status <name>          print status for a task
  open <name> [path]     switch to or create a tmux window for a task
  new [name]             create a branch + worktree + tmux window
  run <name> <cmd...>    send a command to a task's tmux window
  archive <name> [path]  remove a clean worktree and its tmux window

shortcuts:
  -d, --delete           pick one or more worktrees to archive via fzf
```

The `switch` command (default) opens an fzf palette showing all worktrees with their status — clean/dirty, whether a tmux window is open, and any detected port. From there you can switch, create, or archive tasks without leaving the keyboard.

**Hooks:** If `.task/after-new` exists in your repo root and is executable, it runs automatically whenever a new task is created.

## Setup

```bash
git clone https://github.com/anukem/backpack.git
cd backpack
./setup.sh
```

This installs everything into `~/.local/bin`. Make sure that's on your `$PATH`:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

Add that line to your `~/.zshrc` or `~/.bashrc` to make it permanent.
