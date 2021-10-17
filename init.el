;;; package --- Summary
;;; Commentary:
;;; Code:

;; Load folder
(add-to-list 'load-path
    (expand-file-name (concat user-emacs-directory "lisp")))

;; Custom settings
(setq custom-file
    (expand-file-name "custom.el" user-emacs-directory))

;; Startup
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq gc-cons-threshold most-positive-fixnum)
(toggle-frame-maximized)

;; Speed up
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.5)
(add-hook 'emacs-startup-hook
          (lambda ()
            "Recover GC values after startup."
            (setq gc-cons-threshold 800000
                  gc-cons-percentage 0.1)))

(require 'init-elpa)
(require 'init-dashboard)
(require 'init-ui)
(require 'init-default)
(require 'init-company)
(require 'init-awesome-pair)
(require 'init-ivy)
(require 'init-flycheck)
(require 'init-treemacs)
(require 'init-projectile)
(require 'init-tools)

;; Programming
(require 'init-lsp)

(require 'init-kbd)

;;; init.el ends here
