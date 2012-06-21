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

(defconst bbcode-mode-version-number "1.0.0"
  "BBCode Mode version number.")

(define-derived-mode bbcode-mode text-mode "BBCode"
  "Major mode for writing BBCode markup.

\\{bbcode-mode-map}"
  ;; The most commonly predicted use-case for this mode is writing
  ;; text that will be posted on a website forum.  Those forum
  ;; programs automatically turn newlines into <br/> tags, which is
  ;; not what we want.  But we still want automatic newlines for
  ;; paragraphs as we write.  So we disable auto-fill-mode in order to
  ;; avoid actual newlines, but enable visual-line-mode so that text
  ;; is automatically wrapped for readabality.
  (auto-fill-mode 0)
  (visual-line-mode 1))

(provide 'bbcode-mode)
