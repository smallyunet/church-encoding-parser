#lang racket

(require "./parser.rkt")

(println "---- pair ----")
(((pair) one) two)
(((pair) 1) 2)

(println "---- first ----")
((first) (((pair) one) two))
(showNum ((first) (((pair) one) two)))
((first) (((pair) 1) 2))

(println "---- second ----")
((second) (((pair) one) two))
(showNum ((second) (((pair) one) two)))
((second) (((pair) 1) 2))

