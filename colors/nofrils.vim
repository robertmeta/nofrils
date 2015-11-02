" Name:  No Frils colorscheme
" Author: RobertMeta (on Github)
" URL:  https://github.com/robertmeta/nofrils
"   (see this url for latest release & screenshots)
" License: OSI approved MIT license (see end of this file)
" Modified: 2015 Nov 01

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "nofrils"

if &background == "light"
    hi Normal gui=none guibg=#FFFFD7 guifg=#000000 cterm=none ctermbg=230 ctermfg=0
    hi Char gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi ColorColumn guibg=#000000 ctermbg=0
    hi Comment gui=none guibg=none guifg=#585858 cterm=none ctermbg=none ctermfg=240
    hi Conditional gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Constant gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi CursorLine gui=none guifg=none guibg=#FFFFAF cterm=none ctermfg=none ctermbg=229
    hi DiffAdd gui=none guifg=none cterm=none ctermfg=none
    hi DiffChange gui=none guifg=none cterm=none ctermfg=none
    hi DiffDelete gui=none guifg=none cterm=none ctermfg=none
    hi DiffText gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Directive gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Error gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi ErrorMsg gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi FoldColumn gui=none guifg=none cterm=none ctermfg=none
    hi Folded gui=none guifg=none cterm=none ctermfg=none
    hi Format gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Func gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Identifier gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Ignore gui=none guifg=none cterm=none ctermfg=none
    hi IncSearch gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Keyword gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi LineNr gui=none guifg=#555555 guibg=#AF5F00 cterm=none ctermfg=8 ctermbg=230
    hi MatchParen gui=reverse guibg=none guifg=none cterm=reverse ctermbg=none ctermfg=none
    hi ModeMsg gui=none guifg=none cterm=none ctermfg=none
    hi MoreMsg gui=none guifg=none cterm=none ctermfg=none
    hi Number gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi PreProc gui=none guifg=none cterm=none ctermfg=none
    hi Search gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Special gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi SpecialKey gui=none guifg=none cterm=none ctermfg=none
    hi Statement gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi StatusLine gui=reverse guifg=none cterm=reverse ctermfg=none
    hi StatusLineNC gui=none guifg=none cterm=none ctermfg=none
    hi String gui=none guifg=#585858 term=italic cterm=none ctermfg=240 term=italic
    hi Title gui=none guifg=none cterm=none ctermfg=none
    hi Todo gui=none guibg=#000000 guifg=#FFFF55 cterm=none ctermbg=0 ctermfg=11
    hi Type gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi VertSplit gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Visual gui=reverse guifg=none cterm=reverse ctermfg=none
    hi VisualNOS gui=none guifg=none cterm=none ctermfg=none
    hi WarningMsg gui=none guifg=none cterm=none ctermfg=none
    hi WildMenu gui=none guifg=none cterm=none ctermfg=none
else " dark
    hi Normal gui=none guibg=#262626 guifg=#FFFFFF cterm=none ctermbg=235 ctermfg=255
    hi Char gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi ColorColumn guibg=#000000 ctermbg=0
    hi Comment gui=none guibg=none guifg=#585858 cterm=none ctermbg=none ctermfg=240
    hi Conditional gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Constant gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi CursorLine gui=none guifg=none guibg=#3A3A3A cterm=none ctermfg=none ctermbg=237
    hi DiffAdd gui=none guifg=none cterm=none ctermfg=none
    hi DiffChange gui=none guifg=none cterm=none ctermfg=none
    hi DiffDelete gui=none guifg=none cterm=none ctermfg=none
    hi DiffText gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Directive gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Error gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi ErrorMsg gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi FoldColumn gui=none guifg=none cterm=none ctermfg=none
    hi Folded gui=none guifg=none cterm=none ctermfg=none
    hi Format gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Func gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Identifier gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi Ignore gui=none guifg=none cterm=none ctermfg=none
    hi IncSearch gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Keyword gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi LineNr gui=none guifg=#555555 guibg=#262626 cterm=none ctermfg=8 ctermbg=235
    hi MatchParen gui=reverse guibg=none guifg=none cterm=reverse ctermbg=none ctermfg=none
    hi ModeMsg gui=none guifg=none cterm=none ctermfg=none
    hi MoreMsg gui=none guifg=none cterm=none ctermfg=none
    hi Number gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi PreProc gui=none guifg=none cterm=none ctermfg=none
    hi Search gui=reverse guifg=none cterm=reverse ctermfg=none
    hi Special gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi SpecialKey gui=none guifg=none cterm=none ctermfg=none
    hi Statement gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi StatusLine gui=reverse guifg=none cterm=reverse ctermfg=none
    hi StatusLineNC gui=none guifg=none cterm=none ctermfg=none
    hi String gui=none guifg=#8A8A8A cterm=none ctermfg=245
    hi Title gui=none guifg=none cterm=none ctermfg=none
    hi Todo gui=none guibg=#000000 guifg=#FFFF55 cterm=none ctermbg=0 ctermfg=11
    hi Type gui=none guibg=none guifg=none cterm=none ctermbg=none ctermfg=none
    hi VertSplit gui=none guifg=none cterm=none ctermfg=none
    hi Visual gui=reverse guifg=none cterm=reverse ctermfg=none
    hi VisualNOS gui=none guifg=none cterm=none ctermfg=none
    hi WarningMsg gui=none guifg=none cterm=none ctermfg=none
    hi WildMenu gui=none guifg=none cterm=none ctermfg=none
endif
