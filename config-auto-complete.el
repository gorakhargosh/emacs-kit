

;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)

;; Configuration
(global-auto-complete-mode t)
(setq ac-auto-start 1)
(setq ac-dwim 1)
;;(setq ac-ignore-case 1)


(provide 'config-auto-complete)
