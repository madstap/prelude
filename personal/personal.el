;; Don't show scrollbars
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Disable the menu bar
(menu-bar-mode -1)

;; Fullscreen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(use-package flycheck-clj-kondo
  :ensure t)

(require 'flycheck-clj-kondo)

(setq magit-save-repository-buffers 'dontask)

(use-package clj-refactor
  :ensure t)

(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; Defaults to C-c C-m, but that conflicts with cider-macroexpand-1
  (cljr-add-keybindings-with-prefix "C-c C-n"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(setq cljr-warn-on-eval nil)

;; using .so libs from clojure
(setenv "LD_LIBRARY_PATH" ".")

;; Set xml indentation to 2 spaces
(setq nxml-child-indent 2 nxml-attribute-indent 2)

(use-package smartparens :ensure t)
(require 'smartparens)

(smartparens-global-strict-mode)

(global-set-key (kbd "M-ç") 'comment-dwim)

;; This is the recommended way, but doesn't seem to work for me :shrug:
;; (setq prelude-guru nil)

(guru-mode -1)
