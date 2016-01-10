;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes (quote ("146d24de1bb61ddfa64062c29b5ff57065552a7c4019bee5d869e938782dfc2a" default))))

;; ; color theme

;; (require 'faces)
;; (if (system-is-mac)
;;     (set-face-attribute 'default nil
;; 			:foundry "apple" 
;; 			:family "DejaVu_Sans_Mono"))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  (if (window-system)
;;      (if (system-is-mac)
;;          '(default ((t (:inherit nil :stipple nil :background "#002b35" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "apple" :family "DejaVu_Sans_Mono"))))
;;        '(default ((t (:inherit nil :stipple nil :background "#002b35" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Ubuntu Mono"))))))
;;  '(ein:cell-input-area ((t (:background "#042028"))))
;;  '(ein:cell-input-prompt ((t (:inherit header-line :background "#002b35" :foreground "#859900" :inverse-video nil :weight bold))))
;;  '(ein:cell-output-prompt ((t (:inherit header-line :background "#002b35" :foreground "#dc322f" :inverse-video nil :weight bold))))
;;  '(font-lock-comment-face ((t (:foreground "#6171c4" :inverse-video nil :underline nil :slant italic :weight normal))))
;;  '(font-lock-function-name-face ((t (:foreground "#2075c7" :inverse-video nil :underline nil :slant normal :weight bold))))
;;  '(font-lock-keyword-face ((t (:foreground "#cb4b16" :inverse-video nil :underline nil :slant normal :weight normal))))
;;  '(font-lock-type-face ((t (:foreground "#d33682" :inverse-video nil :underline nil :slant normal :weight normal))))
;;  '(fringe ((t (:background "#002b35" :foreground "#465a61"))))
;;  (if (window-system)
;;      '(magit-item-highlight ((t (:inherit highlight :background "#042028"))))
;;    '(magit-item-highlight ((t (:background "white" :foreground "black")))))
;;  '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 210))))
;;  '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 190))))
;;  '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 170))))
;;  '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 150))))
;;  '(markdown-header-face-5 ((t (:inherit markdown-header-face :slant italic :weight bold))))
;;  '(markdown-header-face-6 ((t (:inherit markdown-header-face :slant italic :weight normal))))
;;  '(markdown-math-face ((t (:inherit font-lock-string-face :foreground "#cb4b16" :slant italic))))
;;  (if (window-system)
;;      '(mode-line ((t (:background "#0a2832" :foreground "#eee8d4" :inverse-video t :box nil :underline nil :slant normal :weight normal)))))
;;  '(mumamo-background-chunk-major ((t (:background "#002b36"))))
;;  '(py-variable-name-face ((t (:inherit default :foreground "#268bd2")))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("705f3f6154b4e8fac069849507fd8b660ece013b64a0a31846624ca18d6cf5e1" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "a31370120e58f7a7a5f111c1d3167e895c8e48a42b8c0a6026e1edb9b29a5fb5" "4904daa168519536b08ca4655d798ca0fb50d3545e6244cefcf7d0c7b338af7e" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(markdown-command
   "/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/markdown2"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ein:cell-input-area ((t (:background "Orange")))))
