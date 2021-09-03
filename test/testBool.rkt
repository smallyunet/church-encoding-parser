#lang racket

(require "../lib/lib.rkt")

(println "-------------- true false -----------------")

(showBool true)
(showBool false)
(showBool (λ (a) (λ b a)))
(car (showBool (λ (a) (λ b b))))

(println "-------------- and or -----------------")

(showBool ((and true) false))
(showBool ((or true) false))

(println "-------------- not -----------------")

(showBool (not1 true))
(showBool (not1 false))



