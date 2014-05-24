;;
;; protected.el for q in /home/tovazm/.emacs.d
;; 
;; Made by chalie_a
;; Login   <abel@chalier.me>
;; 
;; Started on  Tue Apr 15 06:12:59 2014 chalie_a
;; Last update Sat May 24 11:19:10 2014 chalie_a
;;

(global-set-key (kbd"C-x k") 'insert-struct)
(global-set-key (kbd"C-x j") 'insert-dll)


;;
;; DOUBLE LINKED LIST
;;

(defun insert-dll ()
  (interactive)
  (insert (get-dll))
  (forward-line -4)
  )

(defun get-dll ()
  (setq str (read-from-minibuffer
                    (format "How do you want to call your list : ")))
  (concat "typedef struct\t\ts_" str 
	  "\n{\n\n"
	  "  struct s_" str "\t*prev;\n"
	  "  struct s_" str "\t*next;\n"
	  "}\t\t\t" "t_" str ";\n")
)


;;
;; SIMPLE STRUCT
;;

(defun insert-struct ()
  (interactive)
  (insert (get-struct))
  (forward-line -2)
  )

(defun get-struct ()
  (setq str (read-from-minibuffer
                    (format "How do you want to call your struct : ")))
  (concat "typedef struct\t\ts_" str 
	  "\n{\n\n"
	  "}\t\t\t" "t_" str ";\n")
)
