#lang racket


; -------------- main function ------------

(define (IsZero num)
  ((num (lambda (x) #f)) #t))

; --------------- test ----------------

(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define one
  (lambda (f)
    (lambda (x)
      (f x))))

(IsZero zero)
(IsZero one)


