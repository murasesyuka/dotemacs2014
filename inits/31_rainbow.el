;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; rainbow-mode
(defun my-rainbow-mode-turn-on ()
  (rainbow-mode t))

(add-hook 'css-mode-hook 'my-rainbow-mode-turn-on)
(add-hook 'html-mode-hook 'my-rainbow-mode-turn-on)



(require 'rainbow-delimiters)

;(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;(global-rainbow-delimiters-mode)

;; http://yoo2080.wordpress.com/2013/12/21/small-rainbow-delimiters-tutorial/
; ;; 5.1. using stronger colors
(require 'cl-lib)
(require 'color)

(cl-loop
 for index from 1 to rainbow-delimiters-max-face-count
 do
 (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
   (cl-callf color-saturate-name (face-foreground face) 90)))



