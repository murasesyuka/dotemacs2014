;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(load-theme 'misterioso t)

;; (require 'color-theme)
;; (color-theme-initialize)

;; ;(color-theme-katester)
;; (color-theme-euphoria)



(require 'rainbow-delimiters)

;(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;(global-rainbow-delimiters-mode)



;;; scrollバー
;; http://d.hatena.ne.jp/m2ym/20110401/1301617991
(require 'yascroll)
(global-yascroll-bar-mode 1)

