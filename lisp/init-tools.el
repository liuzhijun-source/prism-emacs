;;; package --- Summary
;;; Commentary:
;;; Code:

;; Restart Emacs
(use-package restart-emacs)

;; Crux
(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)
	 ("C-c ^" . crux-top-join-line)
	 ("C-x , " . crux-find-user-init-file)
	 ("C-S-k" . crux-smart-kill-line)))

;; Which key
(use-package which-key
  :defer nil
  :init (which-key-mode))

(use-package exec-path-from-shell
  :defer nil
  :init (exec-path-from-shell-initialize))

(provide 'init-tools)

;;; init-tools.el ends here
