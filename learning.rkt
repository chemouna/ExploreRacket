#lang racket

(require racket/match)

(match 2
  [1 'one]
  [2 'two]
  [3 'three])

(match '(1 2)
  [(list 0 1) 'one]
  [(list 1 2) 'two])

(match #(1 2)
  [(list 1 2) 'list]
  [(vector 1 2) 'vector])


(struct document (author title content))
(struct book document (publisher))
(struct paper (journal) #:super struct:document)

(struct cell ([content #:mutable]) #:transparent)
(define a-cell (cell 0))
(set-cell-content! a-cell 1)


(struct color (r g b) #:constructor-name -color)
(struct shoe ([size #:mutable] color))
(shoe 8 (-color 192 157 233))
(define a-shoe (shoe 8 (-color 0 0 0)))
(set-shoe-size! a-shoe 5)

(shoe? a-shoe)
(shoe? cell)

(shoe-size a-shoe)

(struct posn (x y))
(define p1 (posn 1 2))
(posn-x p1)
(define p2 (struct-copy posn p1 [x 4]))
(posn-x p2)
(posn-x p1)