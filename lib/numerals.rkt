#lang racket

; ------------- it's main function ---------

(define (showNum num)
  (define times 0)
  (define (f x)
    (set! times (add1 times)))
  (cond
    [(procedure? num)
       (showNum (num f))
       times]))

; --------------- the test ---------------

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

(showNum zero)
(showNum one)
(showNum two)
(showNum three)

(println "---- you can write like this ----")

(showNum (λ (f) (λ (x) x)))
(showNum (λ (f) (λ (x) (f x))))
(showNum (λ (f) (λ (x) (f (f x)))))
(showNum (λ (f) (λ (x) (f (f (f x))))))
