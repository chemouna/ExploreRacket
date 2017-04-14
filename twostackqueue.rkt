#lang racket

(define empty-stack null)

(define (stack-empty? s)
  (null? s)) 

(define (push s x)
  (cons x s))

(define (pop s)
  (values (car s) (cdr s)))

(define empty-queue (cons empty-stack empty-stack))

(define (queue-empty? queue)
  (and (null? (car queue))
       (null? (car queue))))

(define (enqueue q x)
  (match-define (cons xs ys) q)
  (cons (push x xs) ys))

(define (dequeue q)
  (match-define (cons xs ys) q)
  (cond [(stack-empty? ys)
         (dequeue (cons empty-stack (transfer xs ys)))]
        [else
         (define-values (x r) (pop ys))
         (values x (cons xs r))]))

(define (transfer src dst)
  (cond [(stack-empty? src) dst]
        [else (define-values (x xs) (pop src))
              (transfer xs (push dst x))]))
