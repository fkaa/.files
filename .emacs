(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; basic stuff
(menu-bar-mode -1)
(tool-bar-mode -1)

(prefer-coding-system 'utf-8-unix)
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; font setup
(set-face-attribute 'default nil :family "Times New Roman" :height 140)
(set-face-attribute 'fixed-pitch nil :family "Courier")
(set-face-attribute 'variable-pitch nil :family "Times New Roman")

(defun my-buffer-face-mode-fixed ()
  "Sets a fixed width (monospace) font in current buffer"
  (interactive)
  (setq buffer-face-mode-face '(:family "Noto Mono" :height 100))
  (buffer-face-mode))
(add-hook 'eshell-mode-hook 'my-buffer-face-mode-fixed)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-x g") 'magit-status))

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-light))

(use-package olivetti
  :ensure t
  :config
  (add-hook 'text-mode-hook
	    (lambda ()
	      (olivetti-mode 1)
	      (variable-pitch-mode 1))))

(use-package rust-mode
  :ensure t
  :config
  (setq rust-match-angle-brackets nil))

(use-package auto-complete
  :ensure t
  :config
  (ac-config-default)
  (global-auto-complete-mode t)
  (add-to-list 'ac-modes 'rust-mode)
  (define-key ac-complete-mode-map "\t" 'ac-complete)
  (define-key ac-complete-mode-map "\r" nil))


;; custom stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "de1f10725856538a8c373b3a314d41b450b8eba21d653c4a4498d52bb801ecd2" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "341b2570a9bbfc1817074e3fad96a7eff06a75d8e2362c76a2c348d0e0877f31" "d3e333eaa461c82a124f7e7a7a9637d56fc3019478becb1847952804ca67743e" "97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" default)))
 '(emms-player-mpv-ipc-method (quote file))
 '(inhibit-startup-screen t)
 '(markdown-header-scaling t)
 '(markdown-header-scaling-values (quote (quote (1.5 1.4 1.2 1.1 1.0 1.0))))
 '(package-selected-packages
   (quote
    (dashboard markdown solarized-theme transient magit form-feed chess brutalist-theme tao-theme mmm-mode darktooth-theme dap-mode flycheck lsp-ui lsp-mode toml-mode ## use-package w3m olivetti poet-theme markdown-mode gruvbox-theme ecb emms-state emms-info-mediainfo emms glsl-mode xterm-color intellij-theme eglot rust-mode)))
 '(pdf-view-midnight-colors (quote ("#FDF4C1" . "#282828")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(show-paren-mode t)
 '(vc-annotate-background "#FFFFFD")
 '(vc-annotate-color-map
   (quote
    ((20 . "#D5D2C8")
     (40 . "#B0ADA2")
     (60 . "#B0ADA2")
     (80 . "#737063")
     (100 . "#737063")
     (120 . "#4E4B3D")
     (140 . "#4E4B3D")
     (160 . "#373426")
     (180 . "#373426")
     (200 . "#373426")
     (220 . "#292617")
     (240 . "#292617")
     (260 . "#292617")
     (280 . "#201D0E")
     (300 . "#201D0E")
     (320 . "#201D0E")
     (340 . "#1B1809")
     (360 . "#1B1809"))))
 '(vc-annotate-very-old-color "#4E4B3D"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
