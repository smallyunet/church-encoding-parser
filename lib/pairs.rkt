#lang racket

(provide pair)

(define (pair)
  (lambda (x)
    (lambda (y)
      (lambda ()
        (cons x y)))))



