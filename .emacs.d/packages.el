;; repositories
(use-package quelpa-use-package :ensure t)

;; org
(use-package ob-php :ensure t)
(use-package ob-elixir :ensure t)
(use-package page-break-lines :ensure t)
(use-package ox-reveal :ensure t)
(use-package org-modern :ensure t)

;; languages
(use-package rust-mode
  :ensure t
  :hook (rust-mode . lsp-deferred))
(use-package templ-ts-mode
  :ensure t
  :mode "\\.templ\\'"
  :hook (templ-ts-mode . eglot-ensure))
(use-package go-mode
  :ensure t
  :mode "\\.go\\'"
  :hook (go-mode . eglot-ensure)
  :init
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))
(use-package web-mode
  :ensure t
  :mode "\\.php\\'"
  :hook (web-mode . lsp-deferred))
(use-package php-mode :ensure t)
(use-package elixir-ts-mode
  :ensure t
  :mode "\\.ex\\'"
  :init
  (add-hook 'elixir-ts-mode-hook
            (lambda () (add-hook 'before-save-hook 'elixir-format nil t))))
(use-package zig-mode
  :ensure t
  :mode "\\.zig\\'"
  :hook
  (zig-mode . lsp-deferred))

;; other modes
(use-package wrap-region :ensure t)
(use-package adaptive-wrap
  :ensure t
  :init (setq adaptive-wrap-extra-indent 4))
(use-package paredit :ensure t)
(use-package transpose-frame :ensure t)
(use-package god-mode :ensure t)
(use-package olivetti :ensure t)
(use-package vertico :ensure t)
(use-package which-key :ensure t)
(use-package magit
  :ensure t
  :init ;; (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
  )
(use-package git-gutter :ensure t)
(use-package multiple-cursors :ensure t)
(use-package treemacs :ensure t)
(use-package treemacs-icons-dired :ensure t)
(use-package dtrt-indent :ensure t)
(use-package focus
  :ensure t
  :hook (org-mode . focus-mode))
(use-package darkroom
  :ensure t
  :custom
  (darkroom-text-scale-increase 0.25))

;; completion
(use-package consult :ensure t)
(use-package orderless
  :ensure t
  :custom (completion-styles '(orderless flex)))
(use-package company
  :ensure t
  :hook (prog-mode . company-mode))

;; beautifiers
(use-package minions :ensure t :hook (prog-mode . minions-mode))
(use-package tab-bar-echo-area
  :ensure t
  :config (tab-bar-echo-area-mode 1))

;; language servers
(use-package yasnippet
  :ensure t
  :custom (yas-reload-all)
  :hook (web-mode . yas-minor-mode))
(use-package yasnippet-snippets :ensure t)
(use-package eglot
  :ensure t
  :config
  (add-to-list 'eglot-server-programs
               '(web-mode . ("phpactor" "language-server"))))
(use-package flycheck
  :ensure t
  ;; :hook (web-mode . flycheck-mode)
  )
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-s-l")
  (defun my/lsp-mode-setup-completion ()
    (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
          '(orderless)))
  :config
  (lsp-enable-which-key-integration t)
  :custom
  (lsp-enable-snippet t)
  (lsp-keep-workspace-alive nil)
  (lsp-enable-xref t)
  (lsp-enable-imenu t)
  (lsp-enable-completion-at-point t)
  (lsp-completion-provider :none)
  (lsp-completion-show-detail t)
  (lsp-file-watch-threshold 5000)
  (lsp-eldoc-render-all nil)
  (lsp-headerline-breadcrumb-enable nil)
  :hook
  (lsp-completion-mode . my/lsp-mode-setup-completion))
(use-package lsp-ui
  :ensure t
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-delay 1)
  (lsp-ui-doc-show-with-mouse t)
  (lsp-ui-doc-show-with-cursor t)
  (lsp-ui-doc-position 'at-point)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit nil)
  (lsp-ui-sideline-enable t)
  (lsp-ui-sideline-show-diagnostics t)
  (lsp-ui-sideline-show-code-actions nil)
  (lsp-ui-sideline-show-symbol nil)
  (lsp-ui-sideline-show-hover nil))
