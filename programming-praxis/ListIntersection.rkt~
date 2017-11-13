#lang racket

;; intersection of two list in O(n^2)
(define (intersection_o_n2 l1 l2)
  (let loop ([l1 l1])
    (cond
      [(null? l1 '())]
      [(member (car l1) l2)
       (cons (car l1) (loop (cdr l1)))]
      [else
       (loop (cdr l1))])))
              