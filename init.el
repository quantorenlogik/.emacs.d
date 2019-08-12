;;; init.el --- Emacs init file
;;  Author: Kai Poblocki
;;; Commentary:
;;; Personal Emacs config.
;;; Code:

;; require essential packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; Setting up package manager and doom-themes
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'doom-themes)
  (package-refresh-contents)
  (package-install 'doom-themes))

;; Load main config file "./config.org"
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" default)))
 '(package-selected-packages
   (quote
    (adaptive-wrap deft centaur-tabs solaire-mode fancy-battery doom-modeline all-the-icons htmlize org-download dmenu powerline company files sudo-edit switch-window avy doom-themes which-key use-package)))
 '(solaire-mode-remap-fringe t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 95 :width normal :foundry "outline" :family "DejaVu Sans Mono")))))
(put 'upcase-region 'disabled nil)

(provide 'init)
;;; end
