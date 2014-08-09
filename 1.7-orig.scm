(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))



(define (new-sqrt-iter guess last-guess x)
  (if (new-good-enough? guess last-guess)
      guess
      (new-sqrt-iter (improve guess x) guess x)))

(define (new-good-enough? guess last-guess)
  (< (abs (- 1 (/ guess last-guess))) 0.000001))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x x))

(define (james-sqrt-iter guess x)
  (define threshold (/ x 1000000000))
  (define (james-good-enough? guess)
    (< (abs (- (square guess) x)) threshold))
  (if (james-good-enough? guess)
      guess
      (james-sqrt-iter (improve guess x) x)))

(define (james-sqrt x)
  (james-sqrt-iter 1.0 x))
