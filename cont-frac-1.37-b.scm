(define (cont-frac n d k)
  (define (value itor old)
      (if (= itor 0)
	  old
	  (value (- itor 1) (/ (n k) (+ (d k) old)))))
  (value k (/ (n k) (d k))))

(display (cont-frac (lambda (i) 1.0)
		    (lambda (i) 1.0)
		    12700000))
(newline)
