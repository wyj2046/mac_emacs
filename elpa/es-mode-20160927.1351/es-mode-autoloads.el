;;; es-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "es-cc" "es-cc.el" (22528 25509 0 0))
;;; Generated autoloads from es-cc.el

(autoload 'es-command-center "es-cc" "\
Open the Elasticsearch Command Center

\(fn)" t nil)

;;;***

;;;### (autoloads nil "es-mode" "es-mode.el" (22528 25509 0 0))
;;; Generated autoloads from es-mode.el

(autoload 'es-mode "es-mode" "\
Major mode for editing Elasticsearch queries.
\\{es-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.es\\'" . es-mode))

;;;***

;;;### (autoloads nil nil ("es-mode-pkg.el" "es-parse.el" "ob-elasticsearch.el")
;;;;;;  (22528 25509 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; es-mode-autoloads.el ends here
