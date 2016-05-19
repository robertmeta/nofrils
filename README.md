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

The below two screenshots where taken with **:let g:nofrils\_strbackgrounds=1** and **:let g:nofrils\_heavycomments=1**.  The pink(ish) highlight in strings and comments is for misspellings.

![Dark Version](http://i.imgur.com/ARUjg1q.png)
![Light Version](http://i.imgur.com/GMXEMOi.png)

----

These two screenshots are with default settings on diffs.

![Dark Version](http://i.imgur.com/heBamCh.png)
![Light Version](http://i.imgur.com/RSMuzGh.png)

----

Why did you even create this thing?  https://www.robertmelton.com/2016/03/13/syntax-highlighting-off/
