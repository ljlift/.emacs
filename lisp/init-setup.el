(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(set-language-environment "UTF-8")
(menu-bar-mode -1) 
(tool-bar-mode -1)
(scroll-bar-mode -1)

(save-place-mode t)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; set gc threshold
(setq gc-cons-threshold most-positive-fixnum)

;; include system bin
(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match
that used by the user's shell.

This is particularly useful under Mac OS X and macOS, where GUI
apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string
			  "[ \t\n]*$" "" (shell-command-to-string
					  "$SHELL --login -c 'echo $PATH'"
						    ))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)

(provide 'init-setup)
