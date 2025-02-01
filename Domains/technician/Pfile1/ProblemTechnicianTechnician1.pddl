(define (problem problem1) (:domain aufgabe6)
    (:objects
        t1 t2 - techniker
        office b1 b2 b3  - location
        c1 c2 c3 c4 - fertigungsanlage
    )
    (:shared-data
     	((status_of ?c - fertigungsanlage) - status)
    	((at ?o - pobject) - location)
    	-t2
    )
    (:init
        (myAgent t1)
        (=(at t1)office)
        (=(at c1)b2)
        (=(at c4)b1)

        (=(status_of c1)red)
        (=(status_of c2)red)
        (=(status_of c3)red)
        (=(status_of c4)red)
        (responsibility b1 t1)
        (responsibility b2 t2)
        (responsibility b3 t1)
        (responsibility b3 t2)
    )

    (:global-goal
    (and
        (=(status_of c1)green)
        (=(status_of c2)green)
        (=(status_of c3)green)
        (=(status_of c4)green)
        (=(at t1)office)
        (=(at t2)office)
        )
    )
)