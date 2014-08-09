(define (square n) (* n n))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))



(define (square x)
  (* x x))

(define  (even? n)
    (=  (remainder n 2) 0))

(define (fast-exp-iter b n)
  (fast-exp-iter-helper b n 1))

(define (fast-exp-iter-helper b n a)
  (cond ((= 0 n) 1)
        ((= n 1) (* a b))
        ((even? n) (fast-exp-iter-helper (square b) (/ n 2) a))
        (else (fast-exp-iter-helper b (- n 1) b))))
