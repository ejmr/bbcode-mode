BBCode Mode
===========

This project adds support for writing [Bulletin Board Code][bbc] in
[GNU Emacs][emacs].  To use the mode all you need to do is place the
file in your `load-path` and then add `(require 'bbcode-mode)` to your
Emacs configuration file.

BBCode mode is still a work in progress.  When sending bug reports
please include the value of `bbcode-mode-version-number` and, if you
have cloned the official Git repository, the commit hash of the
version you are using.

[There are other modes for BBCode][ew-bbcode] already out there, so if
you do not find this mode to you liking then you may prefer the ones
by Jason McBrayer and Xah Lee.


Supported Tags
--------------

BBCode mode supports the following tags, with the following
key-bindings to insert them.  If you have a selected region then
BBCode mode will wrap the tag around the region.

### Common Tags ###

Key-bindings for common tags begin with `C-c C-t`.

* `[b]`: `C-c C-t b`
* `[i]`: `C-c C-t i`
* `[u]`: `C-c C-t u`
* `[s]`: `C-c C-t s`
* `[code]`: `C-c C-t c`
* `[url]`: `C-c C-t l`
* `[img]`: `C-c C-t m`
* `[center]`: `C-c C-t n`
* `[quote]`: `C-c C-t q`
* `[youtube]`: `C-c C-t y`
* `[email]`: `C-c C-t e`

### Font Tags ###

Key-bindings related to font tags begin with `C-c C-f`.

* `[size]`: `C-c C-f s`
* `[color]`: `C-c C-f c`

### List Tags ###

Key-bindings for list tags begin with `C-c C-l`.

* `[list]`: `C-c C-l l`
* `[li]`: `C-c C-l i`
* `[ul]`: `C-c C-l u`
* `[ol]`: `C-c C-l o`

### Table Tags ###

Key-bindings for table tags begin with `C-c C-b`.

* `[table]`: `C-c C-b t`
* `[tr]`: `C-c C-b r`
* `[th]`: `C-c C-b h`
* `[td]`: `C-c C-b d`


License
-------

[GNU General Public License][gpl]



[bbc]: http://bbcode.org/
[emacs]: http://www.gnu.org/software/emacs/
[gpl]: http://www.gnu.org/copyleft/gpl.html
[ew-bbcode]: http://www.emacswiki.org/emacs/BbCode
