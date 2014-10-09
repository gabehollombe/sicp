(define (double n)
  (* n 2))

(define (half n)
  (/ n 2))

(define (fast-mult-recur a b)
  (cond ((= 0 b) 0)
        ((even? b) (fast-mult-recur (double a) (half b)))
        (else (+ a (fast-mult-recur a (- b 1))))))

