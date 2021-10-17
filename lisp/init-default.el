;;; package --- Summary
;;; Commentary:
;;; Code:

(setq inhibit-startup-message t)

;; Backup
(setq make-backup-files nil)

;; Electric pair mode
(electric-pair-mode t)

;; Show paren mode
(show-paren-mode 1)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))


;; Hippie
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
(global-set-key (kbd "s-/") 'hippie-expand)

;; Indent region
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

(provide 'init-default)

;;; init-default.el ends here
