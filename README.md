# Church Encoding Parser

## Introduction
This repository contains a simple parser for church encoding, implemented in the [parser.rkt](https://github.com/smallyunet/church-encoding-parser/blob/master/parser.rkt) file.

The goal is to code an executor capable of outputting the results of statements written in church encoding.

**Reference**: [Church Encoding - Wikipedia](https://en.wikipedia.org/wiki/Church_encoding)

## Usage

To use, you can follow the example provided in the `testNum.rkt`:

```
#lang racket
(require "./parser.rkt")

(println "---- number enum ----")
(showNum zero)
(showNum one)

(println "---- you can write like this ----")
(showNum (λ (f) (λ (x) x)))
(showNum (λ (f) (λ (x) (f x))))
```

Executing the test units will yield the following:

```
smallyu@smallyus-Air church-encoding-parser % racket testNum.rkt 
"---- number ----"
0
1
"---- you can write like this ----"
0
1
```

### TODO List

- [x] Church numerals
    - [x] numerals
    - [x] plus
    - [x] succ
    - [x] mult
    - [x] exp
    - [x] pred
    - [x] minus

- [x] Church Booleans
    - [x] true
    - [x] false
    - [x] and
    - [x] or
    - [x] not1
    - [x] not2
    - [x] xor
    - [X] if

- [x] Predicates
    - [x] IsZero
    - [x] LEQ
    - [x] EQ

- [x] Church pairs
    - [x] pair
    - [x] first
    - [x] second

- [x] List encodings
    - [x] nil
    - [x] isnil
    - [x] cons
    - [x] head
    - [x] tail

- [x] Y Combinator
