#lang racket

(require "./parser.rkt")

(println "--- nil isnil ---")
(nil pair)
(isnil nil)

(println "--- cons ---")
((cons one) two)
(isnil ((cons one) two))

(println "--- head ---")
(head ((cons one) two))

(println "--- tail ---")
(tail ((cons one) two))

