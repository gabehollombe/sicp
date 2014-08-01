(define (square x) (* x x))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess))
     (/ guess 1000.0)))

(define (improve guess x)
  (/ (+ (* 2 guess)
        (/ x (square guess)))
     3))

(define (cube-root-iter guess last-guess x)
  (if (good-enough? guess last-guess)
      guess
      (cube-root-iter (improve guess x) guess x)))

(define (my-cbrt x)
  (cube-root-iter 1.0 x x))

(my-cbrt 81)
