#lang racket

(provide Fact)
(provide Y)
(provide true false and or not1 not2)
(provide zero one two three)
(provide showBool)
(provide showNum)
(provide pair)
(provide IsZero)

; ----------------- for Y ---------------

(define Fact
  (lambda (fac)
      (lambda (x)
        (if (= x 0) 
            0
            (+ x (fac (sub1 x)))))))

; ----------------- Y ---------------

(define Y
  (lambda (f)
    ((lambda (x) (x x))
    (lambda (x) (f (lambda (v) ((x x) v)))))))

;----------------- enum -------------------

(define true
  (lambda (a)
    (lambda (b)
      a)))

(define false
  (lambda (a)
    (lambda (b)
      b)))

(define and
  (lambda (p)
    (lambda (q)
      ((p q) p))))

(define or
  (lambda (p)
    (lambda (q)
      ((p p) q))))

(define not1
  (lambda (p)
    (lambda (a)
      (lambda (b)
        ((p b) a)))))

(define not2
  (lambda (p)
    ((p false) true)))

;------------------ number -----------------

(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define one
  (lambda (f)
    (lambda (x)
      (f x))))

(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))

(define three
  (lambda (f)
    (lambda (x)
      (f (f (f x))))))

;------------------ show boolean -----------------

(define (showBool f)
 (apply (apply f '(#t)) '(#f)))

;------------------ show number -----------------

(define (showNum num)
  (define times 0)
  (define (f x)
    (set! times (add1 times)))
  (cond
    [(procedure? num)
       (showNum (num f))
       times]))

;------------------ is pair -----------------

(define (pair)
  (lambda (x)
    (lambda (y)
      (lambda ()
        (cons x y)))))

;------------------ predicate -----------------

(define (IsZero num)
  ((num (lambda (x) #f)) #t))
