#lang racket

; ----------- main function --------

(define (showBool f)
 (apply (apply f '(#t)) '(#f)))

; ------------ test -----------

(define true
  (lambda (a)
    (lambda (b)
      a)))

(define false
  (lambda (a)
    (lambda (b)
      b)))

(showBool true)
(showBool false)
(showBool (λ (a) (λ b a)))

(println "--------- about and, or ----------")

(define and
  (lambda (p)
    (lambda (q)
      ((p q) p))))

(define or
  (lambda (p)
    (lambda (q)
      ((p p) q))))

(showBool ((and true) false))
(showBool ((or true) false))

