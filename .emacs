(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'auto-mode-alist '("\\.ket\\'" . lisp-mode))
(add-to-list 'load-path "C:\\Users\\tmtu\\AppData\\Roaming\\.emacs.d\\lisp")

(show-paren-mode t)
(setq show-paren-style 'expression)

(add-to-list 'default-frame-alist '(font . "Times New Roman-14" ))
(set-face-attribute 'default t :font "Times New Roman-14" )
(set-face-attribute 'default nil :font "Times New Roman-14" )
(set-frame-font "Times New Roman-14" nil t)

(ac-config-default)
(global-auto-complete-mode t)
(add-to-list 'ac-modes 'rust-mode)

(require 'lab-themes)
(lab-themes-load-style 'light)

(require 'eglot)
(require 'auto-complete)

(prefer-coding-system 'utf-8-unix)

(define-key lisp-mode-map (kbd "C-x C-a") 'skoi-send-last-expression)
(define-key eglot-mode-map (kbd "C-c h") 'eglot-help-at-point)
(define-key eglot-mode-map (kbd "C-g") 'xref-find-definitions)

(define-key ac-complete-mode-map "\t" 'ac-complete)
(define-key ac-complete-mode-map "\r" nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(markdown-header-scaling t)
 '(markdown-header-scaling-values (quote (quote (1.5 1.4 1.2 1.1 1.0 1.0))))
 '(package-selected-packages
   (quote
    (glsl-mode xterm-color markdown-mode intellij-theme eglot rust-mode)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
