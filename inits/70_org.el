;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)


(add-hook 'org-mode-hook 'turn-on-iimage-mode)

;; http://pastelwill.jp/wiki/doku.php?id=emacs:org-tree-slide
;; (auto-install-from-url "https://raw.github.com/takaxp/org-tree-slide/master/org-tree-slide.el")

(require 'org-tree-slide)

(define-key org-mode-map (kbd "<f8>") 'org-tree-slide-mode)
(define-key org-mode-map (kbd "S-<f8>") 'org-tree-slide-skip-done-toggle)



