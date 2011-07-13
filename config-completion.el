;;; config-completion.el --- Automatic completion configuration.
;;
;; Copyright (C) 2011 Yesudeep Mangalapilly
;;
;; Author: Yesudeep Mangalapilly <yesudeep@gmail.com>
;; Keywords: convenience
;;
;; This file is not a part of GNU Emacs.
;;
;;; License:
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.


(require 'anything)
(require 'anything-config)


(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat config-dir "ac-dict"))
(ac-config-default)

;; (require 'ac-anything)
;; (require 'ac-dabbrev)

;; Configuration
(global-auto-complete-mode t)
(setq ac-auto-start 1)
(setq ac-dwim 1)
(setq ac-ignore-case 1)


;; Keybindings
(define-key ac-completing-map "\M-n" 'ac-next)
(define-key ac-completing-map "\M-p" 'ac-previous)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(define-key ac-complete-mode-map (kbd "M-/") 'ac-complete-with-anything)

;; The common sources for all modes.
(custom-set-variables
 '(ac-sources
   '(ac-source-abbrev
     ac-source-dabbrev
     ac-source-words-in-buffer
     ac-source-words-in-same-mode-buffers
     ac-source-files-in-current-dir
     ac-source-filename)))

;; Autocomplete will be enabled for all these modes.
(setq-default ac-modes
              '(
                ada-mode
                asm-mode
                c++-mode
                c-mode
                cc-mode
                clojure-mode
                coffee-mode
                cperl-mode
                css-mode
                css-mode
                ecmascript-mode
                emacs-lisp-mode
                emms-tag-editor-mode
                eshell-mode
                f90-mode
                fortran-mode
                haskell-mode
                html-mode
                java-mode
                javascript-mode
                js-mode
                lisp-interaction-mode
                lisp-mode
                literate-haskell-mode
                lua-mode
                makefile-mode
                org-mode
                perl-mode
                php-mode
                python-mode
                ruby-mode
                sass-mode
                scala-mode
                scheme-mode
                sgml-mode
                sh-mode
                xml-mode
                yaml-mode
                ))


;; Mode hooks
(add-hook 'eshell-mode-hook
          (lambda () (add-to-list 'ac-sources
                                  '(ac-source-dabbrev
                                    ac-source-files-in-current-dir
                                    ac-source-words-in-buffer))))

(add-hook 'python-mode-hook
          (lambda () (add-to-list 'ac-sources
                                  '(ac-source-symbols
                                    ac-source-filename
                                    ac-source-yasnippet
                                    ac-source-files-in-current-dir))))

(add-hook 'html-mode
          (lambda () (add-to-list 'ac-sources
                                  '(ac-source-symbols
                                    ac-source-filename
                                    ac-source-files-in-current-dir
                                    ac-source-words-in-buffer
                                    ac-source-abbrev
                                    ac-source-css-keywords))))
(add-hook 'emacs-lisp-mode-hook
          (lambda () (add-to-list 'ac-sources
                                  'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook
          (lambda () (add-to-list 'ac-sources
                                  'ac-source-filename)))
(add-hook 'css-mode-hook
          (lambda() (add-to-list 'ac-sources
                                 '(ac-source-symbols
                                   ac-source-files-in-current-dir
                                   ac-source-filename
                                   ac-source-css-keywords))))

(add-hook 'c-mode-hook
          (lambda() (add-to-list 'ac-sources
                                 '(ac-source-symbols
                                   ac-source-files-in-current-dir
                                   ac-source-filename))))

(provide 'config-completion)
;;; config-completion.el ends here
