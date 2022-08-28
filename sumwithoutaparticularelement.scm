(define (sum-list lst ele)
    
    (cond ((null? lst) 0)
    ( (=(car lst) ele) (sum-list (cdr lst) ele) )
    (else (+ (car lst) (sum-list (cdr lst) ele)))
    )
)
(display (sum-list '(1 2 3 4 2) 2))
