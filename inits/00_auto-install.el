;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; ;; elispディレクトリをload-pathに追加
;; (setq load-path (append '(
;; 			  "~/.emacs.d/auto-install"
;; 			  "~/.emacs.d/dl"
;; 			  ) load-path))

;; ;(add-to-list `load-path "~/svn2git/emacswikipages/" t) ; add to last

;; ;;;auto-install.el
;; ;; (install-elisp-from-emacswiki "auto-install.el")
;; (require 'auto-install)
;; (setq auto-install-directory "~/.emacs.d/auto-install/")
;; (auto-install-update-emacswiki-package-name t) ; EmacsWikiのページ名を保管候補に追加
;; (auto-install-compatibility-setup)             ; 互換性確保
;; (setq ediff-windows-setup-function 'ediff-setup-windowss-plain) ;ediff関連のバッファを１フレームに纏める


