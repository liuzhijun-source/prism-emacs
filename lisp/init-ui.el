(use-package emacs
  :config
  (setq display-line-numbers-type t)
  (global-display-line-numbers-mode t)
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (setq display-time-format "%H:%M %Y-%m-%d")
  (display-time-mode 1)
  (scroll-bar-mode 0)
  ;; (set-face-attribute 'default nil
  ;;		      :font "Cascadia Code-10.5")
  ;; (dolist (charset '(kana han cjk-misc bopomofo))
  ;;   (set-fontset-font (frame-parameter nil 'font) charset
  ;;                    (font-spec :family "思源黑体 CN"
  ;;                               :size 14)))
  ;;(set-fontset-font t 'unicode (font-spec :family "Noto Color Emoji" :size 16))
)

(use-package atom-one-dark-theme
  :init (load-theme 'atom-one-dark t))

(use-package smart-mode-line-atom-one-dark-theme)

(use-package smart-mode-line
  :init
  (setq sml/theme 'atom-one-dark)
  (setq sml/no-confirm-load-theme t)
  (sml/setup))

(provide 'init-ui)
