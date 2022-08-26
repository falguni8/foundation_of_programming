(define (sum-list lst)
    
    (cond ((null? (cdr lst)) (car lst))
          
          (else (+ (car lst) (sum-list (cdr lst))) )
    )
)


(display (sum-list '(1 2 3 4)) )
