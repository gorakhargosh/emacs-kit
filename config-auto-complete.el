

;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)

;; Configuration
(global-auto-complete-mode t)
(setq ac-auto-start 1)
(setq ac-dwim 1)
;;(setq ac-ignore-case 1)

;; (defvar autopair-modes '(go-mode))
;; (defun turn-on-autopair-mode () (autopair-mode 1))
;; (dolist (mode autopair-modes)
;;   (add-hook (intern (concat (symbol-name mode) "-hook")) 'turn-on-autopair-mode))



(provide 'config-auto-complete)
