;;
;; protected.el for q in /home/tovazm/.emacs.d
;; 
;; Made by chalie_a
;; Login   <abel@chalier.me>
;; 
;; Started on  Tue Apr 15 06:12:59 2014 chalie_a
;; Last update Wed Apr 16 03:03:07 2014 chalie_a
;;

(global-set-key (kbd"C-c p") 'insert-prot)

(defun insert-filename ()
  (interactive)
  (insert (get-filename)))

(defun insert-prot ()                                                                                      
  (interactive)
  (forward-line -987)
  (forward-line 10)
  (insert (get-ifn))
  (forward-line 989)
  (insert (get-endif))
  (forward-line -2)
  )

(defun get-ifn ()
  (setq str (file-name-sans-extension
	     (file-name-nondirectory (buffer-file-name))))
  (concat "#ifndef " (upcase str) "_H_\n"
	  "# define " (upcase str) "_H_\n"
	  "\n")
)

(defun get-endif ()
  (setq str (file-name-sans-extension
	     (file-name-nondirectory (buffer-file-name))))
  (concat "\n#endif /* !" (upcase str) "_H_ */\n")
)
