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
* `[center]`: `C-c C-t n`
* `[code]`: `C-c C-t c`
* `[email]`: `C-c C-t e`
* `[i]`: `C-c C-t i`
* `[img]`: `C-c C-t m`
* `[quote]`: `C-c C-t q`
* `[s]`: `C-c C-t s`
* `[u]`: `C-c C-t u`
* `[url]`: `C-c C-t l`
* `[youtube]`: `C-c C-t y`

### Font Tags ###

Key-bindings related to font tags begin with `C-c C-f`.

* `[color]`: `C-c C-f c`
* `[size]`: `C-c C-f s`

### List Tags ###

Key-bindings for list tags begin with `C-c C-l`.

* `[li]`: `C-c C-l i`
* `[list]`: `C-c C-l l`
* `[ol]`: `C-c C-l o`
* `[ul]`: `C-c C-l u`

### Table Tags ###

Key-bindings for table tags begin with `C-c C-b`.

* `[table]`: `C-c C-b t`
* `[td]`: `C-c C-b d`
* `[th]`: `C-c C-b h`
* `[tr]`: `C-c C-b r`

### Special Tags ###

These are tags which are uncommon in BBCode and may even be unique to
specific websites.  These key-bindings all begin with `C-c C-s`.

* `[attachment]`: `C-c C-s a`


License
-------

[GNU General Public License][gpl]



[bbc]: http://bbcode.org/
[emacs]: http://www.gnu.org/software/emacs/
[gpl]: http://www.gnu.org/copyleft/gpl.html
[ew-bbcode]: http://www.emacswiki.org/emacs/BbCode
