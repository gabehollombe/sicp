(define (double n)
  (* n 2))

(define (half n)
  (/ n 2))

(define (fast-mult-iter a b)
  (helper a b 0))

(define (helper a b product)
  (cond ((= 0 b) (- product a))
        ((even? b) (helper a (half b) (+ (double a) product)))
        (else (helper a (- b 1) (+ a product)))))

