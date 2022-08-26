//unique
(define (remove-element lst ele)
    (cond ((null? lst) '()) 
          ( (= (car lst) ele) (cdr lst) )
          (else (cons (car lst) (remove-element (cdr lst) ele)) )
    )
)
(display (remove-element '(1 2 3 4 2 ) 2) )


//multiple-occurences
(define (remove-element lst ele)
    (cond ((null? lst) '()) 
          ( (= (car lst) ele) (remove-element (cdr lst) ele ) )
          (else (cons (car lst) (remove-element (cdr lst) ele)) )
    )
)
(display (remove-element '(1 2 3 4 2 ) 2) )
