(define (average x y)
  (/ (+ x y) 2))

(define  (improve guess x)
  (average guess  (/ x guess)))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(define (delta-good-enough? guess last-guess x)
  (< (abs (- guess last-guess)) (/ guess 100000.0)))

(define (sqrt-iter2 guess last-guess x)
  (if (delta-good-enough? guess last-guess x)
      guess
      (sqrt-iter2 (improve guess x) guess x)))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x x))


(sqrt  0.000001) ;=> 3.1260655525445276e-2
(sqrt2 0.000001) ;=> 1.0000000000000117e-3

(sqrt  9879999999999999999999.0) ;=> 99398189118.31342
(sqrt2 9879999999999999999999.0) ;=> 99398189118.31342

