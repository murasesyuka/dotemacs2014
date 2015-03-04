;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'elisp-slime-nav) ;; optional if installed via package.el
(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook lisp-interaction-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))


;;; 式の評価結果を注釈するために設定
(require 'lispxmp)
;; emacs-lisp-modeでC-c C-dを押すと注釈される
(define-key emacs-lisp-mode-map (kbd "C-c C-d") 'lispxmp)
;; ;;; 括弧の対応を保持して変種する設定
;; (require 'paredit)
;; (dolist (hook (list
;;                ;; 'c-mode-hook
;;                ;; 'c++-mode-hook
;;                ;; 'java-mode-hook
;;                ;; 'haskell-mode-hook
;;                'emacs-lisp-mode-hook
;;                'lisp-interaction-mode-hook
;;                'lisp-mode-hook
;;                ;; 'maxima-mode-hook
;;                'ielm-mode-hook
;;                ))
;;   (add-hook hook '(lambda () (paredit-mode 1))))



;; (install-elisp-from-emacswiki "eldoc-extension.el")
(require 'eldoc-extension)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(setq eldoc-idle-delay 0.2)       ; すぐに表示
(setq eldoc-minor-mode-string "") ; モードラインにElDocと表示しない


