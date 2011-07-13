;;; init.el --- Initialization module.
;;


(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


;; Configuration root directory path.
(setq config-dir (file-name-directory
                  (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path config-dir)



(require 'config-bindings)

;; Default directory
;;(setq default-directory "~/")

