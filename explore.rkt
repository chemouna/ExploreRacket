#lang racket
(for/list ([x '(1 2 3)]
           #:when (odd? x))
   (+ x 1))