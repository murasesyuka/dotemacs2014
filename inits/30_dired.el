;;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'popwin)
(popwin-mode 1)

(require 'direx)

(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
;(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
(global-set-key (kbd "C-c C-f") 'direx:jump-to-directory-other-window)

;;; http://d.hatena.ne.jp/khiker/20070129/nyumon_gnu_emacs
;;; 少し使いやすいファイラ
(setq dired-dwim-target t)

