;; -*- coding: utf-8 -*-

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq emacs-load-start-time (current-time))

(setq default-directory "~/")
;; load base settings
(add-to-list 'load-path "~/.emacs.d/config")

(load "wyj-basic")
(load "wyj-mode-line")
(load "wyj-mac")
(load "wyj-packages")
(load "wyj-ui")
(load "wyj-modes")
(load "wyj-elisp")

(when (require 'time-date nil t)
  (message "Emacs startup time: %d seconds"
	   (time-to-seconds (time-since emacs-load-start-time)))
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck company-c-headers ws-butler dtrt-indent clean-aindent-mode volatile-highlights sr-speedbar function-args helm-gtags helm-swoop helm nyan-mode go-mode exec-path-from-shell elpy color-theme-sanityinc-tomorrow auto-complete hideshowvis mark-multiple autopair paredit ace-jump-mode wrap-region undo-tree highlight-symbol expand-region smex window-number yasnippet tabbar))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t :foreground "CadetBlue" :inherit (shadow default)))))
