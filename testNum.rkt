#lang racket

(require "./parser.rkt")

(println "--- number enum ---")
(showNum zero)
(showNum one)

(println "--- you can write like this ---")
(showNum (λ (f) (λ (x) x)))
(showNum (λ (f) (λ (x) (f x))))

(println "--- calculations succ ---")
(showNum (succ one))
(showNum (succ two))

(println "--- calculations plus ---")
(showNum ((plus one) two))
(showNum ((plus one) three))

(println "--- calculations mult ---")
(showNum ((mult two) three))

(println "--- calculations exp ---")
(showNum ((exp two) three))

(println "--- calculations pred ---")
(showNum (pred two))

(println "--- calculations minus ---")
(showNum ((minus three) one))
