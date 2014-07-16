(define (largest a b)
  (if (> a b) a b))

(define (square a)
  (* a a))

(define (sum-of-squares-of-two-largest a b c)
  (+ (square (largest a b)) (square (largest b c))))

