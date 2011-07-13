;;; config-python-mode.el --- Python mode customizations.
;;
;;; Commentary:

;; 

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

;; Static code analysis with flymake.
;; requires flymake-cursor
;; and ~/.emacs.d/bin/ added to your PATH
;; (add-hook 'find-file-hook 'flymake-find-file-hook)
;; (when (load "flymake" t)
;;   (defun flymake-pyflakes-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                'flymake-create-temp-inplace))
;;        (local-file (file-relative-name
;;             temp-file
;;             (file-name-directory buffer-file-name))))
;;       (list "pycheckers"  (list local-file))))
;;    (add-to-list 'flymake-allowed-file-name-masks
;;              '("\\.py\\'" flymake-pyflakes-init)))
;; (load-library "flymake-cursor")
;; (global-set-key [f10] 'flymake-goto-prev-error)
;; (global-set-key [f11] 'flymake-goto-next-error)


(provide 'config-python-mode)
;;; config-python-mode.el ends here
