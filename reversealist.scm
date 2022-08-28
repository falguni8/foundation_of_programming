(define (reverse lst)
    (define (add lstt ele)
        (cond 
              ((null? lstt)(cons ele '()))
              (else (cons (car lstt) (add (cdr lstt) ele)))
        )
    )

    (cond 
         ((null? lst ) '())
         (else (add (reverse(cdr lst)) (car lst) ) )
    )
)
(display (reverse '(1 2 3 4 5)))
