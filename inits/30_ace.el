;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;; http://rubikitch.com/2014/10/09/ace-jump-mode/

(global-ace-isearch-mode 1)

;; ヒント文字に使う文字を指定する
(setq ace-jump-mode-move-keys
      (append "asdfghjkl;:]qwertyuiop@zxcvbnm,." nil))
;; ace-jump-word-modeのとき文字を尋ねないようにする
(setq ace-jump-word-mode-use-query-char nil)
;(global-set-key (kbd "C-:") 'ace-jump-char-mode)
;(global-set-key (kbd "C-;") 'ace-jump-word-mode);conflict helm
;(global-set-key (kbd "C-M-;") 'ace-jump-line-mode)

(setq ace-isearch-input-idle-delay 0.5)
