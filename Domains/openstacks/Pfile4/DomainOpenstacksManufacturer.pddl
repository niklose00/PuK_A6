(define (domain openstacks)
(:requirements :typing :equality :fluents)
(:types
    order product count - object)
(:constants
 p1 p2 p3 p4 p5 p6 p7 p8 - product
 o1 o2 o3 o4 o5 o6 o7 o8 - order
)
(:predicates
  (includes ?o - order ?p - product)
  (waiting ?o - order)
  (started ?o - order)
  (shipped ?o - order)
  (made ?p - product))
(:functions
  (stacks-avail) - count
  (next-count ?s) - count)
(:action open-new-stack
 :parameters (?open ?new-open - count)
 :precondition (and (= (stacks-avail) ?open) (= (next-count ?open) ?new-open))
 :effect (assign (stacks-avail) ?new-open))
(:action make-product-p1
 :parameters ()
 :precondition (and
(not (made p1))
(started o1)
(started o6)
(started o7)
)
 :effect (and
(made p1)
))
(:action make-product-p2
 :parameters ()
 :precondition (and
(not (made p2))
(started o5)
)
 :effect (and
(made p2)
))
(:action make-product-p3
 :parameters ()
 :precondition (and
(not (made p3))
(started o8)
)
 :effect (and
(made p3)
))
(:action make-product-p4
 :parameters ()
 :precondition (and
(not (made p4))
(started o3)
)
 :effect (and
(made p4)
))
(:action make-product-p5
 :parameters ()
 :precondition (and
(not (made p5))
(started o2)
)
 :effect (and
(made p5)
))
(:action make-product-p6
 :parameters ()
 :precondition (and
(not (made p6))
(started o5)
)
 :effect (and
(made p6)
))
(:action make-product-p7
 :parameters ()
 :precondition (and
(not (made p7))
(started o4)
)
 :effect (and
(made p7)
))
(:action make-product-p8
 :parameters ()
 :precondition (and
(not (made p8))
(started o3)
)
 :effect (and
(made p8)
))
)
