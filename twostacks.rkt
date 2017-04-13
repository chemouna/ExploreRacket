#lang racket

(define mem-size 20)
(define arena (make-vector mem-size))

(define lo-one 0) (define hi-one 0)
(define lo-two (- mem-size 1)) (define hi-two (- mem-size 1))

(define (push-one x)
  (cond ((< lo-two hi-one) (error 'push-one "arena overflow"))
  (else (vector-set! arena hi-one x) (set! hi-one (+ hi-one 1)))))

(define (push-two x)
  (cond ((< lo-two hi-one) (error 'push-two "arena overflow"))
  (else (vector-set! arena lo-two x) (set! lo-two (- lo-two 1)))))

(define (pop-one)
  (cond ((= lo-one hi-one) (error 'pop-one "empty stack"))
  (else (set! hi-one (- hi-one 1)) (vector-ref arena hi-one))))

(define (pop-two)
  (cond ((= lo-two hi-two) (error 'pop-two "empty stack"))
  (else (set! lo-two (+ lo-two 1)) (vector-ref arena lo-two))))
