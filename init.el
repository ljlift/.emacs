;; Code:

;; common settings
(setq python-shell-completion-native-enable nil)

;; Update the load-path
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp")))

;; settings for independent packages and etc.
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)
(require 'init-setup) 
(require 'init-ide)
(require 'init-builtin)
(require 'init-kbd)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(python-mode python-black ivy-posframe counsel ivy crux yaml-mode protobuf-mode markdown-mode json-mode which-key lsp-python-ms treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs auto-virtualenv virtualenvwrapper elpy use-package smart-mode-line restart-emacs gruvbox-theme go-mode eglot company all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
