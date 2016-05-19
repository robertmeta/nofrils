This is an extremely minimalist vim colorscheme (almost no syntax highlighting).

To use:
- :colo nofrils-dark
- :colo nofrils-light

To customize:
- :let g:nofrils\_strbackgrounds=1 to turn highlighted string backgrounds, for languages where strings are a major part of them
- :let g:nofrils\_heavycomments=1 to turn on high contrast comments rather than the default faded style, for projects where the comments are not deceit and lies
- :let g:nofrils\_heavylinenumbers=1 to turn on brighter line numbers, for people who use relative line numbers to hop around

The only highlighted elements are spelling, errors, comments, vim features (diff, etc) and *optionally* string backgrounds

----

The below two screenshots.  The dark one is default, the light one had **let g:nofrils_heavylinenumbers=1**, **:let g:nofrils_strbackgrounds=1** and **:let g:nofrils_heavycomments=1** set.

![Dark/Light Versions](http://i.imgur.com/DJrAcg6.png)

----

These two screenshots are with default settings on diffs.

![Dark Version](http://i.imgur.com/heBamCh.png)
![Light Version](http://i.imgur.com/RSMuzGh.png)

----

Why did you even create this thing?  https://www.robertmelton.com/2016/03/13/syntax-highlighting-off/

----

Forks

- Atom: https://atom.io/themes/nothrill-dark-syntax
