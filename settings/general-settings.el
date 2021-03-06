;--------------------------------;
;;; General or Global Settings ;;;
;--------------------------------;

;set meta for mac
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

; Naviguationg through the window system

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x o") 'next-buffer)
(global-set-key (kbd "C-l") 'ido-reread-directory)

;erase buffer    (defun my-shell-hook ()
       
  (defun eshell/clear ()
  "Hi, you will clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (message "erase eshell buffer")))

; language
(setq current-language-environment "English")

; don't show the startup screen
(setq inhibit-startup-screen 1)
; don't show the menu bar
(menu-bar-mode 0)
; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)
; don't show the scroll bar
(if window-system (scroll-bar-mode 0))

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

; set command key to be meta instead of option
(if (system-is-mac)
    (setq ns-command-modifier 'meta))

; number of characters until the fill column 
(setq-default fill-column 70)

; each line of text gets one line on the screen (i.e., text will run
; off the left instead of wrapping around onto a new line)
(setq-default truncate-lines 1)
; truncate lines even in partial-width windows
(setq truncate-partial-width-windows 1)

; default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 50))
  (add-to-list 'default-frame-alist '(width . 178)))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

; window modifications
;; (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;; (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "S-C-<down>") 'shrink-window)
;; (global-set-key (kbd "S-C-<up>") 'enlarge-window)

; always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode nil)
; indentation styles
(setq c-basic-offset 8)
(setq c-default-style (quote (
    (c-mode . "bsd") 
    (java-mode . "java") 
    (awk-mode . "awk") 
    (other . "gnu"))))
 
; ignore case when searching
(setq-default case-fold-search 1)

; set the keybinding so that you can use f4 for goto line
(global-set-key [f4] 'goto-line)

; require final newlines in files when they are saved
(setq require-final-newline 1)
; add a new line when going to the next line
(setq next-line-add-newlines t)

; show the current line and column numbers in the stats bar as well
(line-number-mode 1)
(column-number-mode 1)

; don't blink the cursor
(blink-cursor-mode 0)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode 1)

; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode 1)

; text decoration
(require 'font-lock)
;(setq font-lock-maximum-decoration 1)
(global-font-lock-mode 1)
(global-hi-lock-mode nil)
(setq jit-lock-contextually 1)
(setq jit-lock-stealth-verbose 1)

; if there is size information associated with text, change the text
; size to reflect it
(size-indication-mode 1)

; disable backup
(setq backup-inhibited t)
; disable auto save
(setq auto-save-default nil)


(provide 'general-settings)















