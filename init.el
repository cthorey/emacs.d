(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")                       
(cask-initialize)
(require 'pallet)
(pallet-mode t)          

;make sure variable in the shell are in emacs
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

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
(add-to-list 'load-path "~/.emacs.d/emacs-for-python")

;; configure general settings
(require 'custom-functions)
(require 'general-settings)

;; python autopep
(require 'autopep)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; ;---------------;
;; ;;; Utilities ;;;
;; ;---------------;

;; Python
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
;; bug
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration
(require 'python-magic)

;; Doc for sphinx
(add-hook 'python-mode-hook (lambda ()
                              (require 'sphinx-doc)
                              (sphinx-doc-mode t)))
;; sql setting
(require 'sql-setting)

;; ;-----------;
;; ;;; Modes ;;;
;; ;-----------;

;;; delete seletion mode

(delete-selection-mode 1)

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



(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-block-face t)
(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
(setq web-mode-engines-alist
      '(("django"    . "\\.html?\\'")
        ("blade"  . "\\.blade\\."))
)


;; Todo.txt
(add-to-list 'load-path "~/Dropbox/todo/")
(require 'todotxt-mode)
(setq todotxt-default-file (expand-file-name "~/Dropbox/todo/todo.txt"))
(define-key global-map "\C-ct" 'todotxt-add-todo)
(define-key global-map "\C-co" 'todotxt-open-file)

;; Org mode

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/school.org" 
                             "~/org/home.org"))
(setq org-log-done 'time)

;; ;; ---------------------------
;; ;; -- Custom functions --
;; ;; ---------------------------

;; ;; Reload emacs
(defun reload ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))


;; ;---------------------------------------------------------------------
;; ;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)






















