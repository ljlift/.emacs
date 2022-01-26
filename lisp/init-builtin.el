;; Line Number
;; this package introduced in Emacs 26, so only enabled when 26+
(use-package display-line-numbers
  :hook (prog-mode . display-line-numbers-mode))

(provide 'init-builtin)
