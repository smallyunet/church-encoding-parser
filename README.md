
### Intro

A simple church encoding parser.

I want to code an executor that can output the result of the statement written by church encoding. Maybe I get in some trouble.

It's under development.

Reference: [https://en.wikipedia.org/wiki/Church_encoding](https://en.wikipedia.org/wiki/Church_encoding)

### Usage

You can execute test units in the test folder just like this:

```
smallyu@smallyus-Air church-encoding-parser % racket testBool.rkt 
"-------------- true false -----------------"
#t
#f
#t
#f
"-------------- and or -----------------"
#f
#t
"-------------- not -----------------"
#f
#t
smallyu@smallyus-Air church-encoding-parser %
```

### TODO List

- [ ] Church numerals
    - [x] numerals
    - [ ] succ
    - [ ] add
    - [ ] mult
    - [ ] exp
    - [ ] pred
    - [ ] sub

- [ ] Church Booleans
    - [x] true
    - [x] false
    - [x] and
    - [x] or
    - [x] not1
    - [ ] not2
    - [ ] xor
    - [ ] if

- [ ] Predicates
    - [x] IsZero
    - [ ] LEQ
    - [ ] EQ

- [ ] Church pairs
    - [x] pair
    - [ ] first
    - [ ] second

- [ ] List encodings
    - [ ] nil
    - [ ] isnil
    - [ ] cons
    - [ ] head
    - [ ] tail

- [x] Y Combinator
