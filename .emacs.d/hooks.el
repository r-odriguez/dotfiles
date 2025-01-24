;; Code ;;
(add-hook 'prog-mode-hook #'my/olivetti-settings)
(add-hook 'prog-mode-hook (lambda ()
                            (adaptive-wrap-prefix-mode)))

;; org ;;
(add-hook 'org-mode-hook 'my/org-settings)

;; dired ;;
(add-hook 'dired-mode-hook 'treemacs-icons-dired-mode)
(add-hook 'dired-mode-hook (lambda ()
                             (dired-hide-details-mode 1)
                             (setq display-line-numbers nil)))
;; languages ;;
(add-hook 'lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'heex-ts-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

;; post before, after ;;
(add-hook 'post-command-hook #'my/god-mode-update-cursor-type)
(add-hook 'before-save-hook 'whitespace-cleanup)

;; compilation ;;
(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)
(add-hook 'compilation-mode-hook 'my/compilation-settings)

;; others ;;
(add-hook 'mmm-mode-hook (lambda () (set-face-background 'mmm-default-submode-face nil)))
(add-hook 'magit-mode-hook #'my/magit-settings)
