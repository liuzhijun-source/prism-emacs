(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(setq gc-cons-threshold most-positive-fixnum)

(require 'init-elpa)
(require 'init-dashboard)
(require 'init-emacs)
(require 'init-ui)
(require 'init-ivy)
(require 'init-company)
(require 'init-treemacs)
(require 'init-tools)
