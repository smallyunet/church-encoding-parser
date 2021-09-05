#lang racket

(require "./parser.rkt")

(println "---- number ----")

(showNum zero)
(showNum one)
(showNum two)
(showNum three)

(println "---- you can write like this ----")

(showNum (λ (f) (λ (x) x)))
(showNum (λ (f) (λ (x) (f x))))
(showNum (λ (f) (λ (x) (f (f x)))))
(showNum (λ (f) (λ (x) (f (f (f x))))))

