#lang racket

(require "./parser.rkt")

(println "--- IsZero ---")
(showBool (IsZero zero))
(showBool (IsZero one))

(println "--- LEQ ---")
(showBool ((LEQ zero) zero))
(showBool ((LEQ one) zero))

(println "--- EQ ---")
(showBool ((EQ zero) zero))
(showBool ((EQ one) zero))
