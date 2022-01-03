(setq inhibit-startup-message t)
(setq make-backup-files nil)

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(electric-pair-mode t)
(add-hook 'prog-mode-hook 'global-hl-line-mode)

(show-paren-mode 1)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

(use-package flymake
  :defer t
  :ensure nil
  :bind
  (("M-p" . flymake-goto-previous-error)
   ("M-n" . flymake-goto-next-error)))

(use-package emacs
  :bind
  (("RET" . newline-and-indent)
   ("C-j" . newline-and-indent))
  :config
  (setq custom-file
	(expand-file-name "custom.el" user-emacs-directory))
  (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8)
  (setq gc-cons-threshold most-positive-fixnum)
  (defalias 'yes-or-no-p 'y-or-n-p))

(provide 'init-emacs)
