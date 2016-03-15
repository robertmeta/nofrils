" Name: No Frils Sepia Colorscheme
" Author: robertmeta (on Github)
" URL: https://github.com/robertmeta/nofrils
" (see this url for latest release & screenshots)
" License: OSI approved MIT license
" Modified: 2016 Feb 26

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "nofrils-sepia"

if !exists("g:nofrils_strbackgrounds") " {{{
    let g:nofrils_strbackgrounds = 0
endif " }}}

" Baseline {{{
hi Normal		term=NONE	cterm=NONE	ctermfg=0	ctermbg=230	gui=NONE	guifg=#000000	guibg=#FFFFD7
" }}}

" Faded {{{
hi ColorColumn		term=NONE	cterm=NONE	ctermfg=240	ctermbg=223	gui=NONE	guifg=#585858	guibg=#FFD7AF
hi Comment		term=NONE	cterm=NONE	ctermfg=3	ctermbg=NONE	gui=NONE	guifg=#CDCD00	guibg=NONE
hi FoldColumn		term=NONE	cterm=NONE	ctermfg=240	ctermbg=3	gui=NONE	guifg=#585858	guibg=#CDCD00
hi Folded		term=NONE	cterm=NONE	ctermfg=3	ctermbg=NONE	gui=NONE	guifg=#CDCD00	guibg=NONE
hi LineNr		term=NONE	cterm=NONE	ctermfg=8	ctermbg=230	gui=NONE	guifg=#555555	guibg=#FFFFD7
hi NonText		term=NONE	cterm=NONE	ctermfg=248	ctermbg=NONE	gui=NONE	guifg=#A8A8A8	guibg=NONE
hi SignColumn		term=NONE	cterm=NONE	ctermfg=240	ctermbg=230	gui=NONE	guifg=#585858	guibg=#FFFFD7
hi SpecialKey		term=NONE	cterm=NONE	ctermfg=240	ctermbg=230	gui=NONE	guifg=#585858	guibg=#FFFFD7
hi StatusLineNC		term=NONE	cterm=NONE	ctermfg=239	ctermbg=248	gui=NONE	guifg=#4E4E4E	guibg=#A8A8A8
hi VertSplit		term=NONE	cterm=NONE	ctermfg=239	ctermbg=248	gui=NONE	guifg=#4E4E4E	guibg=#A8A8A8
" }}}

" Highlighted {{{
hi CursorColumn		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=228	gui=NONE	guifg=NONE	guibg=#FFFF5F
hi CursorIM		term=NONE	cterm=NONE	ctermfg=239	ctermbg=4	gui=NONE	guifg=#4E4E4E	guibg=#00FFFF
hi CursorLineNr		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=228	gui=NONE	guifg=NONE	guibg=#FFFF5F
hi CursorLine		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=228	gui=NONE	guifg=NONE	guibg=#FFFF5F
hi Cursor		term=NONE	cterm=NONE	ctermfg=239	ctermbg=4	gui=NONE	guifg=#4E4E4E	guibg=#00FFFF
hi Directory		term=NONE	cterm=NONE	ctermfg=53	ctermbg=NONE	gui=NONE	guifg=#5F005F	guibg=NONE
hi ErrorMsg		term=NONE 	cterm=NONE      ctermfg=9	ctermbg=15	gui=NONE	guifg=#FF5555	guibg=#FFFFFF
hi Error		term=NONE	cterm=NONE	ctermfg=9	ctermbg=15	gui=NONE	guifg=#FF5555	guibg=#FFFFFF
hi ModeMsg		term=NONE	cterm=NONE	ctermfg=53	ctermbg=NONE	gui=NONE	guifg=#5F005F	guibg=NONE
hi MoreMsg		term=NONE	cterm=NONE	ctermfg=53	ctermbg=NONE	gui=NONE	guifg=#5F005F	guibg=NONE
hi Question		term=NONE	cterm=NONE	ctermfg=53	ctermbg=NONE	gui=NONE	guifg=#5F005F	guibg=NONE
hi Search		term=NONE	cterm=NONE	ctermfg=15	ctermbg=6	gui=NONE	guifg=#FFFFFF	guibg=#00CDCD
hi StatusLine		term=NONE	cterm=NONE	ctermfg=15	ctermbg=239	gui=NONE	guifg=#FFFFFF	guibg=#4E4E4E
hi Todo	                term=NONE	cterm=NONE	ctermfg=10	ctermbg=NONE	gui=NONE	guifg=#00FF00   guibg=NONE
hi VisualNOS		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=53	gui=NONE	guifg=NONE	guibg=#5F005F 
hi WarningMsg		term=NONE	cterm=NONE	ctermfg=9	ctermbg=15	gui=NONE	guifg=#FF5555	guibg=#FFFFFF
" }}}

" Reversed {{{
hi DiffText		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
hi IncSearch		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
hi MatchParen		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
hi Pmenu		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
hi TabLineSel		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
hi Visual		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
hi WildMenu		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
" }}}

" Diff {{{
hi DiffAdd		term=NONE	cterm=NONE	ctermfg=15	ctermbg=22	gui=NONE	guifg=NONE	guibg=#005F00
hi DiffChange		term=NONE	cterm=NONE	ctermfg=15	ctermbg=17	gui=NONE	guifg=NONE	guibg=#00005F
hi DiffDelete		term=NONE	cterm=NONE	ctermfg=15	ctermbg=52	gui=NONE	guifg=NONE	guibg=#5F0000
hi DiffText		term=reverse	cterm=reverse	ctermfg=NONE	ctermbg=NONE	gui=reverse	guifg=NONE	guibg=NONE
" }}}

" Spell {{{
hi SpellBad		term=underline	cterm=underline	ctermfg=5	ctermbg=NONE	gui=underline	guifg=#CD00CD	guibg=NONE
hi SpellCap		term=underline	cterm=underline	ctermfg=5	ctermbg=NONE	gui=underline	guifg=#CD00CD	guibg=NONE
hi SpellLocal		term=underline	cterm=underline	ctermfg=5	ctermbg=NONE	gui=underline	guifg=#CD00CD	guibg=NONE
hi SpellRare		term=underline	cterm=underline	ctermfg=5	ctermbg=NONE	gui=underline	guifg=#CD00CD	guibg=NONE
" }}}

" Vim Features {{{
hi Menu	                term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi PmenuSbar		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi PmenuSel		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi PmenuThumb		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Scrollbar		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi TabLine		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi TabLineFill		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Tooltip		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
" }}}

" Syntax Highlighting (or lack there of) {{{
hi Boolean		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Character		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Conceal		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Conditional		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Constant		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Debug		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Define		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Delimiter		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Directive		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Exception		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Float		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Format		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Function		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Identifier		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Ignore		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Include		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Keyword		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Label		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Macro		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Number		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Operator		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi PreCondit		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi PreProc		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Repeat		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Special		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi SpecialChar		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi SpecialComment       term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Statement		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi StorageClass		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi String		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Structure		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Tag	        	term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Title		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Type	        	term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Typedef		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
hi Underlined		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=NONE	gui=NONE	guifg=NONE	guibg=NONE
" }}}

" Optional Syntax Features {{{
if g:nofrils_strbackgrounds
    hi String		term=NONE	cterm=NONE	ctermfg=NONE	ctermbg=229	gui=NONE	guifg=NONE	guibg=#FFFFAF
end
" }}}
