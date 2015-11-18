" Name: No Frils Light Colorscheme
" Author: RobertMeta (on Github)
" URL: https://github.com/robertmeta/nofrils
" (see this url for latest release & screenshots)
" License: OSI approved MIT license (see end of this file)
" Modified: 2015 Nov 05

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "nofrils-light"

" Baseline {{{
hi Normal cterm=NONE ctermfg=0 ctermbg=255 gui=NONE guifg=#000000 guibg=#E4E4E4
" }}}

" Faded {{{
hi Comment cterm=NONE ctermfg=248 ctermbg=NONE gui=NONE guifg=#A8A8A8 guibg=NONE
hi FoldColumn cterm=NONE ctermfg=240 ctermbg=NONE gui=NONE guifg=#585858 guibg=NONE
hi Folded cterm=NONE ctermfg=0 ctermbg=253 gui=NONE guifg=#000000 guibg=#DADADA
hi LineNr cterm=NONE ctermfg=8 ctermbg=254 gui=NONE guifg=#555555 guibg=#E4E4E4
hi NonText cterm=NONE ctermfg=248 ctermbg=NONE gui=NONE guifg=#A8A8A8 guibg=NONE
hi SignColumn cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#E4E4E4
hi StatusLineNC cterm=NONE ctermfg=0 ctermbg=248 gui=NONE guifg=#000000 guibg=#A8A8A8
hi VertSplit cterm=NONE ctermfg=0 ctermbg=248 gui=NONE guifg=#000000 guibg=#A8A8A8
" }}}

" Highlighted {{{
hi Cursor cterm=NONE ctermfg=0 ctermbg=4 gui=NONE guifg=#000000 guibg=#00FFFF
hi CursorIM cterm=NONE ctermfg=0 ctermbg=4 gui=NONE guifg=#000000 guibg=#00FFFF
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=15 gui=NONE guifg=NONE guibg=#FFFFFF
hi CursorLineNr cterm=NONE ctermfg=NONE ctermbg=15 gui=NONE guifg=NONE guibg=#FFFFFF
hi Directory cterm=NONE ctermfg=53 ctermbg=NONE gui=NONE guifg=#5F005F guibg=NONE
hi Error cterm=NONE ctermfg=9 ctermbg=15 gui=NONE guifg=#FF5555 guibg=#FFFFFF
hi ErrorMsg cterm=NONE ctermfg=9 ctermbg=15 gui=NONE guifg=#FF5555 guibg=#FFFFFF
hi Search cterm=NONE ctermfg=15 ctermbg=6 gui=NONE guifg=#FFFFFF guibg=#00CDCD
hi StatusLine cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#FFFFFF guibg=#000000
hi Todo cterm=NONE ctermfg=0 ctermbg=11 gui=NONE guifg=#000000 guibg=#FFFF55
" }}}

" Reversed {{{
hi ColorColumn cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi CursorColumn cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi DiffText cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi IncSearch cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi MatchParen cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi Pmenu cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi TabLineSel cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi Visual cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi WildMenu cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
" }}}

" Diff {{{
hi DiffAdd cterm=NONE ctermfg=15 ctermbg=22 gui=NONE guifg=NONE guibg=#005F00
hi DiffChange cterm=NONE ctermfg=15 ctermbg=17 gui=NONE guifg=NONE guibg=#00005F
hi DiffDelete cterm=NONE ctermfg=15 ctermbg=52 gui=NONE guifg=NONE guibg=#5F0000
hi DiffText cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
" }}}

" Spell {{{
hi SpellBad cterm=NONE ctermfg=0 ctermbg=1 gui=NONE guifg=#000000 guibg=#CD0000
" hi SpellCap cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
" hi SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
" hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
" }}}

" Vim Features {{{
" TODO: Go through these and give them some special colors
hi Menu cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi ModeMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi MoreMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PmenuSbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PmenuSel cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Question cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Scrollbar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi TabLineFill cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tooltip cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi VisualNOS cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi WarningMsg cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
" }}}

" Syntax Highlighting {{{
hi Boolean cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Character cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conceal cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conditional cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Debug cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Define cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Delimiter cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Directive cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Exception cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Float cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Format cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Function cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Identifier cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Ignore cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Include cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Label cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Macro cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Number cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Operator cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreCondit cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreProc cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Repeat cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialChar cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialComment cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Special cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Statement cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi StorageClass cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi String cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Structure cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tag cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Title cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Type cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Typedef cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Underlined cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
" }}}
