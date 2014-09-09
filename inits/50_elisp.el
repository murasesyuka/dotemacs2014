;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'elisp-slime-nav) ;; optional if installed via package.el
(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook lisp-interaction-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))
