;task 1
(define (num-length number)
    (if(< number 10)
     1
    (+ 1 (num-length (quotient number 10)))))

(define (get-digit position number)
  (if  (= position 1)
      (remainder number 10)
      (get-digit (- position 1)(quotient  number 10))))
  
(define (middle-digit number)
  (if (= (remainder (num-length number) 2) 0)
       -1
     (abs (get-digit (+ (quotient (num-length number) 2) 1) number))))
