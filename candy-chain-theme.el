;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; candy-chain-theme.el --- colourful colour theme for Emacsen
;;
;; Copyright (c) 2011 Quildreen Motta
;;
;; Version 0.4.0
;; Keywords: candy chain colour theme
;; Author:   Quildreen Motta <quildreen@gmail.com>
;; URL:      http://github.com/killdream/candy-chain
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of GNU General Public Licence as published by the
;; Free Software Foundation; either version 2, or (at your option) any
;; later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public Licence for more details.
;;
;; You should have received a copy of the GNU General Public Licence
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary
;;
;; See README.md (or http://github.com/killdream/candy-chain#readme)

;;; Installation
;;
;; You'll need the `color-theme' package, get it from here:
;; http://www.nongnu.org/color-theme
;;
;; In your shell:
;;
;;     $ cd ~/.emacs.d/vendor
;;     $ git clone git://github.com/killdream/candy-chain.git
;;
;; In your emacs config:
;;
;;     (add-to-list 'load-path "/path/to/candy-chain")
;;     (require 'candy-chain)
;;     (color-theme-initialize)
;;     (color-theme-candy-chain)

;;; TODO:
;;
;; - define colours for GUI elements.
;; - finish defining colours for customize-group stuff.
;; - everything else?

;;; Code:

(eval-when-compile (require 'color-theme))

(defun color-theme-candy-chain ()
  "Candy Chain is a pretty colourful theme, on charcoal black bg.

The theme is supposed to be colourful, yet subtle. As in, it should
highlight what really matters to you, and make distingishing those
elements fairly easy, while making other things pretty as well, but
toning down them because they're just not as important."
  (interactive)
  (color-theme-install
   '(color-theme-candy-chain
     ((background-color . "#22252a")
      (background-mode  . dark)
      (border-color     . "black")
      (cursor-color     . "#ABB4A1")
      (foreground-color . "#eeeeee")
      (mouse-color      . "#000000"))

     ;;
     ;; Basic stuff
     ;;
     (default ((t (:background "#22252a" :foreground "#eeeeee"))))
     (font-lock-builtin-face ((t (:foreground "#FA2573"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#75766A"))))
     (font-lock-comment-face ((t (:foreground "#75766A"))))
     (font-lock-constant-face ((t (:foreground "#FA2573"))))
     (font-lock-doc-face ((t (:foreground "#ACAE95"))))
     (font-lock-function-name-face ((t (:foreground "#67D9F0"))))
     (font-lock-keyword-face ((t (:foreground "#C48DFF"))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:foreground "#75766A"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "#A6E32D"))))
     (font-lock-type-face ((t (:foreground "#FC951E"))))
     (font-lock-variable-name-face ((t (:foreground "#729FCF"))))
     (font-lock-warning-face ((t (:bold t :foreground "#E52222" :weight bold))))
     (fringe ((t (:background "#555753"))))
     (show-paren-match ((t (:background "#67D9F0" :foreground "#555753"))))
     (show-paren-mismatch ((t (:background "#FA2573"))))
     (minibuffer-prompt ((t (:foreground "#FC951E"))))
     (highlight ((t (:background "#303636"))))
     (region ((t (:background "#586045"))))
     (trailing-whitespace ((t (:bold t :background "#382323"
                                       :foreground "#624935" :weight bold))))

     ;;
     ;; ISearch
     ;;
     (isearch ((t (:background "#586045" :box "#ACAE95"))))
     (isearch-fail ((t (:background "#382323" :foreground "#E52222"))))

     ;;
     ;; Twittering mode
     ;;
     (twittering-uri-face ((t (:foreground "#729FCF"))))
     (twittering-username-face ((t (:foreground "#FC951E" :bold t))))

     ;;
     ;; Usual UI stuffs
     ;;
     (widget-field ((t (:background "#555753"))))
     (custom-group-tag-face ((t (:bold t      :foreground "#67D9F0"
                                 :weight bold :height 1.2))))
     (custom-variable-tag-face ((t (:bold t :foreground "#729FCF"
                                    :weight bold))))
     (custom-state-face ((t (:foreground "#A6E32Dr"))))
     (link ((t (:foreground "#729FCF" :underline nil))))

     ;;
     ;; JS2 stuff
     ;;
     (js2-function-param-face ((t (:foreground "#729FCF"))))

     ;;
     ;; Diff
     ;;
     (diff-added ((t (:foreground "#A6E32D"))))
     (diff-changed ((t (:foreground "#67D9F0"))))
     (diff-removed ((t (:foreground "#FA2573"))))
     (diff-header ((t (:background "#555753"))))
     (diff-file-header ((t (:bold t :background "#555753" :weight bold))))
     (diff-context ((t (:foreground "#EEEEEE"))))


     ;;
     ;; Whitespace mode
     ;;
     (whitespace-indentation ((t (:background "#555753"
                                  :foreground "#82996A"))))
     (whitespace-line ((t (:background "#5C5861" :foreground "#7A6D89"))))
     (whitespace-newline ((t (:foreground "#303636" :weight normal))))
     (whitespace-space ((t (:background "#303636" :foreground "#586045"))))
     (whitespace-tab ((t (:background "#303636" :foreground "#82996A"))))
     (whitespace-space-after-tab ((t (:background "#303636"
                                      :foreground "#82996A"))))
     (whitespace-space-before-tab ((t (:background "#382323"
                                       :foreground "#82996A"))))
     (whitespace-trailing ((t (:inherit 'trailing-whitespace))))
     (whitespace-empty ((t (:background "#382323" :foreground "#624935"))))
     (whitespace-hspace ((t (:background "#382323" :foreground "#82996A"))))

     ;;
     ;; Flyspell stuff
     ;;
     (flyspell-duplicate ((t (:background "#382323" :underline "#FC951E"
                              :bold t))))
     (flyspell-incorrect ((t (:background "#382323" :underline "#E52222"
                              :bold t))))

     ;;
     ;; ERC
     ;;
     (erc-notice-face ((t (:foreground "#75766A"))))
     (erc-current-nick-face ((t (:foreground "#FA2573"))))
     (erc-input-face ((t (:foreground "#ABB4A1"))))
     (erc-nick-default-face ((t (:foreground "#729FCF"))))
     (erc-prompt-face ((t (:foreground "#FC951E" :background nil))))
     (erc-timestamp-face ((t (:foreground "#75766A"))))

     ;;
     ;; ReStructuredText
     ;;
     (rst-level-1-face ((t (:foreground "#729FCF" :bold t))))
     (rst-level-2-face ((t (:inherit 'rst-level-1-face))))
     (rst-level-3-face ((t (:inherit 'rst-level-2-face))))
     (rst-level-4-face ((t (:inherit 'rst-level-3-face))))
     (rst-level-5-face ((t (:inherit 'rst-level-4-face))))
     (rst-level-6-face ((t (:inherit 'rst-level-5-face))))

     ;;
     ;; Yasnippet
     ;;
     (yas/field-highlight-face ((t (:background "#586045" :box "#ACAE95")))))))

(add-to-list 'color-themes '(color-theme-candy-chain 
                             "Candy Chain"
                             "Quildreen Motta"))