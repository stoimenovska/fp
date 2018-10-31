#lang racket

;;task 1
(define (apply-twice f arg)
 (f(f arg)))
 
;; task 2
(define (apply-n number f arg)
  (if(< number 1)
   arg
  (apply-n (- number 1) f (f arg))))
  
;; task 3
(define (accumulate operation base start end term next)
  (if (> start end)
      base
      (operation 
            (term start) 
            (accumulate operation base (next start) end term next))))

(define (factorial number)
  (if(< number 1)
  number
  (accumulate * 1 1 number (lambda(x) x) (lambda(n)(+ n 1)))))
  
;; task 4

(define(double-factorial number)
  (if(< number 1)
  1
    (accumulate * 1 (if (= (remainder number 2) 0) 2 1)  number (lambda(x) x) (lambda(n)(+ n 2)))))
