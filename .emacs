;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; append-tuareg.el - Tuareg quick installation: Append this file to .emacs.

(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files
(column-number-mode 1)
;;(global-linum-mode 1) ; display line numbers in margin. Emacs 23 only.
;;(cua-mode 1)

(transient-mark-mode 1) ; highlight text selection
(delete-selection-mode 1) ; delete seleted text when typing
(add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . tuareg-mode))
;;(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
;;(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
;(dolist (ext '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"))
;  (add-to-list 'completion-ignored-extensions ext))
(setq column-number-mode t)
;;(setq line-number-mode t)
(setq user-full-name "chalie_a")
(setq user-mail-address "chalie_a@epitech.eu")
(load-file "~/.emacs.d/std_comment.el")
(load-file "~/.emacs.d/protection.el")
(load-file "~/.emacs.d/struct.el")
(load-file "~/.emacs.d/make.el")

(global-set-key [f11] 'std-file-header)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; color theme for emacs |
 ;; 		          V	
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes (quote ("272048f0f124cdc42689a1e46366a8c7c7785664c35353fa62579a049c335608" "f65f265c85bf4c669eae9f47ffde0b5bfb1ecbeedfbb5b62b88ba2dd8ffe32d0" default))))
(custom-set-faces


 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
