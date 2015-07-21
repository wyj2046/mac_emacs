;; -*- coding: utf-8 -*-
;; 需要从elpa安装go-mode

(require 'go-mode-autoloads)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-copy-env "GOPATH"))

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'go-autocomplete)
(require 'go-flymake)
(load-file "~/.emacs.d/plugins/oracle.el")

; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
; http://tleyden.github.io/blog/2014/05/27/configure-emacs-as-a-go-editor-from-scratch-part-2/
(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go generate && go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
  (local-set-key (kdb "C-c C-k") 'godoc)
  )

(add-hook 'go-mode-hook 'my-go-mode-hook)
