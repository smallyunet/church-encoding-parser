#lang racket

; ----------------- reference yinwang ----------------

(provide Y)

(define Y
  (lambda (f)
    ((lambda (x) (x x))
    (lambda (x) (f (lambda (v) ((x x) v)))))))

