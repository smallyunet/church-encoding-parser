#lang racket

; ------------- it's main function ---------

(provide showNum)

(define (showNum num)
  (define times 0)
  (define (f x)
    (set! times (add1 times)))
  (cond
    [(procedure? num)
       (showNum (num f))
       times]))
