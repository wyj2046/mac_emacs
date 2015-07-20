;; -*- coding: utf-8 -*-

;; mac alt key
;; http://stackoverflow.com/questions/7743402/how-can-i-change-meta-key-from-alt-to-cmd-on-mac-in-emacs-24
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; exec-path-from-shell
;; need install from elpa
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
