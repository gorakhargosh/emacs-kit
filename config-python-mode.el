;;; config-python-mode.el --- Python mode customizations.

(require 'python)

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\wscript$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\wscript_build$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\SConscript$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\SConstruct$" . python-mode) auto-mode-alist))


(autoload 'python-mode "python-mode" "Python editing mode." t)
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
	    interpreter-mode-alist)
      python-mode-hook
      '(lambda () (progn
		    (set-variable 'py-indent-offset 4)
		    (set-variable 'py-smart-indentation nil)
		    (set-variable 'indent-tabs-mode nil)
		    ;;(highlight-beyond-fill-column)
                    (define-key python-mode-map "\C-m" 'newline-and-indent)
                                        ;(pabbrev-mode)
                                        ;(abbrev-mode)
                    )
         )
      )


(provide 'config-python-mode)
;;; config-python-mode.el ends here
