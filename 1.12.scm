(define (pascal r c)
  (cond
    ((< c 0) 0)
    ((>= c r) 1)
    ((= r 0) 1)
    ((= r 1) 1)
    ((+ (pascal (- r 1) (- c 1))
       (pascal (- r 1) c)))))
