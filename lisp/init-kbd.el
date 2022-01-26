
;; Global KeyBinds Dependencies
(use-package crux)

;; Emacs Basic Keys
(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key "\C-l" 'goto-last-change)

(provide 'init-kbd)
