(defun match-var (l1 l2)
    (cond
	((or (null l1) (null l2)) (equal l1 l2))
	((and (atom (first l1)) (atom (first l2))) (and (equal (first l1) (first l2)) (match-var (rest l1) (rest l2))))
	((equal (first (first l1)) '?) (setf (symbol-value (first (last( first l1)))) (first l2)) (match-var (rest l1) (rest l2)))
	((and (and (listp (first l1)) (equal (caar l1) '!))
	    (cond
        	((not (boundp (cadar l1))) (set (cadar l1) (list(first l2))) t)
        	((listp (eval(cadar l1))) (set (cadar l1) (append (eval (cadar l1)) (list(first l2)))) t)
        	(t (set (cadar l1) (list(first l2)))(write (eval (cadar l1))) t)
	    )
      	    (match-var (rest l1) (rest l2))) t) 
	((and (listp (first l1)) (equal (caar l1) '!))    
	    (cond
        	((not (boundp (cadar l1))) (set (cadar l1) (list(first l2))) (write (eval (cadar l1))) )
        	((listp (eval (cadar l1)))  )
      	    )
	  (match-var l1 (rest l2)))
    )
)
