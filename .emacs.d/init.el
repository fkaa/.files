(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'auto-mode-alist '("\\.ket\\'" . lisp-mode))
(add-to-list 'load-path "C:\\Users\\tmtu\\AppData\\Roaming\\.emacs.d\\lisp")

(show-paren-mode t)

(defun open-emacs-config ()
  (interactive)
  (find-file (describe-variable 'user-init-file)))

(global-set-key (kbd "C-c C-c C-c C-c") 'open-emacs-config)
(define-key lisp-mode-map (kbd "C-x C-a") 'skoi-send-last-expression)
(define-key eglot-mode-map (kbd "C-c h") 'eglot-help-at-point)
(define-key eglot-mode-map (kbd "C-g") 'xref-find-definitions)
