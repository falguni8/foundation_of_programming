//percentage above average


(define (percentaboveaverage inputlist)
        (if (null? inputlist) 
            (display "empty")
            (
            (let ((listofmarks (getlistofmarks inputlist)))
                 (*(/ countaboveaverage (listofmarks (average listofmarks) ) (lengthoflist listofmarks) ) 100) 
            )
            )
        )
)

(define (getlistofmarks inputlist)
    (if (null? inputlist) '() (cons (cadar inputlist) (getlistofmarks (cdr inputlist))))
)

(define (countaboveaverage listofmarks average)
    (cond 
          ((null? listofmarks) 0)
          ((>(car listofmarks) average) (+ 1 (countaboveaverage (cdr listofmarks) average)) )
          (else (countaboveaverage (cdr listofmarks) average) )
    )
)

(define (average listofmarks)
    (cond 
          ((null? listofmarks)(display "empty"))
          (else (/ (sum listofmarks) (length listofmarks)))
    )
)

(define (sum listofmarks)
    (cond
        ((null? listofmarks) 0)
        (else (+ (car listofmarks) (cdr listofmarks) ))
    )
)

(define (lengthoflist listofmarks)
    (cond 
          ((null? listofmarks) 0)
          (else (+1 (cdr listofmarks) ))
    )
)

(display (percentaboveaverage '( '(a 10) '(b 12) )  )  )
