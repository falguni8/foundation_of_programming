(define (check-positive lst)
    (cond
        ((null? (cdr lst)) (if (> (car lst) 0) #t #f ) )
        ((>(car lst) 0) ( check-positive (cdr lst)) )
        (else #f)
    )
)
(display (check-positive '(1 2 3 4)))
