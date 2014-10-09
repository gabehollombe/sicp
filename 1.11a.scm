; f(n) = n if n < 3
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) otherwise

(define (f-recur n)
  (if (< n 3)
    n
    (+ (* 1 (f-recur (- n 1)))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))


(define (f n)
  (if (< n 3)
    n
    (f-iter 2 1 0 n)))

(define (f-iter n1 n2 n3 count)
  (if (< count 3)
    n1
    (f-iter (f-sum n1 n2 n3) n1 n2 (- count 1))))

(define (f-sum n1 n2 n3)
  (+ n1 (* 2 n2) (* 3 n3)))

