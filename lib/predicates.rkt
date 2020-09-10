#lang racket


; -------------- main function ------------

(provide IsZero)

(define (IsZero num)
  ((num (lambda (x) #f)) #t))





