#lang racket

(require "./parser.rkt")

(println "---- number enum ----")

(showNum zero)
(showNum one)

(println "---- you can write like this ----")

(showNum (λ (f) (λ (x) x)))
(showNum (λ (f) (λ (x) (f x))))

(println "---- calculations succ ----")

(showNum ((succ) one))
(showNum ((succ) two))

(println "---- calculations plus ----")

(showNum (((plus) one) two))
(showNum (((plus) one) three))
