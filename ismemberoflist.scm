(define (ismember lst ele)
    (cond
        ((null? lst) #f)
        ((= ele (car lst))  #t )
        (else (ismember (cdr lst) ele ))
    )
)
(display (ismember '(1 2 4 5 3) 6))

(newline)
