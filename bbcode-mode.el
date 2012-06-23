;;; bbcode-mode.el --- Major mode for writing BBCode markup
;;;
;;; Copyright 2012 Eric James Michael Ritz
;;;     <lobbyjones@gmail.com>
;;;     <http://github.com/ejmr/bbcode-mode>
;;;
;;;
;;;
;;; License:
;;;
;;; This file is free software; you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published
;;; by the Free Software Foundation; either version 3 of the License,
;;; or (at your option) any later version.
;;;
;;; This file is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this file; if not, write to the Free Software
;;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;;; 02110-1301, USA.
;;;
;;;
;;;
;;; Usage:
;;;
;;; Put this file in your Emacs lisp path (i.e. site-lisp) and add
;;; this to your `.emacs' file:
;;;
;;;     (require 'bbcode-mode)
;;;

(defconst bbcode-mode-version-number "1.0.0-alpha"
  "BBCode Mode version number.")

(defun bbcode/make-tag-regex (tag)
  "Makes a regular expression that matches the given `tag' name.
The expression contains no capture groups."
  (unless (stringp tag)
    (error "Requires a string but called with %s" tag))
  (format "\\[%s.*?\\].*?\\[/%s\\]" tag tag))

(defconst bbcode/font-lock-keywords
  (list
   `(,(bbcode/make-tag-regex "b") . 'bold)
   `(,(bbcode/make-tag-regex "i") . 'italic)
   `(,(bbcode/make-tag-regex "code") . 'font-lock-function-name-face)
   `(,(bbcode/make-tag-regex "url") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "center") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "quote") . 'font-lock-doc-face)
   `(,(bbcode/make-tag-regex "size") . 'font-lock-variable-name-face)
   `(,(bbcode/make-tag-regex "color") . 'font-lock-variable-name-face)
   `(,(bbcode/make-tag-regex "youtube") . 'font-lock-variable-name-face)
   `(,(bbcode/make-tag-regex "list") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "li") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "ul") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "ol") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "table") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "tr") . 'font-lock-keyword-face)
   `(,(bbcode/make-tag-regex "th") . 'bold)
   `(,(bbcode/make-tag-regex "td") . 'font-lock-variable-name-face)
   `(,(bbcode/make-tag-regex "img") . 'font-lock-keyword-face))
  "Regular expressions to highlight BBCode markup.")

(defun bbcode/insert-tag (prefix start end tag)
  "Inserts a pair of `tag' in the buffer at the current point and
then places the point in the middle of the tags.  The tag will be
wrapped around the points `start' and `end' if the user has
selected a region.  If the function is called with the universal
prefix argument then the point will be placed in the opening tag
so the user can enter any attributes."
  (interactive "PrMTag: ")
  (if (and transient-mark-mode mark-active)
      (progn
        (kill-region start end)
        (insert (format "[%s]" tag))
        (yank)
        (insert (format "[/%s]" tag)))
    (insert (format "[%s][/%s]" tag tag)))
  (if prefix
      (progn
        (backward-char)
        (search-backward "]")
        (insert "="))
    (search-backward "[")))

(define-derived-mode bbcode-mode text-mode "BBCode"
  "Major mode for writing BBCode markup.

\\{bbcode-mode-map}"
  ;; Setup font-lock.
  (set (make-local-variable 'font-lock-defaults)
       '(bbcode/font-lock-keywords nil t))
  (set (make-local-variable 'font-lock-multiline) t)
  ;; The most commonly predicted use-case for this mode is writing
  ;; text that will be posted on a website forum.  Those forum
  ;; programs automatically turn newlines into <br/> tags, which is
  ;; not what we want.  But we still want automatic newlines for
  ;; paragraphs as we write.  So we disable auto-fill-mode in order to
  ;; avoid actual newlines, but enable visual-line-mode so that text
  ;; is automatically wrapped for readabality.
  (auto-fill-mode 0)
  (visual-line-mode 1))

(defmacro bbcode/make-key-binding (key tag)
  "Binds the sequence `key', which must be a valid argument for
the macro `kbd', to a function that will insert `tag' into the
buffer."
  `(define-key bbcode-mode-map (kbd ,key)
    '(lambda (prefix)
       (interactive "P")
       (bbcode/insert-tag prefix (region-beginning) (region-end) ,tag))))

;; Keys that insert most tags are prefixed with 'C-c C-t'.
(bbcode/make-key-binding "C-c C-t i" "i")
(bbcode/make-key-binding "C-c C-t b" "b")
(bbcode/make-key-binding "C-c C-t c" "code")
(bbcode/make-key-binding "C-c C-t u" "url")
(bbcode/make-key-binding "C-c C-t m" "img")
(bbcode/make-key-binding "C-c C-t q" "quote")
(bbcode/make-key-binding "C-c C-t n" "center")
(bbcode/make-key-binding "C-c C-t y" "youtube")

;; Keys related to modifying font properties begin with 'C-c C-f'.
(bbcode/make-key-binding "C-c C-f s" "size")
(bbcode/make-key-binding "C-c C-f c" "color")

;; Keys for creating lists begin with 'C-c C-l'.
(bbcode/make-key-binding "C-c C-l l" "list")
(bbcode/make-key-binding "C-c C-l u" "ul")
(bbcode/make-key-binding "C-c C-l o" "ol")
(bbcode/make-key-binding "C-c C-l i" "li")

;; Keys for tables begin with 'C-c C-b'
(bbcode/make-key-binding "C-c C-b t" "table")
(bbcode/make-key-binding "C-c C-b h" "th")
(bbcode/make-key-binding "C-c C-b r" "tr")
(bbcode/make-key-binding "C-c C-b d" "td")

(provide 'bbcode-mode)
