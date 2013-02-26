BBCode Mode
===========

This project adds support for writing [Bulletin Board Code][bbc] in
[GNU Emacs][emacs].  To use the mode all you need to do is place the
file in your `load-path` and then add `(require 'bbcode-mode)` to your
Emacs configuration file.

When sending bug reports please include the value of
`bbcode-mode-version-number` and, if you have cloned the official Git
repository, the commit hash of the version you are using.

[There are other modes for BBCode][ew-bbcode] already out there, so if
you do not find this mode to you liking then you may prefer the ones
by Jason McBrayer and Xah Lee.


Supported Tags
--------------

Below is a list of all the tags BBCode Mode supports.  It also lists
the key-bindings to insert those tags.  If you have a selected region
then BBCode Mode will wrap the tag around the region.

Each key-binding has three parts.  They all begin with `C-c`.  The
second part indicates the ‘group’ to which the binding belongs.  And
the third part is a single letter named after the actual tag.  Each
section below provides a mnemonic to help remember the second part.

### Common Tags ###

Key-bindings for common tags begin with `C-c C-t`.

Mnemonic: <strong>T</strong>ag

* `[b]`: `C-c C-t b`
* `[center]`: `C-c C-t n`
* `[code]`: `C-c C-t c`
* `[del]`: `C-c C-t d`
* `[email]`: `C-c C-t e`
* `[i]`: `C-c C-t i`
* `[img]`: `C-c C-t m`
* `[quote]`: `C-c C-t q`
* `[s]`: `C-c C-t s`
* `[u]`: `C-c C-t u`
* `[url]`: `C-c C-t l`

### Font Tags ###

Key-bindings related to font tags begin with `C-c C-f`.

Mnemonic: <strong>F</strong>ont

* `[color]`: `C-c C-f c`
* `[size]`: `C-c C-f s`

### List Tags ###

Key-bindings for list tags begin with `C-c C-l`.

Mnemonic: <strong>L</strong>ist

* `[li]`: `C-c C-l i`
* `[list]`: `C-c C-l l`
* `[ol]`: `C-c C-l o`
* `[ul]`: `C-c C-l u`

### Table Tags ###

Mnemonic: Ta<strong>b</strong>le

Key-bindings for table tags begin with `C-c C-b`.

* `[table]`: `C-c C-b t`
* `[td]`: `C-c C-b d`
* `[th]`: `C-c C-b h`
* `[tr]`: `C-c C-b r`

### Special Tags ###

These are tags which are uncommon in BBCode and may even be unique to
specific websites.  These key-bindings all begin with `C-c C-s`.

Mnemonic: <strong>S</strong>ecial

* `[attachment]`: `C-c C-s a`
* `[gvideo]`: `C-c C-t g`
* `[manual]`: `C-c C-s m`
* `[wiki]`: `C-c C-t w`
* `[youtube]`: `C-c C-t y`


Contributors
------------

* [Sebastian Wiesner](https://github.com/lunaryorn)


License
-------

[GNU General Public License][gpl]



[bbc]: http://bbcode.org/
[emacs]: http://www.gnu.org/software/emacs/
[gpl]: http://www.gnu.org/copyleft/gpl.html
[ew-bbcode]: http://www.emacswiki.org/emacs/BbCode
