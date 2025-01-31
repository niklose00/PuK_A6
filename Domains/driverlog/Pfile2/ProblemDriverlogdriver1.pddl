(define (problem DLOG-2-2-3)
(:domain driverlog)
(:objects
 driver1 driver2 - driver
 truck1 truck2 - truck
 package1 package2 package3 - obj
 s0 s1 s2 p0-1 p0-2 p1-0 p2-1 - location
)
(:shared-data
    (empty ?v - truck)
    ((at ?d - driver) - (either location truck))
    ((pos ?t - truck) - location)
    ((in ?o - obj) - (either location truck)) - 
driver2
)
(:init (myAgent driver1)
 (= (at driver1) s0)
 (= (at driver2) s0)
 (= (pos truck1) s0)
 (empty truck1)
 (= (pos truck2) s1)
 (empty truck2)
 (= (in package1) s2)
 (= (in package2) s1)
 (= (in package3) s1)
 (not (link s0 s0))
 (not (path s0 s0))
 (link s0 s1)
 (not (path s0 s1))
 (link s0 s2)
 (not (path s0 s2))
 (not (link s0 p0-1))
 (path s0 p0-1)
 (not (link s0 p0-2))
 (path s0 p0-2)
 (not (link s0 p1-0))
 (not (path s0 p1-0))
 (not (link s0 p2-1))
 (not (path s0 p2-1))
 (link s1 s0)
 (not (path s1 s0))
 (not (link s1 s1))
 (not (path s1 s1))
 (link s1 s2)
 (not (path s1 s2))
 (not (link s1 p0-1))
 (path s1 p0-1)
 (not (link s1 p0-2))
 (not (path s1 p0-2))
 (not (link s1 p1-0))
 (not (path s1 p1-0))
 (not (link s1 p2-1))
 (path s1 p2-1)
 (link s2 s0)
 (not (path s2 s0))
 (link s2 s1)
 (not (path s2 s1))
 (not (link s2 s2))
 (not (path s2 s2))
 (not (link s2 p0-1))
 (not (path s2 p0-1))
 (not (link s2 p0-2))
 (path s2 p0-2)
 (not (link s2 p1-0))
 (not (path s2 p1-0))
 (not (link s2 p2-1))
 (path s2 p2-1)
 (not (link p0-1 s0))
 (path p0-1 s0)
 (not (link p0-1 s1))
 (path p0-1 s1)
 (not (link p0-1 s2))
 (not (path p0-1 s2))
 (not (link p0-1 p0-1))
 (not (path p0-1 p0-1))
 (not (link p0-1 p0-2))
 (not (path p0-1 p0-2))
 (not (link p0-1 p1-0))
 (not (path p0-1 p1-0))
 (not (link p0-1 p2-1))
 (not (path p0-1 p2-1))
 (not (link p0-2 s0))
 (path p0-2 s0)
 (not (link p0-2 s1))
 (not (path p0-2 s1))
 (not (link p0-2 s2))
 (path p0-2 s2)
 (not (link p0-2 p0-1))
 (not (path p0-2 p0-1))
 (not (link p0-2 p0-2))
 (not (path p0-2 p0-2))
 (not (link p0-2 p1-0))
 (not (path p0-2 p1-0))
 (not (link p0-2 p2-1))
 (not (path p0-2 p2-1))
 (not (link p1-0 s0))
 (not (path p1-0 s0))
 (not (link p1-0 s1))
 (not (path p1-0 s1))
 (not (link p1-0 s2))
 (not (path p1-0 s2))
 (not (link p1-0 p0-1))
 (not (path p1-0 p0-1))
 (not (link p1-0 p0-2))
 (not (path p1-0 p0-2))
 (not (link p1-0 p1-0))
 (not (path p1-0 p1-0))
 (not (link p1-0 p2-1))
 (not (path p1-0 p2-1))
 (not (link p2-1 s0))
 (not (path p2-1 s0))
 (not (link p2-1 s1))
 (path p2-1 s1)
 (not (link p2-1 s2))
 (path p2-1 s2)
 (not (link p2-1 p0-1))
 (not (path p2-1 p0-1))
 (not (link p2-1 p0-2))
 (not (path p2-1 p0-2))
 (not (link p2-1 p1-0))
 (not (path p2-1 p1-0))
 (not (link p2-1 p2-1))
 (not (path p2-1 p2-1))
)
(:global-goal (and
 (= (at driver1) s1)
 (= (at driver2) s1)
 (= (pos truck1) s2)
 (= (pos truck2) s0)
 (= (in package1) s0)
 (= (in package2) s2)
 (= (in package3) s0)
))
)
