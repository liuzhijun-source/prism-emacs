;;; package --- Summary
;;; Commentary:
;;; Code:

;; Init package archives
(setq package-archives '(
    ("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; Settings for use-package
(setq package-check-signature nil)
(require 'package)
(unless (bound-and-true-p package--initialized)
  (package-initialize))
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally t)
  (setq use-package-verbose t))

(require 'use-package)

(provide 'init-elpa)

;;; init-elpa.el ends here
