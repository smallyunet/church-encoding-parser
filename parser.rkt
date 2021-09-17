#lang racket

(provide Fact Y)
(provide showBool true false and or not1 not2 xor if)
(provide showNum zero one two three four five six plus succ mult exp pred minus)
(provide pair first second)
(provide IsZero LEQ EQ)
(provide nil isnil cons head tail)

;;;-------- factor --------
  
(define Fact
  (lambda (fac)
      (lambda (x)
        (cond
          [(zero? x) 1]
          [else (+ x (fac (sub1 x)))]))))

;;;-------- y combinator --------

(define Y
  (lambda (f)
    ((lambda (x) (x x))
    (lambda (x) (f (lambda (v) ((x x) v)))))))

;;;-------- boolean --------

(define (showBool f)
 (apply (apply f '(#t)) '(#f)))

(define true
  (lambda (a)
    (lambda (b)
      a)))

(define false
  (lambda (a)
    (lambda (b)
      b)))

(define and
  (lambda (p)
    (lambda (q)
      ((p q) p))))

(define or
  (lambda (p)
    (lambda (q)
      ((p p) q))))

(define not1
  (lambda (p)
    (lambda (a)
      (lambda (b)
        ((p b) a)))))

(define not2
  (lambda (p)
    ((p false) true)))

(define xor
  (lambda (a)
    (lambda (b)
      ((a (not2 b)) b))))

(define if
  (lambda (p)
    (lambda (a)
      (lambda (b)
        ((p a) b)))))

;;;-------- number --------

(define (showNum num)
  (define times 0)
  (define (f x)
    (set! times (add1 times)))
  (cond
    [(procedure? num)
       (showNum (num f))
       times]))

(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define one
  (lambda (f)
    (lambda (x)
      (f x))))

(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))

(define three
  (lambda (f)
    (lambda (x)
      (f (f (f x))))))

(define four
  (lambda (f)
    (lambda (x)
      (f (f (f (f x)))))))

(define five
  (lambda (f)
    (lambda (x)
      (f (f (f (f (f x))))))))

(define six
  (lambda (f)
    (lambda (x)
      (f (f (f (f (f (f x)))))))))

(define succ
  (lambda (n)
    (lambda (f)
      (lambda (x)
        (f ((n f) x))))))

(define plus
  (lambda (m)
    (lambda (n)
      (lambda (f)
        (lambda (x)
          ((m f) ((n f) x)))))))

(define mult
  (lambda (m)
    (lambda (n)
      (lambda (f)
        (lambda (x)
          ((m (n f)) x))))))

(define exp
  (lambda (m)
    (lambda (n)
      (n m))))

(define pred
  (lambda (n)
    (lambda (f)
      (lambda (x)
        (n (lambda (g)
              (lambda (h)
                (h (g f)))))))))

(define minus
  (lambda (m)
    (lambda (n)
      ((n pred) m))))

;;;-------- predicate --------

(define (IsZero num)
  ((num (lambda (x) false)) true))

(define LEQ
  (lambda (m)
    (lambda (n)
      (IsZero ((minus m) n)))))
  
(define EQ
  (lambda (m)
    (lambda (n)
      ((and ((LEQ m) n)) ((LEQ n) m)))))

;;;-------- pair --------

(define pair
  (lambda (x)
    (lambda (y)
      (lambda (z)
        ((z x) y)))))

(define first
  (lambda (p)
    (p (lambda (x)
          (lambda (y)
            x)))))   

(define second
  (lambda (p)
    (p (lambda (x)
          (lambda (y)
            y)))))   

;;;-------- list --------

(define nil
  (lambda (c)
    (lambda (n) n)))

(define isnil
  (lambda (l)
    ((l (lambda (h)
          (lambda (t) false))) true)))

(define cons
  (lambda (h)
    (lambda (t)
      (lambda (c)
        (lambda (n)
          ((c h) ((t c) n)))))))

(define head
  (lambda (l)
    ((l (lambda (h)
          (lambda (t) h))) false)))

(define tail
  (lambda (l)
    (lambda (c)
      (lambda (n)
        ( (((l (lambda (h)
                  (lambda (t)
                    (lambda (g)
                      ((g h) (t c)))))) (lambda (t) n)) ((lambda (h)
                                                            (lambda (t) t)))) )))))
