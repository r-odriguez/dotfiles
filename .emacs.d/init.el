(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(eval-when-compile (require 'use-package))

(add-to-list 'load-path "~/.emacs.d/custom-packages")
(add-to-list 'custom-theme-load-path "~/.emacs.d/custom-themes")
;; (add-to-list 'default-frame-alist '(undecorated . t))

(setq custom-file "~/.emacs.d/settings.el")
(load custom-file)

(load-file "~/.emacs.d/envs.el")
(load-file "~/.emacs.d/functions.el")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/shortcuts.el")
(load-file "~/.emacs.d/modes.el")
(load-file "~/.emacs.d/hooks.el")
(load-file "~/.emacs.d/org-babel.el")
(load-file "~/.emacs.d/minor-mode.el")

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
	  backup-by-copying t
	  version-control t
	  delete-old-versions t
	  kept-new-versions 20
	  kept-old-versions 5)

;; (set-face-attribute 'default nil :height 155 :family "Iosevka")
(set-frame-font "Source Code Pro-12")
(consult-theme 'seashell)
;; (consult-theme 'wombat)
(my-keys-minor-mode 1)
