#lang racket

;; intersection of two lists in O(n^2)
(define (intersection_o_n2 l1 l2)
  (let loop ([l1 l1])
    (cond
      [(null? l1) '()]
      [(member (car l1) l2)
       (cons (car l1) (loop (cdr l1)))]
      [else
       (loop (cdr l1))])))

;; or same O(n^2) using for/list
(define (intersection_o_n2_2 l1 l2)
  (for/list ([e (in-list l1)]
             #:when (member e l2))
    e))

;; intersection of two lists in O(n logn)
(define (intersection_o_nlogn l1 l2)
  (let loop ([l1 (sort l1 <)]
              [l2 (sort l2 <)])
    (cond
      [(null? l1) '()]
      [(null? l2) '()]

      [(< (car l1) (car l2))
       (loop (cdr l1) l2)]

      [(> (car l1) (car l2))
       (loop l1 (cdr l2))]
      
      [else
       (cons (car l1) (loop (cdr l1) (cdr l2)))])))

;; intersection of two lists in O(n)
(define (intersection_o_n l1 l2)
  (define l2-hash (for/hash ([e2 (in-list l2)]) (values e2 #t)))
  (let loop ([l1 l1])
    (cond
      [(null? l1) '()]

      [(hash-has-key? l2-hash (car l1))
       (cons (car l1) (loop (cdr l1)))]

      [else
       (loop (cdr l1))])))

