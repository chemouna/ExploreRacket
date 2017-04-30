#lang racket
(for/list ([x '(1 2 3)]
           #:when (odd? x))
   (+ x 1))

;; unzip in racket (Continuation passing style)
(define (unzip/callback lst k)
  (match lst
    ['() (k '() '())]
    [(cons (list a b) tl)
       (unzip/callback tl (λ (as bs)
                    (k (cons a as) (cons b bs))))]))


(unzip/callback '((1 2) (3 4) (5 6)) (λ (as bs)
  as))