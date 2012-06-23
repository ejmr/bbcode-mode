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

Supported Tags
--------------

* `[b]`
* `[i]`
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



[bbc]: http://bbcode.org/

[emacs]: http://www.gnu.org/software/emacs/
