#lang racket

(define (vector-swap! v i j)
  (define temp (vector-ref v i))
  (vector-set! v i (vector-ref v j))
  (vector-set! v j temp))


(define (dutch-flag! flag)
  (let loop ([r 0][w 0][b (- ((vector-length flag) 1)])
    (cond
      [(> w b) flag]

      [(eq? (vector-ref flag w) 'R)
       (vector-swap! flag r w)
       (loop (+ r 1) (+ w 1) b)]

      [(eq? (vector-ref flag w) 'W)
       (loop r (+ w 1) b)]

      [(eq? (vector-ref flag w) 'B)
       (vector-swap! flag w b)
       (loop r w (- b 1))])))
             