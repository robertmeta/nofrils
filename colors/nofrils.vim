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
    hi Normal gui=NONE guibg=#FFFFD7 guifg=#000000 cterm=NONE ctermbg=230 ctermfg=0
    hi Char gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi ColorColumn guibg=#000000 ctermbg=0
    hi Comment gui=NONE guibg=NONE guifg=#585858 cterm=NONE ctermbg=NONE ctermfg=240
    hi Conditional gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Constant gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#FFFFAF cterm=NONE ctermfg=NONE ctermbg=229
    hi DiffAdd gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi DiffChange gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi DiffDelete gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi DiffText gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Directive gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Error gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi ErrorMsg gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi FoldColumn gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Folded gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Format gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Func gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Identifier gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Ignore gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi IncSearch gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Keyword gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi LineNr gui=NONE guifg=#555555 guibg=#AF5F00 cterm=NONE ctermfg=8 ctermbg=230
    hi MatchParen gui=reverse guibg=NONE guifg=NONE cterm=reverse ctermbg=NONE ctermfg=NONE
    hi ModeMsg gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi MoreMsg gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Number gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi PreProc gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Search gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Special gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi SpecialKey gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Statement gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi StatusLine gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi StatusLineNC gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi String gui=NONE guifg=#585858 term=italic cterm=NONE ctermfg=240 term=italic
    hi Title gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Todo gui=NONE guibg=#000000 guifg=#FFFF55 cterm=NONE ctermbg=0 ctermfg=11
    hi Type gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi VertSplit gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Visual gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi VisualNOS gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi WarningMsg gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi WildMenu gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
else " dark
    hi Normal gui=NONE guibg=#262626 guifg=#FFFFFF cterm=NONE ctermbg=235 ctermfg=255
    hi Char gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi ColorColumn guibg=#000000 ctermbg=0
    hi Comment gui=NONE guibg=NONE guifg=#585858 cterm=NONE ctermbg=NONE ctermfg=240
    hi Conditional gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Constant gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi CursorLine gui=NONE guifg=NONE guibg=#3A3A3A cterm=NONE ctermfg=NONE ctermbg=237
    hi DiffAdd gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi DiffChange gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi DiffDelete gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi DiffText gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Directive gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Error gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi ErrorMsg gui=reverse guibg=#FFFFFF guifg=#FF5555 cterm=reverse ctermbg=15 ctermfg=9
    hi FoldColumn gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Folded gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Format gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Func gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Identifier gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi Ignore gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi IncSearch gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Keyword gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi LineNr gui=NONE guifg=#555555 guibg=#262626 cterm=NONE ctermfg=8 ctermbg=235
    hi MatchParen gui=reverse guibg=NONE guifg=NONE cterm=reverse ctermbg=NONE ctermfg=NONE
    hi ModeMsg gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi MoreMsg gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Number gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi PreProc gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Search gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi Special gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi SpecialKey gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Statement gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi StatusLine gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi StatusLineNC gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi String gui=NONE guifg=#8A8A8A cterm=NONE ctermfg=245
    hi Title gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Todo gui=NONE guibg=#000000 guifg=#FFFF55 cterm=NONE ctermbg=0 ctermfg=11
    hi Type gui=NONE guibg=NONE guifg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
    hi VertSplit gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi Visual gui=reverse guifg=NONE cterm=reverse ctermfg=NONE
    hi VisualNOS gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi WarningMsg gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
    hi WildMenu gui=NONE guifg=NONE cterm=NONE ctermfg=NONE
endif
