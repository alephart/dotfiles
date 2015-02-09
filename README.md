# Chris Arcand's dotfiles

Your dotfiles are how you personalize your system. These are mine.

These dotfiles contain my own configurations for git, vim, tmux, zsh using
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), pry, and more.

## Install

    rake

I make absolutely no guarantee that everything will get symlinked and set up properly. It should - but
always, always make backups of your own dotfiles beforehand. You will also have to set up iterm2 customizations
manually.

The bash and Sublime configurations are deprecated.

### vim

Many of the basic bindings are from [Maximum Awesome](https://github.com/square/maximum-awesome), the set of dotfiles I originally started using with vim.

* `,d` brings up [NERDTree](https://github.com/scrooloose/nerdtree), a sidebar buffer for navigating and manipulating files
* `,f` finds current file in NERDTree sidebar
* `,t` brings up [ctrlp.vim](https://github.com/kien/ctrlp.vim), a project file filter for easily opening specific files
* `,b` restricts ctrlp.vim to open buffers
* `,a` starts project search with [ack.vim](https://github.com/mileszs/ack.vim) using [ag](https://github.com/ggreer/the_silver_searcher) (like ack)
* `ds`/`cs` delete/change surrounding characters (e.g. `"Hey!"` + `ds"` = `Hey!`, `"Hey!"` + `cs"'` = `'Hey!'`) with [vim-surround](https://github.com/tpope/vim-surround)
* `\\\` toggles current line comment
* `\\` toggles visual selection comment lines
* `vii`/`vai` visually select *in* or *around* the cursor's indent
* `,[space]` cancels highlight (:nohl)
* `<C-]>` jump to definition using ctags
* `,l` begins aligning lines on a string, usually used as `,l=` to align assignments
* `<C-hjkl>` move between windows, shorthand for `<C-w> hjkl`
* `,rs` runs current RSpec example, `,rt` runs full RSpec file, `,rl` runs last RSpec example...all within [vim-dispatch](https://github.com/tpope/vim-dispatch)
* `K` greps project for current word under cursor
* And loads more...

## tmux

* `<C-a>` is the prefix
* mouse scroll initiates tmux scroll
* `prefix v` makes a vertical split
* `prefix s` makes a horizontal split

If you have three or more panes:
* `prefix +` opens up the main-horizontal-layout
* `prefix =` opens up the main-vertical-layout

You can adjust the size of the smaller panes in `tmux.conf` by lowering or increasing the `other-pane-height` and `other-pane-width` options.

## Uninstall

    rake uninstall

Note that this won't remove everything, but your vim configuration should be reset to whatever it was before installing. Some uninstallation steps will be manual.

## Contribute

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
