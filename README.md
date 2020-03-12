# tmsu-fzf - ZLE widgets for TMSU using fzf

[Overview](#overview) |
[Installation](#installation) |
[Requirements](#requirements) |
[Widgets](#widgets) |
[Configuration](#configuration) |
[License](#license)

[![license-badge]][license-link]

## Overview

This zsh plugin adds widgets based on [fzf-widgets][fzf-widgets-link] for navigating
files and directories based on [TMSU][tmsu-link] tags.

This is a WIP and currently only provides cd'ing into tagged directories.

## Requirements

- [fzf-widgets][fzf-widgets-link] ([see installation](#installation)
- [TMSU][tmsu-link]

## Installation

You will need [fzf-widgets][fzf-widgets-link] loaded in your zsh to use this plugin.

If you use zplug, the following lines are required:

```zsh
zplug 'ytet5uy4/fzf-widgets'

zplug 'crater2150/tmsu-fzf'
```

Having the TMSU virtual filesystem mounted enables the prompts to only show
relevant tags for multi-tag-selection: if you select tag `a`, and there is
another tag  `b` in your database, it will only be available for selection, if
there are files tagged with both. If you don't want this behaviour, you can
[disable it](#configuration).

## Widgets

To use the provided widgets, bind them to a key in your zshrc, e.g.
```zsh
bindkey "^t" tmsu-fzf-change-directory
```

### `tmsu-fzf-change-directory`
Prompts for tags until `<done>` is selected. Then all directories matching the
tags are listed. Select one to change to it.

### `tmsu-fzf-insert-file`
Prompts for tags until `<done>` is selected. Then all matching entries for the
tags are listed. Select one to insert it at the current cursor position.

## Configuration

You can configure the widgets via `zstyle`:

### `zstyle ':fzf:tmsu:tag' prompt-on-unique [on/off]`

Setting this to `on` will open a prompt, even if the only choice left is
`<done>`. By default this prompt will be skipped and just assume `<done>` as
input.

### `zstyle ':fzf:tmsu:tag' disable-vfs [on/off]`

Setting this to on will disable the use of a mounted tmsu filesystem to limit
choice to relevant tags.

## License

Copyright (c) 2020 crater2150

Released under the MIT License, see **[LICENSE.md][license-link]**.

[license-badge]: https://img.shields.io/github/license/crater2150/tmsu-fzf.svg?style=flat-square
[license-link]: LICENSE.md

[fzf-widgets-link]: //github.com/ytet5uy4/fzf-widgets
[tmsu-link]: https://tmsu.org/

