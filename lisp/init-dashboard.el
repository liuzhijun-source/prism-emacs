(use-package page-break-lines
  :init (page-break-lines-mode))

(use-package dashboard
  :defer nil
  :ensure t
  :init
  (progn
    (setq dashboard-items '((recents   . 7)
			    (projects   . 5))
	  dashboard-banner-logo-title "Welcome to Emacs!"
	  dashboard-startup-banner 'logo
	  dashboard-center-content t
	  dashboard-show-shortcuts nil
	  dashboard-set-heading-icons t
	  dashboard-set-file-icons t))
  :config (dashboard-setup-startup-hook))

(provide 'init-dashboard)

