;; Emacs init file
;; Shamelessly stolen from aaronbedra.com/emacs.c

(setq user-full-name "Rohit Banerjee")
(setq user-mail-address "rohit.banerjee23@gmail.com")

;; connects to a list of package repositories, retrieves the list of packages there
;; presents it to you in an interactive fashion and lets you install the packages you want
(require 'package)
(package-initialize)

(load "package")
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

(setq tab-width 2
      indent-tabs-mode nil)

(setq make-backup-files nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c C-k") 'compile)
(global-set-key (kbd "C-x g") 'magit-status) ; Git status

(require 'org)
(require 'org-install)
(require 'org-habit)
(add-to-list 'org-modules "org-habit")

(require 'autopair)
(autopair-global-mode t)
;(electric-pair-mode 1)

(setq show-paren-delay 0)
(show-paren-mode 1)

(require 'auto-complete)
(global-auto-complete-mode t)

(add-hook 'before-save-hook 'whitespace-cleanup)

(global-set-key (kbd "C-x p") 'previous-multiframe-window)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
