(use-package restart-emacs)

(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)
	 ("C-c ^" . crux-top-join-line)
	 ("C-x , " . crux-find-user-init-file)
	 ("C-M-k" . crux-smart-kill-line)))

(use-package which-key
  :defer nil
  :init (which-key-mode))

(use-package exec-path-from-shell
  :defer nil
  :init (exec-path-from-shell-initialize))

(use-package rime
  :custom (default-input-method "rime")
  :config
  (setq rime-show-candidate 'minibuffer)
  (setq rime-cursor "˰")
  (setq rime-posframe-properties
        (list :font "Noto Sans Mono-11"
              :internal-border-width 10))
  (setq rime-disable-predicates
        '(rime-predicate-prog-in-code-p
          rime-predicate-punctuation-line-begin-p))
  (setq rime-inline-predicates
        '(rime-predicate-space-after-cc-p
          rime-predicate-current-uppercase-letter-p))
  (setq mode-line-mule-info '((:eval (rime-lighter))))
  (setq rime-user-data-dir "~/.local/share/fcitx5/rime")
  :bind
  ("M-j" . rime-force-enable))

(provide 'init-tools)
