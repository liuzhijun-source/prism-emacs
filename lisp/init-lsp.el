;;; package --- Summary
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp-deferred))
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-remap-xref-keybindings nil
	lsp-navigation 'both
	lsp-ui-doc-enable t
	lsp-ui-doc-include-signature nil
	lsp-ui-sideline-enable t
	lsp-ui-sideline-show-symbol nil
	lsp-ui-sideline-ignore-duplicate t
	lsp-use-lsp-ui t
	lsp-use-upstream-bindings nil
	lsp-headerline-breadcrumb-enable nil
	lsp-ui-doc-frame-mode t)
)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(provide 'init-lsp)

;;; init-lsp.el ends here
