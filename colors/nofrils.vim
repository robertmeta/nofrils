" Name: No Frils Colorscheme
" Author: RobertMeta (on Github)
" URL: https://github.com/robertmeta/nofrils
" (see this url for latest release & screenshots)
" License: OSI approved MIT license (see end of this file)
" Modified: 2015 Nov 05

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "nofrils"

if &background == "light"
    colo nofrils-light
else
    colo nofrils-dark
end
