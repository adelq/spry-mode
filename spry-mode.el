;;; spry-mode.el -- Major mode for editing Spry

;; Author: Adel Qalieh <aqalieh95@gmail.com>
;; Created: 21 December 2016

;; Copyright (C) 2016 Adel Qalieh <aqalieh95@gmail.com>

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA


;;; Commentary:
;;
;; This mode is a WIP mode for the Spry language.

;;; Code:

(defvar spry-mode-hook nil)
(defvar spry-mode-map
  (let ((map (make-keymap)))
    (define-key map "\C-j" 'newline-and-indent)
    map)
  "Keymap for Spry major mode.")

(add-to-list 'auto-mode-alist '("\\.sy\\'" . spry-mode))

(defconst spry-types
  '("int" "float" "string")
  "Spry literal types defined in #Literals.")

(defconst spry-keywords
  '("and" "or" "not" "else")
  "Spry keywords (incomplete) from #Booleans.")

(defconst spry-constants
  '("true" "false" "nil" "undef" "modules")
  "Spry constants (incomplete) from #Nil and Undef.")

(defconst spry-builtins
  '("print" "parse" "serialize" "commented" "asFloat" "asInt"
    "do" "$" "eva" "eval" "^" "reify" "litify" "quote" "litword" "word"))

(defvar spry-mode-syntax-table
  (let ((spry-mode-syntax-table (make-syntax-table)))
    (modify-syntax-entry ?# "<" synTable)
    (modify-syntax-entry ?\n ">" synTable)
    spry-mode-syntax-table)
  "Syntax table for spry-mode.")

(provide 'spry-mode)

;;; spry-mode.el ends here
