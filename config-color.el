;;; config-colors.el --- Setup color themes.



(require 'color-theme)
;; (color-theme-initialize)

;;(require 'color-theme-ir-black)
;;(require 'color-theme-eclipse)
;;(require 'color-theme-twilight)
;;(require 'color-theme-github)
;;(require 'color-theme-railscasts)

;; ***************************************************************************
;; Pick a color theme for the GUI and the console
;; ----------------------------------------------
;; Themes made for GUI don't always look good in the console.
;;

(set-variable 'color-theme-is-global nil)
(add-hook 'after-make-window-system-frame-hooks
          ;; Light
          ;;'color-theme-emacs-nw
          ;;'color-theme-github
          ;;'color-theme-eclipse
          ;;'color-theme-icu
          ;;'color-theme-dpaste

          ;;'color-theme-tangotango
         

          ;; Dark
          ;;'color-theme-tango
          ;;'color-theme-zenburn
          ;;'color-theme-subdued
          ;;'color-theme-less
          ;;'color-theme-blackboard
          'color-theme-twilight
          ;;'color-theme-railscasts
          ;;'color-theme-ir-black
          )
;;(add-hook 'after-make-console-frame-hooks
;;          ;;'color-theme-tty-dark
;;          'color-theme-emacs-nw
;;          )




(provide 'config-color)
;;; config-colors.el ends here
