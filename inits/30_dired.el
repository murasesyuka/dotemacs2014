;;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)


;;; http://d.hatena.ne.jp/khiker/20070129/nyumon_gnu_emacs
;;; 少し使いやすいファイラ
(setq dired-dwim-target t)

