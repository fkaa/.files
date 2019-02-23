(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(menu-bar-mode -1)
(tool-bar-mode -1)

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

(set-face-attribute 'default nil :family "Times New Roman" :height 130)
(set-face-attribute 'fixed-pitch nil :family "Courier")
(set-face-attribute 'variable-pitch nil :family "Times New Roman")

(add-hook 'text-mode-hook
          (lambda ()
	    (olivetti-mode 1)
	    (variable-pitch-mode 1)))

; (require 'poet-theme)
					; (require 'gruvbox-theme)
(load-theme 'adwaita)
(require 'markdown-mode)

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
 '(custom-safe-themes
   (quote
    ("97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" default)))
 '(emms-player-mpv-ipc-method (quote file))
 '(inhibit-startup-screen t)
 '(markdown-header-scaling t)
 '(markdown-header-scaling-values (quote (quote (1.5 1.4 1.2 1.1 1.0 1.0))))
 '(package-selected-packages
   (quote
    (olivetti poet-theme markdown-mode gruvbox-theme ecb emms-state emms-info-mediainfo emms glsl-mode xterm-color intellij-theme eglot rust-mode)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
