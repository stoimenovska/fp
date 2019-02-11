; task 1
(define (even? number)
  (if (= (remainder number 2) 0)#t #f))
  
; task 3
(define (fact x)
  (if (= x 1)
     x
     (* x (fact(- x 1)))))
     
; task 4
(define (power base exp)
  (if (= exp 1)
      base
      (* base (power base (- exp 1)))))
      
; task 6
(define (sum start end)
  (if (> start end)
      0
      (+ start (sum (+ start 1) end))))
      
