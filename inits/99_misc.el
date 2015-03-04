;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


;;; ホイールマウス
(mouse-wheel-mode t)
(setq mouse-wheel-follow-mofasluse t)

;; ; http://www.geocities.jp/tamiyagi2/emacs.html
;; ;; Ctrl+マウススクロールでズーム
;; (if (and (>= emacs-major-version 23) (window-system))
;;     (progn
;;       (global-set-key
;;        (vector (list 'control mouse-wheel-down-event))
;;        'text-scale-increase)
;;       (global-set-key
;;        (vector (list 'control mouse-wheel-up-event))
;;        'text-scale-decrease)))




;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)

;;; 強力な補完機能を使う
;;; p-bでprint-bufferとか
;;(load "complete")
;(partial-completion-mode 1)

;;; 補完可能なものを随時表示
;;; 少しうるさい
;(icomplete-mode 1)

;;; ; http://d.hatena.ne.jp/peccu/20100202/1265088619
;;; 矩形選択と連番挿入
; (setq cua-enable-cua-key nil)
; (cua-mode t)


;;; (install-elisp-from-emacswiki "sticky.el")
;(require 'sticky)
;(use-sticky-key ";" sticky-alist:ja)	;英語キーボードでは、sticky-alist:en

;;; 日本語マニュアル
;(add-to-list 'Info-directory-list "~/info") ;Symbol's value as variable is void: Info-directory-list



;;;
;;; Emacs lisp テクニックバイブル
;;;




;; 釣り合いのとれる括弧をハイライトする
(show-paren-mode 1)
;; 改行と同時にインデントも行う
(global-set-key "\C-m" 'newline-and-indent)
;; find-functionをキー割当する
(find-function-setup-keys)



;;;
;;; chapter04
;;;

;;; ffap.el
(ffap-bindings)


;; ;;; uniquify.el
;; (require 'uniquify)
;; ;; filename<dif> 形式バッファ名にする
;; (setq uniquify-buffer-name-style 'post-forward-angle-brackets)
;; ;; *で囲まれたバッファ名は対象外
;; (setq uniquify-ignore-buffres-re "*[^*]+*")



;; ;; (install-elisp-from-emacswiki "recentf-ext.el")
;; ;; 最近のファイルを500個を保存する
;; (setq recentf-max-saved-items 3000)
;; ;; 最近使ったファイルを加えないでファイルを正規表現でしてする
;; (setq recentf-exclude '("/TAGS$" "/var/tmp/"))
;; (require 'recentf-ext)


;; emacsclient
(require 'server)
(unless (server-running-p)
  (server-start))
(defun iconify-emacs-when-server-is-done ()
  (unless server-clients (iconify-frame)))
;; 編集が終了したらEmacsをアイコン化する（好みに応じて）
(add-hook 'server-done-hook 'iconify-emacs-when-server-is-done)
;; C-x C-cに割り当てる（好みに応じて）
(global-set-key (kbd "C-x C-c") 'server-edit)
;; M-x exitでEmacsを終了できるようにする
(defalias 'exit 'save-buffers-kill-emacs)
;;; http://d.hatena.ne.jp/h_iijima/20110401/1301620545
;; emacsclient でアクセスした時の文字コード設定
;; バグ: "emacsclient -c" で起動すると実行されない
(add-hook 'server-visit-hook
          (lambda ()
            (set-terminal-coding-system 'utf-8)
            (set-keyboard-coding-system 'utf-8)))


;;; http://rubikitch.com/2014/11/23/auto-save-buffers-enhanced/
(require 'auto-save-buffers-enhanced)

;;; 特定のファイルのみ有効にする
(setq auto-save-buffers-enhanced-include-regexps '(".+")) ;全ファイル

;;; C-x a sでauto-save-buffers-enhancedの有効・無効をトグル
(global-set-key "\C-xas" 'auto-save-buffers-enhanced-toggle-activity)

;;; Wroteのメッセージを抑制
(setq auto-save-buffers-enhanced-quiet-save-p t)
;;; *scratch*も ~/.emacs.d/scratch に自動保存
(setq auto-save-buffers-enhanced-save-scratch-buffer-to-file-p t)
(setq auto-save-buffers-enhanced-file-related-with-scratch-buffer
      (locate-user-emacs-file "scratch"))
(auto-save-buffers-enhanced t)

