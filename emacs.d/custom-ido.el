(setq ido-enable-flex-matching t
      ido-auto-meger-work-directories-length -2
      ido-everywhere t
      ido-use-filenname-at-point 'guess
      ido-default-buffer-method 'selected-window
      ido-ignore-extensions t
      )
					; (setq ido-ignore-directories (".git"))
(setq ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))
(setq ido-create-new-buffer 'always)
(ido-mode 1)
(when (require 'ido-ubiquitous nil t)
  (ido-ubiquitous-mode 1))
					; (setq ido-ignore-buffers)
					; M-x customize-variable RET variable-name-here
					; unless you are comfortabe editing Emacs lisp directly.
					; completion-ignored-extensions as it works with and without Ido.

					; Takes a list of directories to ignore in C-x d and C-x C-f

					; With this, you can use C-x C-f (ido-find-file) to look for files near you current location,
					; and C-x C-r (ido-recentf-open) to look for recently opened files
					; (hoping one of them is not too far away from where you want to go).
