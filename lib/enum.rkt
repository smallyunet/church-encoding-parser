#lang racket

; ----------------- for Y ---------------

(provide Fact)

(define Fact
  (lambda (fac)
      (lambda (x)
        (if (= x 0) 
            0
            (+ x (fac (sub1 x)))))))

;----------------- bool -------------------

(provide true false and or)

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

;------------------ number -----------------

(provide zero one two three)

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
