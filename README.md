# A Docker container for developing Wiki Books

This repository provides a docker container
which allows to run a terminal based development environment
basically consisting of `hugo`, `git`, `zsh`, `vim`, and `tmux`.

More specifically, the container contains the following software.

  * [Hugo] is the world's fastest framework for building websites.
  * [Git] is a free and open source distributed version control system.
  * [fzf] is a general-purpose command-line fuzzy finder.
  * [ripgrep] is a line-oriented search tool.

  * [Zsh] is a UNIX command interpreter (shell) usable as an interactive login shell and as a shell script command processor.
  * [Antibody] is a shell plugin manager made from the ground up thinking about performance.
  * [Oh My Zsh] is an open source, community-driven framework for managing your zsh configuration.
  * [zsh-syntax-highlighting] provides syntax highlighting for zsh.
  * [typewritten] is a minimal zsh prompt theme.

  * [Vim] is a highly configurable text editor built to make creating and changing any kind of text very efficient.
  * [Vim Plug] is a minimalist Vim plugin manager.
  * [sensible.vim] is a universal set of default settings for Vim.
  * [obsession.vim] automates recording Vim sessions.
  * [surround.vim] provides mappings to easily delete, change and add surrounding characters.
  * [fugitive.vim] is the premier Vim plugin for Git.
  * [lightline.vim] is a light and configurable statusline plugin for Vim.

  * [Tmux] is a terminal multiplexer.
  * [tpm] is a tmux plugin manager.
  * [tmux-sensible] is a set of tmux options that should be acceptable to everyone.
  * [tmux-resurrect] can restore the tmux environment after system restarts.
  * [tmux-pain-control] adds standard pane navigation bindings to tmux.
  * [vim-tmux-focus-events] restores focus events when using vim inside tmux.
  * [vim-tmux-clipboard] provides seamless integration fom vim and tmux's clipboard.
  * [tmux-themepack] provides various themes for tmux.

[Hugo]: https://gohugo.io/
[Git]: https://git-scm.com/
[fzf]: https://github.com/junegunn/fzf
[ripgrep]: https://github.com/BurntSushi/ripgrep

[Zsh]: http://zsh.sourceforge.net/Doc/Release/Introduction.html
[Antibody]: https://github.com/getantibody/antibody
[Oh My Zsh]: https://github.com/ohmyzsh/ohmyzsh
[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[typewritten]: https://github.com/reobin/typewritten

[Vim]: https://www.vim.org/
[Vim Plug]: https://github.com/junegunn/vim-plug
[sensible.vim]: https://github.com/tpope/vim-sensible
[obsession.vim]: https://github.com/tpope/vim-obsession
[surround.vim]: https://github.com/tpope/vim-surround
[fugitive.vim]: https://github.com/tpope/vim-fugitive
[lightline.vim]: https://github.com/itchyny/lightline.vim

[Tmux]: https://github.com/tmux/tmux/wiki
[tpm]: https://github.com/tmux-plugins/tpm
[tmux-sensible]: https://github.com/tmux-plugins/tmux-sensible
[tmux-resurrect]: https://github.com/tmux-plugins/tmux-resurrect
[tmux-pain-control]: https://github.com/tmux-plugins/tmux-pain-control
[vim-tmux-focus-events]: https://github.com/tmux-plugins/vim-tmux-focus-events
[vim-tmux-clipboard]: https://github.com/roxma/vim-tmux-clipboard
[tmux-themepack]: https://github.com/jimeh/tmux-themepack

When building the container a non-root user is created that can be used to develop in it.
To avoid permission issues when mounting local files to a container volume,
you can adjust the build args `HOME`, `USER`, `UID`, `GROUP`, and `GID`
to reflect your local setup.

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

