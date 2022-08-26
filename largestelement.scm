(define (largest lst)
    (cond ((null? (cdr lst)) (car lst))
          ((> (car lst) (largest (cdr lst))) (car lst))
          (else (largest (cdr lst)))
    )
)

(display (largest '(1 2 3 4)) )
