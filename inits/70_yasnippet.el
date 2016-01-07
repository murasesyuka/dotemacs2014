;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'yasnippet)

(setq yas-snippet-dirs
      '( "~/.emacs.d/snippets"	 ;
	 yas-installed-snippets-dir ; package に最初から含まれるスニペット
	 ))

(require 'helm-c-yasnippet)

(eval-after-load "yasnippet"
  '(progn
     (setq helm-c-yas-space-match-any-greedy t) ;[default: nil]
     
     (global-set-key (kbd "C-.") 'helm-c-yas-complete)

     ;; (add-to-list 'yas-extra-mode-hooks 'ruby-mode-hook)
     ;; (add-to-list 'yas-extra-mode-hooks 'cperl-mode-hook)
     
     ;; companyと競合するのでyasnippetのフィールド移動は "C-i" のみにする
     ;; (define-key yas-keymap (kbd "<tab>") nil)
     
     (yas-global-mode 1))
  )


