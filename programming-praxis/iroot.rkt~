#lang racket

;; iroot(k, n) returns the largest integer x such that x^k does not exceed n

;; Integer root using newton method

(define (iroot k n)
  (let ((k_minus_1 (- k 1)))
    (let loop ((u n)(s (+ n 1)))
      (if (<= s u) s
          (loop (quotient (+ (* k_minus_1 u) (quotient n (expt u k_minus_1))) k) u)))))


