This is an extremely minimalist vim colorscheme (almost no syntax highlighting).

To use:
- :colo nofrils-dark
- :colo nofrils-light

To customize:
- :let g:nofrils_strbackgrounds=1 to turn highlighted string backgrounds
- :let g:nofrils_heavycomments=1 to turn on high contrast comments rather than the default faded style

The only highlighted elements are spelling, errors, comments, vim features (diff, etc) and *optionally* string backgrounds

----

The below screenshots where taken with **:set spell**, **:let g:nofrils_strbackgrounds=1** and **:let g:nofrils_heavycomments=1**.  The pink(ish) highlight is for misspellings . 

![Dark Version](http://i.imgur.com/ARUjg1q.png)
![Light Version](http://i.imgur.com/GMXEMOi.png)

----

These screenshots are with default settings on diffs.

![Dark Version](http://i.imgur.com/heBamCh.png)
![Light Version](http://i.imgur.com/RSMuzGh.png)

----

Why did you even create this thing?  https://www.robertmelton.com/2016/03/13/syntax-highlighting-off/
