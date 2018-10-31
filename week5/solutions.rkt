#lang racket

;task 1
(define (generate-interval start end)
 (if( > start end)
  '()
  (cons start (generate-interval (+ start 1) end))))
  
;(generate-interval 1 5)

;taks2
(define (zip list1 list2)
  (if (or (null? list1)(null? list2))
      '()
      (cons (cons (car list1)(car list2)) (zip (cdr list1)(cdr list2)))))

;(zip '(1 2 3 4) '(#t #f #f))

;task 3
(define(member-deep? element list)
  (cond ((null? list) #f)
        ((list? (car list))(cond((null? (car list)) #f)
                                ((equal? element (car(car list))) #t)
                                (else(member-deep? element (cdr(car list))))))
        ((equal?  element (car list)) #t)
        (else (member-deep? element (cdr list)))))

;(member-deep? 3 '(1 2 4 5 6))
;(member-deep? 3 '((1 2) 4 5 6))
;(member-deep? 2 '((1 2) 4 5 6))

;task 4
(define (my-flatten list)
  (cond ((null? list) '())
        ((pair? (car list))(append (my-flatten (car list)) (my-flatten (cdr list))))
     ;  ((elem? (car list))(cond (car list)(cdr list)))
        (else(cons (car list)(my-flatten (cdr list))))))
        
;(my-flatten '(1 (2 3) (4 (5) 6))) 

