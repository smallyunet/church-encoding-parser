#lang racket

(provide Fact)
(provide Y)
(provide showBool true false and or not1 not2 xor if)
(provide showNum zero one two three succ)
(provide pair first second)
(provide IsZero)

;;;-------- factor --------

(define Fact
  (lambda (fac)
      (lambda (x)
        (if (= x 0) 
            0
            (+ x (fac (sub1 x)))))))

;;;-------- y combinator --------

(define Y
  (lambda (f)
    ((lambda (x) (x x))
    (lambda (x) (f (lambda (v) ((x x) v)))))))

;;;-------- show boolean --------

(define (showBool f)
 (apply (apply f '(#t)) '(#f)))

;;;-------- boolean --------

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

(define xor
  (lambda (a)
    (lambda (b)
      ((a (not2 b)) b))))

(define if
  (lambda (p)
    (lambda (a)
      (lambda (b)
        ((p a) b)))))

;;;-------- show number --------

(define (showNum num)
  (define times 0)
  (define (f x)
    (set! times (add1 times)))
  (cond
    [(procedure? num)
       (showNum (num f))
       times]))

;;;-------- number --------

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

(define (succ) 
  (lambda (n)
    (lambda (f)
      (lambda (x)
        (f ((n f) x))))))

;;;-------- is pair --------

(define (pair)
  (lambda (x)
    (lambda (y)
      (lambda (z)
        ((z x) y)))))

(define (first)
  (lambda (p)
    (p (lambda (x)
          (lambda (y)
            x)))))   

(define (second)
  (lambda (p)
    (p (lambda (x)
          (lambda (y)
            y)))))   

;;;-------- predicate --------

(define (IsZero num)
  ((num (lambda (x) #f)) #t))
