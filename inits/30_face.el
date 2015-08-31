;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(load-theme 'misterioso t)

;; (require 'color-theme)
;; (color-theme-initialize)

;; ;(color-theme-katester)
;; (color-theme-euphoria)



;;; menu bar
;(menu-bar-mode -1)

;;; tool bar
(tool-bar-mode -1)

;;; scroll bar
;; http://d.hatena.ne.jp/m2ym/20110401/1301617991
(require 'yascroll)
(global-yascroll-bar-mode 1)
(scroll-bar-mode -1)


;;; 色を付ける
(global-font-lock-mode t)
;(setq font-lock-support-mode 'fast-lock-mode)
(setq font-lock-maximum-decoration t)
;(setq fast-lock-cache-directories '("~/.emacs-flc" "."))

;;; show line/column
;(line-number-mode t)
(column-number-mode 1)

;; (require 'powerline)
;; (powerline-default-theme)		;TODO;not disable?

;;; nyan bar
(nyan-mode 1)				;TODO;conflict powerline
