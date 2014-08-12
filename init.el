(require 'cask "~/.cask/cask.el")
(cask-initialize)

;;; https://github.com/emacs-jp/init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

