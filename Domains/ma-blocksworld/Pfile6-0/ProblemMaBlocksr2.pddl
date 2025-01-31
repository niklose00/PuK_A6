(define (problem BLOCKS-6-0)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 f d c e b a - block
)
(:shared-data
  ((on ?b - block) - block)
  (ontable ?b - block)
  (clear ?b - block)
  ((holding ?r - robot) - block) - 
(either r0 r1 r3)
)
(:init
 (myAgent r2)
 (= (holding r0) nob)
 (= (holding r1) nob)
 (= (holding r2) nob)
 (= (holding r3) nob)
 (clear f)
 (= (on f) e)
 (not (ontable f))
 (clear d)
 (= (on d) a)
 (not (ontable d))
 (not (clear c))
 (ontable c)
 (= (on c) nob)
 (not (clear e))
 (= (on e) b)
 (not (ontable e))
 (not (clear b))
 (ontable b)
 (= (on b) nob)
 (not (clear a))
 (= (on a) c)
 (not (ontable a))
)
(:global-goal (and
 (= (on c) b)
 (= (on b) a)
 (= (on a) e)
 (= (on e) f)
 (= (on f) d)
)))
