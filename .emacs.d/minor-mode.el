(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
	(global-set-key (kbd "M-s") 'save-buffer)
	(global-set-key (kbd "C-j") (lambda () (interactive) (god-local-mode 1)))
	map)
  "my-keys-minor-mode keymap.")

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter " my-keys")
