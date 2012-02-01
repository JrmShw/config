;;; org-mode settings
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; key bindings for Org commands
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;;; inhibit the startup screen so that it doesn't split the window when only
;;; one file is opened
(setq inhibit-startup-screen t)


;;; change default file backup behavior
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups


;;; enable show-paren-mode
(show-paren-mode 1)


;;; load highlight-parentheses package
(add-to-list 'load-path "/home/b/.emacs.d/elpa/highlight-parentheses-1.0.1")
(require 'highlight-parentheses)

;;; enable highlight-parentheses-mode on all buffers
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
