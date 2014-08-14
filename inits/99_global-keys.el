;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;; キーバインド
(global-set-key (kbd "C-h") 'delete-backward-char) ; 削除
(global-set-key (kbd "M-?") 'help-for-help)        ; ヘルプ
;(global-set-key (kbd "C-z") 'undo)                 ; undo
;(global-set-key (kbd "C-M-z") 'redo)                 ; redo
;(global-set-key (kbd "C-c i") 'indent-region)       ; インデント
;(global-set-key (kbd "C-c C-i") 'dabbrev-expand)   ; 補完
;(global-set-key (kbd "C-c ;") 'comment-region)      ; コメントアウト
;(global-set-key (kbd "C-c :") 'uncomment-region)    ; コメント解除
(global-set-key (kbd "C-o") 'toggle-input-method)  ; 日本語入力切替
(global-set-key (kbd "C-\\") nil) ; \C-\の日本語入力の設定を無効にする
;(global-set-key (kbd "C-c ") 'other-frame)         ; フレーム移動
(global-set-key (kbd "M-g") 'goto-line)             ; goto-line


;;; バッファ移動
(setq windmove-wrap-around t)
;; Shift + ↓ or → or ← or ↑
(windmove-default-keybindings)


;; C-x pでC-x oの逆動作
(global-set-key (kbd "C-x p")
		(lambda () (interactive) (other-window -1)))

(defun backward-kill-word-or-kill-region ()
  (interactive)
  (if (or (not transient-mark-mode) (region-active-p))
      (kill-region (region-beginning) (region-end))
    (backward-kill-word 1)))
(global-set-key (kbd "C-w") 'backward-kill-word-or-kill-region)


;;; 日本語の設定 ; Localeに合わせた環境の設定
(set-locale-environment nil)



