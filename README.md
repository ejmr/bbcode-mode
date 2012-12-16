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

[There is another `bbcode-mode`](https://bitbucket.org/jfm/emacs-bbcode/)
out there.  The biggest different is that my version supports more
tags.  However, some users may prefer the more simple key-bindings of
the other version, written by Jason McBrayer.  Please try out both.


Supported Tags
--------------

* `[b]`
* `[i]`
* `[u]`
* `[s]`
* `[code]`
* `[url]`
* `[center]`
* `[quote]`
* `[size]`
* `[color]`
* `[youtube]`
* `[list]`
* `[li]`
* `[ul]`
* `[ol]`
* `[table]`
* `[tr]`
* `[th]`
* `[td]`
* `[img]`


License
-------

[GNU General Public License][gpl]


[bbc]: http://bbcode.org/
[emacs]: http://www.gnu.org/software/emacs/
[gpl]: http://www.gnu.org/copyleft/gpl.html
