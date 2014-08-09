(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
   (if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0)))))

; a. How many times is p applied for (sine 12.15?)
;
; Answer: 5, because it will keep dividing by 3 until the number is < .1.  12 / 3 / 3 / 3 / 3 / 3 = 0.049
;
; b.  What is the order of growth in space and number of steps (as a function
; of a) used by the process generated by the sine procedure when (sine a) is
; evaluated?
;
; Answer: ; It's going to keep dividing angle by 3 until it gets a result < .1.
; Then it's going to calc p(angle).  So, if we're diving by 3 a bunch of times,
; as a function of n, we can say that we'd need to raise our base value to the
; 3rd power to get back to the original n, so the process is O(log3(n)).
;
; 1 ]=> (trace-entry sine)
;
; ;Unspecified return value
;
; 1 ]=> (sine 12.15)
;
; [Entering #[compound-procedure 19 sine]
;     Args: 12.15]
; [Entering #[compound-procedure 19 sine]
;     Args: 4.05]
; [Entering #[compound-procedure 19 sine]
;     Args: 1.3499999999999999]
; [Entering #[compound-procedure 19 sine]
;     Args: .44999999999999996]
; [Entering #[compound-procedure 19 sine]
;     Args: .15]
; [Entering #[compound-procedure 19 sine]
;     Args: 4.9999999999999996e-2]
; ;Value: -.39980345741334
