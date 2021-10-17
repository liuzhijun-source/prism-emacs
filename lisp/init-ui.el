;;; package --- Summary
;;; Commentary:
;;; Code:

;; Start up
(menu-bar-mode 0)
(tool-bar-mode 0)
(display-time-mode 1)

;; Theme
(use-package doom-themes
  :init (load-theme 'doom-one t))

;; Mode line
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

;; Line number
(use-package emacs
  :config
  (setq display-line-numbers-type t)
  (global-display-line-numbers-mode t)
  (set-face-attribute 'default nil :font "等距更纱黑体 SC 11"))

(provide 'init-ui)

;;; init-ui.el ends here
