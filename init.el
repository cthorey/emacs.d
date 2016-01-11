(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")                       
(cask-initialize)
(require 'pallet)
(pallet-mode t)          

;load atom theme
(load-theme 'atom-dark t)

;set meta for mac
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
(global-set-key (kbd "C-c m") 'magit-status)

(require 'tramp)
(setq tramp-default-method "scp")

;; path to where plugins are kept
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/site-lisp/grammar")


;; configure general settings
(require 'custom-functions)
(require 'general-settings)

;; python autopep
(require 'autopep)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;---------------;
;;; Utilities ;;;
;---------------;

;; Python
(load-file "~/.emacs.d/emacs-for-python/epy-init.el")

(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration
(require 'python-magic)
;-----------;
;;; Modes ;;;
;-----------;

;; magit-instruction
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")


;; Ido mode
(require 'ido)
(ido-mode 1)

;; Markdown mode
(require 'markdown-settings)


;; LaTeX and Auctex
(require 'latex-settings)
(add-hook 'LaTeX-mode-hook #'latex-extra-mode)

;; ---------------------------
;; -- Custom functions --
;; ---------------------------

;; Reload emacs

(defun reload ()
  (interactive)
  (load-file "~/.emacs"))


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)






















