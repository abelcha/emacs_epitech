;;
;; protected.el for q in /home/tovazm/.emacs.d
;; 
;; Made by chalie_a
;; Login   <abel@chalier.me>
;; 
;; Started on  Tue Apr 15 06:12:59 2014 chalie_a
;; Last update Sat May 24 11:20:08 2014 chalie_a
;;

(global-set-key (kbd"C-x C-w") 'insert-make)

(defun insert-make ()
  (interactive)
  (insert (get-make))
  (forward-line -28)
  )

(defun get-make ()
 (setq str (read-from-minibuffer
                    (format "How do you want to call your list : ")))
  (concat "CC\t=\tgcc -g3\n\n"
	  "NAME\t=\t" str "\n\n"
	  "SRC\t=\t\n\n"
	  "LIB\t=\t\n\n"
	  "OBJ\t=\t$(SRC:.c=.o) $(LIB:.c=.o)\n\n"
	  "CFLAGS\t=\t-I./includes/ #-W -Wall -Wextra -pedantic\n\n"
	  "RM\t=\trm -fr\n\n"
	  "all\t:\t$(NAME)\n\n"
	  "$(NAME)\t:\t$(OBJ)\n\n"
	  "\t\t$(CC) -o $(NAME) $(OBJ)\n\n"
	  "clean\t:\n\n"
	  "\t\t$(RM) $(OBJ)\n\n"
	  "fclean\t:\tclean\n\n"
	  "\t\t$(RM) $(NAME)\n\n"
	  "re\t:\tfclean all\n\n"
	  ".PHONY\t:\tall clean fclean re\n\n"
)
)
