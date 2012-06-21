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

(provide 'bbcode-mode)
