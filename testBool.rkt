#lang racket

(require "./parser.rkt")

(println "-------------- true false -----------------")

(showBool true)
(showBool false)
(showBool (λ (a) (λ b a)))
(car (showBool (λ (a) (λ b b))))

(println "-------------- and or -----------------")

(showBool ((and true) false))
(showBool ((or true) false))

(println "-------------- not1 -----------------")

(showBool (not1 true))
(showBool (not1 false))

(println "-------------- not2 -----------------")

(showBool (not2 true))
(showBool (not2 false))

