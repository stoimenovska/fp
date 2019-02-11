(define tree '(1
                 (2 () ())
                 (3
                     (4 () ())
                     (5 () ()))))
;task 1
(define (plus tree)
  (cond ((null? tree) 0)
        (else (+ (car tree)(plus (car(cdr tree)))(plus (car(cdr(cdr tree))))))))

;(sum tree)

;task 3
(define(level tree i)
  (if(< i 1)
      (left-tree tree)
     (level (right-tree tree)(- i 1))))

