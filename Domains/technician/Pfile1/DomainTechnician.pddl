(define (domain aufgabe6)

    (:types
        location status pobject - object
        fertigungsanlage agent - pobject
        techniker - agent
    )

    (:constants
        red green - status
    )

    (:predicates
    	(myAgent ?t - techniker)
    	(responsibility ?l - location ?t - techniker)
    )
    (:functions
        (at ?o - pobject) - location
        (status_of ?c - fertigungsanlage) - status
    )

    (:action moveTo
        :parameters (?from - location ?to - location ?t - techniker)
        :precondition
        (and
            (myAgent ?t)
            (=(at ?t)?from)
            )
        :effect
        (and
            (assign (at ?t) ?to)
        )
    )

    (:action maintenance
        :parameters (?l - location ?c - fertigungsanlage ?t - techniker)
        :precondition
        (and
            (myAgent ?t)
            (=(at ?c)?l)
            (=(at ?t)?l)
            (=(status_of ?c)red)
            (responsibility ?l ?t)
        )
        :effect
        (and
            (assign (status_of ?c)green)
        )
    )

)