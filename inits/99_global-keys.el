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



; http://qiita.com/sho7650/items/7d4a152c08c4f9d4cf14
;;; 現在行を目立たせる
(global-hl-line-mode)

;; Window 分割を画面サイズに従って計算する
(defun split-window-vertically-n (num_wins)
  (interactive "p")
  (if (= num_wins 2)
      (split-window-vertically)
    (progn
      (split-window-vertically
       (- (window-height) (/ (window-height) num_wins)))
      (split-window-vertically-n (- num_wins 1)))))
(defun split-window-horizontally-n (num_wins)
  (interactive "p")
  (if (= num_wins 2)
      (split-window-horizontally)
    (progn
      (split-window-horizontally
       (- (window-width) (/ (window-width) num_wins)))
      (split-window-horizontally-n (- num_wins 1)))))

;; Window 分割・移動を C-t で
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (if (>= (window-body-width) 270)
        (split-window-horizontally-n 3)
      (split-window-horizontally)))
  (other-window 1))
(global-set-key (kbd "C-t") 'other-window-or-split)

;; バックアップファイルを作らないようにする
(setq make-backup-files nil)
;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
