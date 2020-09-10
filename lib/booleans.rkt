#lang racket

; ----------- main function --------

(provide showBool)

(define (showBool f)
 (apply (apply f '(#t)) '(#f)))


