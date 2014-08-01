; f(n)=n if n < 3
; f(n)=f(n-1)+2f(n-2)+3f(n-3) if n >= 3

(define (f-recur n)
  (if (< n 3)
    n
    (+ (* 1 (f-recur (- n 1)))
       (* 2 (f-recur (- n 2)))
       (* 3 (f-recur (- n 3))))))


(define (f-iter-helper a b c count)
  (if (= count 0)
    a
    (f-iter-helper (f-iter-sum a b c) a b (- count 1))))

(define (f-iter-sum a b c)
  (+ (* 1 a) (* 2 b) (* 3 c)))

(define (f-iter n)
  (if (< n 3)
    n
    (f-iter-helper 4 2 1 (- n 3))))
