(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) (/ guess 1000.0)))

(define (sqrt-iter guess last-guess x)
  (if (good-enough? guess last-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (my-sqrt x)
  (sqrt-iter 1.0 x x))


(sqrt1 0.000001) ;; Not accurate for small numbers
(sqrt2 0.000001) ;; Better for small numbers

;(sqrt1 10000000000000) ;; Hangs
(sqrt2 10000000000000)  ;; Works for large numbers

