#lang racket

(define empty-stack null)

(define (stack-empty? s)
  (null? s)) 

(define (push x s)
  (cons x s))

(define (pop s)
  (values (car s) (cdr s)))
  
(define empty-queue (cons empty-stack empty-stack))

(define (queue-empty? queue)
  (and (null? (car queue))
       (null? (car queue))))

