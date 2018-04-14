#lang racket

(require racket/trace)

; learning how to use variadic functions 
(define (app op . args)
  (display "args: ") (display args) (newline)
  (if (= (length args) 1)
      (car args)
      (if (= (length args) 2)
          (op (car args) (cadr args))
          (apply app op (cons (op (car args) (cadr args)) (cddr args))))))

(trace app)

(app + 1)
(app + 1 2)
(app + 1 2 3)
