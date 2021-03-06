;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; ;;; http://d.hatena.ne.jp/mooz/20100421/p1
;; ;; (install-elisp "http://cc-mode.sourceforge.net/src/cc-defs.el")
;; ;; (install-elisp-from-emacswiki "c-eldoc.el")
;; (load "c-eldoc")

(setq auto-mode-alist
      (append '(
                ("\\.cu$"   . c++-mode)
                ("\\.cuh$"  . c++-mode)
                ) auto-mode-alist))

;; (setq-default c-basic-offset 4     ;;基本インデント量4
;;               tab-width 4          ;;タブ幅4
;;               indent-tabs-mode -1)  ;;インデントをタブでするかスペースでするか


(defun my/c-eldoc()
  (set (make-local-variable 'eldoc-idle-delay) 0.20)
  (c-turn-on-eldoc-mode)
  )

(defun my/c-offset()
  (c-set-style "linux")
  (setq c-basic-offset 8)
  (setq tab-width 8)
  (setq indent-tabs-mode -1)	; インデントは空白文字で行う（TABコードを空白に変換）
  ;xb; (setq c-auto-newline t) ; オートインデント オン
  )

(defun my/c++-offset()
  (c-set-style "stroustrup")
  (setq indent-tabs-mode 1)     ; インデントは空白文字で行う（TABコードを空白に変換）
  (setq c-basic-offset 4)
  (setq tab-width 4)
  ;; (c-set-offset 'innamespace 0)   ; namespace {}の中はインデントしない
  ;; (c-set-offset 'arglist-close 0) ; 関数の引数リストの閉じ括弧はインデントしない
  )

(add-hook 'c-mode-hook   'my/c-offset)
(add-hook 'c-mode-hook   'my/c-eldoc)
(add-hook 'c++-mode-hook 'my/c++-offset)

;(remove-hook 'c-mode-hook 'my/c-offset)
;(remove-hook 'c-mode-hook   'my/c-eldoc)
;(remove-hook 'c++-mode-hook 'my/c++-offset)
