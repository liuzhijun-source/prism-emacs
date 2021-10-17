;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

(provide 'init-projectile)

;;; init-projectile.el ends here
