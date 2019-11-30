# Nofrils for [Vim](https://www.vim.org)

> "Syntax highlighting is juvenile." -- [Rob Pike](https://groups.google.com/forum/#!msg/golang-nuts/hJHCAaiL0so/kG3BHV6QFfIJ)

An extremely minimalist color scheme for [Vim](https://www.vim.org).
In fact, it has so few frills that we got rid of the extra L!

The only highlighted elements are comments, errors, spelling, vim features (diff, TODO, etc), and, optionally, string backgrounds.

*"What?! Why?!!"*  See [my blog](https://www.robertmelton.com/2016/03/13/syntax-highlighting-off/) for the rationale and more references.

## Installation

- [Vim 8 packages](http://vimhelp.appspot.com/repeat.txt.html#packages)
  - `git clone https://github.com/robertmeta/nofrils.git ~/.vim/pack/plugins/start/nofrils`
- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/robertmeta/nofrils.git ~/.vim/bundle/nofrils`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - `Plug 'robertmeta/nofrils'`
- [Vundle](https://github.com/VundleVim/Vundle.vim)
  - `Plugin 'robertmeta/nofrils'`

## Usage

- `:colorscheme nofrils-acme`
- `:colorscheme nofrils-dark`
- `:colorscheme nofrils-light`
- `:colorscheme nofrils-sepia`

## Options

- `:let g:nofrils_heavycomments=1` - enable high contrast comments
- `:let g:nofrils_heavylinenumbers=1` - enable high contrast line numbers
- `:let g:nofrils_strbackgrounds=1` - enable highlighted string backgrounds

## Commands

Once the theme is loaded, the following commands are available:

- `:NofrilsAcme` - use nofrils-acme theme
- `:NofrilsDark` - use nofrils-dark theme
- `:NofrilsLight` - use nofrils-light theme
- `:NofrilsSepia` - use nofrils-sepia theme
- `:NofrilsFocusCode` - focus only code, fade everything else
- `:NofrilsFocusComments` - focus only comments, fade everything else
- `:NofrilsFocusNormal` - reset back to normal settings

## Screenshots

### Dark with all options enabled

```vim
let g:nofrils_heavycomments=1
let g:nofrils_heavylinenumbers=1
let g:nofrils_strbackgrounds=1
colorscheme nofrils-dark
```
![Dark Version](http://i.imgur.com/1lUx2hY.png)

### Acme with no options enabled

```vim
let g:nofrils_heavycomments=0
let g:nofrils_heavylinenumbers=0
let g:nofrils_strbackgrounds=0
colorscheme nofrils-acme
```
![Acme Version](http://i.imgur.com/yn7OJrY.png)

### Sepia with heavy options enabled

```vim
let g:nofrils_heavycomments=1
let g:nofrils_heavylinenumbers=1
let g:nofrils_strbackgrounds=0
colorscheme nofrils-sepia
```
![Sepia Version](http://i.imgur.com/zwW5kir.png)

### Light with heavy comments enabled

```vim
let g:nofrils_heavycomments=1
let g:nofrils_heavylinenumbers=0
let g:nofrils_strbackgrounds=0
colorscheme nofrils-light
```
![Light Version](http://i.imgur.com/XXoxztJ.png)

### Diffs in Acme with no options enabled

```vim
let g:nofrils_heavylinenumbers=0
let g:nofrils_strbackgrounds=0
let g:nofrils_heavycomments=0
colorscheme nofrils-acme
```
![Diffs Acme Version](http://i.imgur.com/cLcbq7M.png)

## Clones & Related Projects

- Atom: https://atom.io/themes/nothrill-dark-syntax
- Emacs: https://github.com/lthms/nordless-theme.el (not exact a port, but useful for nofrils desires)
- [Kakoune](http://kakoune.org/): https://github.com/robertmeta/nofrils-kakoune
- VSCode: https://github.com/urld/vscode-nofrills

## License

[MIT License](LICENSE)
