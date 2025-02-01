(define (problem DLOG-2-2-2)
(:domain driverlog)
(:objects
 driver1 driver2 - driver
 truck1 truck2 - truck
 package1 package2 - obj
 s0 s1 s2 p1-0 p1-2 - location
)
(:shared-data
    (empty ?v - truck)
    ((at ?d - driver) - (either location truck))
    ((pos ?t - truck) - location)
    ((in ?o - obj) - (either location truck)) -
driver1
)
(:init (myAgent driver2)
 (= (at driver1) s2)
 (= (at driver2) s2)
 (= (pos truck1) s0)
 (empty truck1)
 (= (pos truck2) s0)
 (empty truck2)
 (= (in package1) s0)
 (= (in package2) s0)
 (not (link s0 s0))
 (not (path s0 s0))
 (link s0 s1)
 (not (path s0 s1))
 (link s0 s2)
 (not (path s0 s2))
 (not (link s0 p1-0))
 (path s0 p1-0)
 (not (link s0 p1-2))
 (not (path s0 p1-2))
 (link s1 s0)
 (not (path s1 s0))
 (not (link s1 s1))
 (not (path s1 s1))
 (link s1 s2)
 (not (path s1 s2))
 (not (link s1 p1-0))
 (path s1 p1-0)
 (not (link s1 p1-2))
 (path s1 p1-2)
 (link s2 s0)
 (not (path s2 s0))
 (link s2 s1)
 (not (path s2 s1))
 (not (link s2 s2))
 (not (path s2 s2))
 (not (link s2 p1-0))
 (not (path s2 p1-0))
 (not (link s2 p1-2))
 (path s2 p1-2)
 (not (link p1-0 s0))
 (path p1-0 s0)
 (not (link p1-0 s1))
 (path p1-0 s1)
 (not (link p1-0 s2))
 (not (path p1-0 s2))
 (not (link p1-0 p1-0))
 (not (path p1-0 p1-0))
 (not (link p1-0 p1-2))
 (not (path p1-0 p1-2))
 (not (link p1-2 s0))
 (not (path p1-2 s0))
 (not (link p1-2 s1))
 (path p1-2 s1)
 (not (link p1-2 s2))
 (path p1-2 s2)
 (not (link p1-2 p1-0))
 (not (path p1-2 p1-0))
 (not (link p1-2 p1-2))
 (not (path p1-2 p1-2))
)
(:global-goal (and
 (= (at driver1) s1)
 (= (pos truck1) s1)
 (= (in package1) s0)
 (= (in package2) s0)
))
)
