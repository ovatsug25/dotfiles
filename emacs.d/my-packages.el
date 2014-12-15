(require 'cl)
(require 'package)
(add-to-list 'package-archives
                          '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
                          '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar required-packages
    '(
        evil
        icicles
        magit
        project-explorer
        yasnippet
) "a list of packages to ensure are installed at launch.")

; http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
; method to check if all packages are installed
(defun packages-installed-p ()
    (loop for p in required-packages
                  when (not (package-installed-p p)) do (return nil)
                          finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
    ; check for new packages (package versions)
      (message "%s" "Emacs is now refreshing its package database...")
        (package-refresh-contents)
          (message "%s" " done.")
            ; install the missing packages
              (dolist (p required-packages)
                    (when (not (package-installed-p p))
                            (package-install p))))

(require 'evil)
(evil-mode 1)
(add-to-list 'evil-emacs-state-modes 'nav-mode)
(add-to-list 'evil-emacs-state-modes 'project-explorer-mode)

(require 'icicles)
(icy-mode 1)
(require 'magit)
(define-key global-map (kbd "C-c m") 'magit-status)

(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
                                (setq yas-dont-activate t)))
