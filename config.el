;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox-light)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
(add-to-list 'org-modules 'org-habit)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)
;; Esc -> jj

(define-key evil-normal-state-map (kbd "SPC j j") 'avy-goto-word-0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/orgfiles/anitor.org")))
 '(org-log-repeat (quote time))
 '(package-selected-packages (quote (rust-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq org-log-repeat "time")
;; Para salvar o historico dos TODOS...

(setq org-roam-directory "~/org-roam")

(define-key evil-normal-state-map (kbd "C-n") 'scroll-up)
(define-key evil-normal-state-map (kbd "C-p") 'scroll-down)

(define-key evil-normal-state-map (kbd "j") 'backward-char)
(define-key evil-normal-state-map (kbd "ç") 'forward-char)
(define-key evil-normal-state-map (kbd "k") 'next-line)
(define-key evil-normal-state-map (kbd "l") 'previous-line)

(define-key evil-normal-state-map (kbd "SPC e j j") 'org-roam-find-file)
(define-key evil-normal-state-map (kbd "SPC e j k") 'org-roam-insert)
(define-key evil-normal-state-map (kbd "SPC e j l") 'org-roam-buffer-toggle-display)

(define-key evil-normal-state-map (kbd "SPC e k j") 'avy-goto-line)
(define-key evil-normal-state-map (kbd "SPC e k k") 'avy-goto-char-in-line)

(setq browse-url-browser-function 'eww-browse-url)
