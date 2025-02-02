(define (problem BLOCKS-5-0)
(:domain ma-blocksworld)
(:objects
 r0 r1 r2 r3 - robot
 b e a c d - block
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
 (not (clear b))
 (= (on b) a)
 (not (ontable b))
 (not (clear e))
 (= (on e) b)
 (not (ontable e))
 (not (clear a))
 (ontable a)
 (= (on a) nob)
 (clear c)
 (= (on c) e)
 (not (ontable c))
 (clear d)
 (ontable d)
 (= (on d) nob)
)
(:global-goal (and
 (= (on a) e)
 (= (on e) b)
 (= (on b) d)
 (= (on d) c)
)))
