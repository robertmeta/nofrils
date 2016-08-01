This is an extremely minimalist vim colorscheme (almost no syntax highlighting).

To use:
- :colo nofrils-dark
- :colo nofrils-light
- :colo nofrils-sepia

To customize:
- :let g:nofrils\_strbackgrounds=1 to turn highlighted string backgrounds, for languages where strings are a major part of them
- :let g:nofrils\_heavycomments=1 to turn on high contrast comments rather than the default faded style, for projects where the comments are not deceit and lies
- :let g:nofrils\_heavylinenumbers=1 to turn on brighter line numbers, for people who use relative line numbers to hop around

Commands (once theme is loaded):
- :NofrilsDark use dark theme
- :NofrilsLight use light theme
- :NofrilsSepia use sepia theme
- :NofrilsFocusNormal reset back to normal settings
- :NofrilsFocusCode focus only code, fade everything else
- :NofrilsFocusComments focus only comments, fade everything else

The only highlighted elements are spelling, errors, comments, vim features (diff, etc) and *optionally* string backgrounds

**Click for non-fuzzified versions**

![Sepia Version](http://i.imgur.com/AU06II7.gif)
**let g:nofrils_heavylinenumbers=1**, **:let g:nofrils_strbackgrounds=1** and **:let g:nofrils_heavycomments=1**

![Dark Version](http://i.imgur.com/fjlOpKp.gif)
*let g:nofrils_heavylinenumbers=0*, **:let g:nofrils_strbackgrounds=1** and **:let g:nofrils_heavycomments=1**

![Light Version](http://i.imgur.com/RSYLnKd.gif)
*let g:nofrils_heavylinenumbers=0*, *:let g:nofrils_strbackgrounds=0* and *:let g:nofrils_heavycomments=0*

![Diffs Dark Version](https://i.imgur.com/AkgERzz.gif)
*let g:nofrils_heavylinenumbers=0*, *:let g:nofrils_strbackgrounds=0* and *:let g:nofrils_heavycomments=0*


----

Why did you even create this thing?  https://www.robertmelton.com/2016/03/13/syntax-highlighting-off/

----

Forks

- Atom: https://atom.io/themes/nothrill-dark-syntax
