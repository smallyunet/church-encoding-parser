#lang racket

(require "../lib/lib.rkt")

(println "-------------- true false -----------------")

(showBool true)
(showBool false)
(showBool (λ (a) (λ b a)))

(println "-------------- and or -----------------")

(showBool ((and true) false))
(showBool ((or true) false))




