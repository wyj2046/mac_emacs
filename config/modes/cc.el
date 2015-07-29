;; -*- coding: utf-8 -*-
(setq-default c-basic-offset 4)

(require 'cc-mode)
(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)
