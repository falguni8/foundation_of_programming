//non empty list

(define (fun lst)
    (cond ( (null? (cdr lst)) '()  )
    (else (cons (car lst) ( fun (cdr lst) )) )
    )
)
(display (fun '(1 2 3 4)) )


///list
(define (fun lst)
    (cond ((null? lst) 'emptylist )
    ( (null? (cdr lst)) '()  )
    (else (cons (car lst) ( fun (cdr lst) )) )
    )
)
(display (fun '()) )
