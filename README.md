# tmsu-fzf - ZLE widgets for TMSU using fzf

[Overview](#overview) |
[Installation](#installation) |
[Requirements](#requirements) |
[License](#license)

[![license-badge]][license-link]

## Overview

This zsh plugin adds widgets based on [fzf-widgets][fzf-widgets-link] for navigating
files and directories based on [TMSU][tmsu-link] tags.

This is a WIP and currently only provides cd'ing into tagged directories.

## Installation

You will need [fzf-widgets][fzf-widgets-link] loaded in your zsh to use this plugin.

If you use zplug, the following lines are required:

```zsh
zplug 'ytet5uy4/fzf-widgets'

zplug 'crater2150/tmsu-fzf'
```

## Requirements

- [fzf-widgets][fzf-widgets-link] 
- [TMSU][tmsu-link]

## License

Copyright (c) 2020 crater2150

Released under the MIT License, see **[LICENSE.md][license-link]**.

[license-badge]: https://img.shields.io/github/license/crater2150/tmsu-fzf.svg?style=flat-square
[license-link]: LICENSE.md

[fzf-widgets-link]: //github.com/ytet5uy4/fzf-widgets
[tmsu-link]: https://tmsu.org/

