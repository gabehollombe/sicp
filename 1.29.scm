(define (sum-from a b term)
  (define (helper a b term sum)
    (if (> a b)
      sum
      (helper (+ a 1) b term (+ sum (term a)))))
  (helper a b term 0))

(define (cube x) (* x x x))

(define (simpson f a b n)
  (define (term x)
    (if (= 0 (remainder x 2)) 2 4))
  (define (h) (/ (- b a) n))
    (define (y k) (f (+ a (* k (h)))))
    (* (/ (h) 3) (+ (y 0) (sum-from 1 (- n 1) term) (y n))))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
