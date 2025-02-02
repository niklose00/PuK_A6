(define (problem BLOCKS-5-1)
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
(either r0 r1 r2)
)
(:init
 (myAgent r3)
 (= (holding r0) nob)
 (= (holding r1) nob)
 (= (holding r2) nob)
 (= (holding r3) nob)
 (clear b)
 (= (on b) a)
 (not (ontable b))
 (clear e)
 (ontable e)
 (= (on e) nob)
 (not (clear a))
 (= (on a) d)
 (not (ontable a))
 (clear c)
 (ontable c)
 (= (on c) nob)
 (not (clear d))
 (ontable d)
 (= (on d) nob)
)
(:global-goal (and
 (= (on d) c)
 (= (on c) b)
 (= (on b) a)
 (= (on a) e)
)))
