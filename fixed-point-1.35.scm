(define f (lambda (x) (+ 1 (/ 1 x))))

(define close-enough?
  (lambda (a b)
    (< (abs (- a b)) 0.000000000000000000000001)))

(define try
  (lambda (guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next)))))

(define fixed-point
  (lambda (first-guess)
    (try first-guess)))
