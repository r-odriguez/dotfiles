;;;;; emacs modes ;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(completion-cycle-threshold 3)
 '(dired-kill-when-opening-new-dired-buffer t)
 '(dired-listing-switches "-aBhl  --group-directories-first")
 '(display-battery-mode nil)
 '(display-time-mode nil)
 '(dtrt-indent-global-mode t)
 '(fill-column 80)
 '(global-visual-line-mode t)
 '(go-ts-mode-indent-offset 4)
 '(hscroll-step 0)
 '(indent-tabs-mode 1)
 '(inhibit-startup-screen t)
 '(line-spacing 0.15)
 '(menu-bar-mode nil)
 '(org-agenda-files
   '("~/Projects/tusk/README.org" "/home/bn/Documents/Journal/Notes.org" "/home/bn/Documents/Journal/Agenda.org"))
 '(org-format-latex-options '(:scale 1.5))
 '(org-html-checkbox-type 'html)
 '(org-image-actual-width (list 550))
 '(org-modern-fold-stars
   '(("◉" . "◉")
     ("○" . "○")
     ("◈" . "◈")
     ("◇" . "◇")
     ("✳" . "✳")))
 '(org-modern-replace-stars "◉○◈◇✳")
 '(org-startup-folded t)
 '(package-selected-packages
   '(adaptive-wrap dtrt-indent corfu company-quickhelp rust-mode focus darkroom gtags-mode mini-modeline transpose-frames transpose-frame smex templ-ts-mode lfe-mode rainbow-delimiters sly company auto-complete go-autocomplete vterm elixir-mode cloud-theme vscode-dark-plus-theme almost-mono-themes lua-mode mindre-theme php-mode org-modern flycheck dired-preview zig-mode julia-repl julia-mode racket-mode go-mode lsp-ivy lsp-ui lsp-mode ligature tab-bar-echo-area minions consult orderless treemacs-icons-dired treemacs multiple-cursors git-gutter noccur magit which-key vertico olivetti god-mode elixir-ts-mode haskell-mode web-mode ox-reveal page-break-lines ob-elixir ob-php quelpa-use-package))
 '(package-vc-selected-packages
   '((php-ts-mode :vc-backend Git :url "https://github.com/emacs-php/php-ts-mode")))
 '(pixel-scroll-precision-interpolate-page nil)
 '(pixel-scroll-precision-interpolation-total-time 0.2)
 '(pixel-scroll-precision-mode t)
 '(repeat-mode t)
 '(scroll-bar-mode nil)
 '(scroll-step 10)
 '(split-height-threshold 80)
 '(split-width-threshold 120)
 '(tab-bar-show nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(treesit-font-lock-level 4)
 '(truncate-lines t nil nil "Customized with use-package olivetti")
 '(vertico-mode nil)
 '(visible-bell 1))


(set-frame-parameter nil 'internal-border-width 0)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
