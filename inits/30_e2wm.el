;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;; e2wm
; http://d.hatena.ne.jp/kiwanami/20100528/1275038929
;; (require 'e2wm) ;autoload
(global-set-key (kbd "M-+") 'e2wm:start-management)
(global-set-key (kbd "C-9") 'e2wm:dp-code-main-maximize-toggle-command)

;; (require 'magit)
;; (require 'e2wm-vcs)
;; ;; M-w に magit パースペクティブ変更を割り当て
;; (e2wm:add-keymap
;;  e2wm:pst-minor-mode-keymap
;;  '(("C-M-w" . e2wm:dp-magit))
;;  e2wm:prefix-key)
