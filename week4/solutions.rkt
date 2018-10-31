#lang racket

 ;task 1
(define (f x) (+ x 1))
(define (g x) (* x 5))
(define (compose f g)
  (lambda (number)(f( g number))))
  
;task 2
(define (add-n number)
  (lambda(arg)(+ number arg)))

;task 3
(define (f x) 
  (+ (* x x) 1))
(define (derivative  f h)
  (lambda(x)(/( - (f( + x h)) (f x) ) h)))

;taks 4
(define (my-length list)
  (if ( null? list)
      0
    (+ 1 (my-length(cdr list)))))
;(my-length '(2 1 7 3 1))

;task 5
(define (my-member? element list)
  (if ( null? list)
      #f
      (if (equal? element (car list))
          #t
          (my-member? element (cdr list)))))
;(my-member? 8 '(1 2 4 3 5))
; (my-member? 5 '(1 2 4 3 5))
;(my-member? 5 '(1 2 4 3 5))

;task 5_1
(define (my-mem? element list)
  (cond (( null? list)#f)
        ((equal? element (car list)) #t)
        (else(my-mem? element (cdr list)))))
;(my-mem? 8 '(1 2 3 5 6))

;task 6
(define(take n list)
  (if (= n 0)
      '()
     (if ( null? list)
      '()
      (cons (car list)(take (- n 1)(cdr list))))))
;(take 3 '(1 2))

;task 6_1
(define (t n list)
  (cond (( null? list)'())
        ((= n 0) '())
        (else (cons (car list)(t(- n 1)(cdr list))))))
;(t 3 '(1 2))
