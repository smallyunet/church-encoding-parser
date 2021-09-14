
### Introduct

A simple church encoding parser all in [parser.rkt](https://github.com/smallyunet/church-encoding-parser/blob/master/parser.rkt).

I want to code an executor that can output the result of the statement written by church encoding. Maybe I get in some trouble.

It's under development.

Reference: [https://en.wikipedia.org/wiki/Church_encoding](https://en.wikipedia.org/wiki/Church_encoding)

### Usage

You can execute test units in the test folder just like this:

```
smallyu@smallyus-Air church-encoding-parser % racket testNum.rkt 
"---- number ----"
0
1
2
3
"---- you can write like this ----"
0
1
2
3
smallyu@smallyus-Air church-encoding-parser %
```

### TODO List

- [ ] Church numerals
    - [x] numerals
    - [x] succ
    - [ ] add
    - [ ] mult
    - [ ] exp
    - [ ] pred
    - [ ] sub

- [x] Church Booleans
    - [x] true
    - [x] false
    - [x] and
    - [x] or
    - [x] not1
    - [x] not2
    - [x] xor
    - [X] if

- [ ] Predicates
    - [x] IsZero
    - [ ] LEQ
    - [ ] EQ

- [x] Church pairs
    - [x] pair
    - [x] first
    - [x] second

- [ ] List encodings
    - [ ] nil
    - [ ] isnil
    - [ ] cons
    - [ ] head
    - [ ] tail

- [x] Y Combinator
