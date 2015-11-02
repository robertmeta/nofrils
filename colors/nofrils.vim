" Name:     No Frils colorscheme
" Author:   RobertMeta (on Github)
" URL:      https://github.com/robertmeta/nofrils
"           (see this url for latest release & screenshots)
" License:  OSI approved MIT license (see end of this file)
" Modified: 2015 Nov 01

hi clear
if exists("syntax_on")
        syntax reset
endif

let colors_name = "nofrils"

if &background == "light"
        hi Normal cterm=none ctermbg=230 ctermfg=0
        hi Char cterm=none ctermbg=none ctermfg=none
        hi ColorColumn ctermbg=0
        hi Comment cterm=none ctermbg=none ctermfg=240
        hi Conditional cterm=none ctermbg=none ctermfg=none
        hi Constant cterm=none ctermbg=none ctermfg=none
        hi CursorLine cterm=none ctermfg=none ctermbg=229
        hi DiffAdd cterm=none ctermfg=none
        hi DiffChange cterm=none ctermfg=none
        hi DiffDelete cterm=none ctermfg=none
        hi DiffText cterm=reverse ctermfg=none
        hi Directive cterm=none ctermbg=none ctermfg=none
        hi Error cterm=reverse ctermbg=15 ctermfg=9
        hi ErrorMsg cterm=reverse ctermbg=15 ctermfg=9
        hi FoldColumn cterm=none ctermfg=none
        hi Folded cterm=none ctermfg=none
        hi Format cterm=none ctermbg=none ctermfg=none
        hi Func cterm=none ctermbg=none ctermfg=0
        hi Identifier cterm=none ctermbg=none ctermfg=none
        hi Ignore cterm=none ctermfg=none
        hi IncSearch cterm=reverse ctermfg=none
        hi Keyword cterm=none ctermbg=none ctermfg=none
        hi LineNr cterm=none ctermfg=8 ctermbg=230
        hi MatchParen cterm=none ctermbg=0 ctermfg=none
        hi ModeMsg cterm=none ctermfg=none
        hi MoreMsg cterm=none ctermfg=none
        hi Number cterm=none ctermbg=none ctermfg=none
        hi PreProc cterm=none ctermfg=none
        hi Search cterm=reverse ctermfg=none
        hi Special cterm=none ctermbg=none ctermfg=none
        hi SpecialKey cterm=none ctermfg=none
        hi Statement cterm=none ctermbg=none ctermfg=none
        hi StatusLine cterm=reverse ctermfg=none
        hi StatusLineNC cterm=none ctermfg=none
        hi String cterm=underline ctermfg=240 term=italic
        hi Title cterm=none ctermfg=none
        hi Todo cterm=none ctermbg=0 ctermfg=11
        hi Type cterm=none ctermbg=none ctermfg=none
        hi VertSplit cterm=reverse ctermfg=none
        hi Visual cterm=reverse ctermfg=none
        hi VisualNOS cterm=none ctermfg=none
        hi WarningMsg cterm=none ctermfg=none
        hi WildMenu cterm=none ctermfg=none
else " dark
        hi Normal cterm=none ctermbg=235 ctermfg=255
        hi Char cterm=none ctermbg=none ctermfg=none
        hi ColorColumn ctermbg=0
        hi Comment cterm=none ctermbg=none ctermfg=240
        hi Conditional cterm=none ctermbg=none ctermfg=none
        hi Constant cterm=none ctermbg=none ctermfg=none
        hi CursorLine cterm=none ctermfg=none ctermbg=237
        hi DiffAdd cterm=none ctermfg=none
        hi DiffChange cterm=none ctermfg=none
        hi DiffDelete cterm=none ctermfg=none
        hi DiffText cterm=reverse ctermfg=none
        hi Directive cterm=none ctermbg=none ctermfg=none
        hi Error cterm=reverse ctermbg=15 ctermfg=9
        hi ErrorMsg cterm=reverse ctermbg=15 ctermfg=9
        hi FoldColumn cterm=none ctermfg=none
        hi Folded cterm=none ctermfg=none
        hi Format cterm=none ctermbg=none ctermfg=none
        hi Func cterm=none ctermbg=234 ctermfg=0
        hi Identifier cterm=none ctermbg=none ctermfg=none
        hi Ignore cterm=none ctermfg=none
        hi IncSearch cterm=reverse ctermfg=none
        hi Keyword cterm=none ctermbg=none ctermfg=none
        hi LineNr cterm=none ctermfg=8 ctermbg=235
        hi MatchParen cterm=none ctermbg=0 ctermfg=none
        hi ModeMsg cterm=none ctermfg=none
        hi MoreMsg cterm=none ctermfg=none
        hi Number cterm=none ctermbg=none ctermfg=none
        hi PreProc cterm=none ctermfg=none
        hi Search cterm=reverse ctermfg=none
        hi Special cterm=none ctermbg=none ctermfg=none
        hi SpecialKey cterm=none ctermfg=none
        hi Statement cterm=none ctermbg=none ctermfg=none
        hi StatusLine cterm=reverse ctermfg=none
        hi StatusLineNC cterm=none ctermfg=none
        hi String cterm=underline ctermfg=245
        hi Title cterm=none ctermfg=none
        hi Todo cterm=none ctermbg=0 ctermfg=11
        hi Type cterm=none ctermbg=none ctermfg=none
        hi VertSplit cterm=none ctermfg=none
        hi Visual cterm=reverse ctermfg=none
        hi VisualNOS cterm=none ctermfg=none
        hi WarningMsg cterm=none ctermfg=none
        hi WildMenu cterm=none ctermfg=none
endif
