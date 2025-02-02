(define (problem BLOCKS-5-2)
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
 (ontable b)
 (= (on b) nob)
 (not (clear e))
 (= (on e) c)
 (not (ontable e))
 (not (clear a))
 (= (on a) b)
 (not (ontable a))
 (not (clear c))
 (= (on c) a)
 (not (ontable c))
 (clear d)
 (= (on d) e)
 (not (ontable d))
)
(:global-goal (and
 (= (on d) c)
 (= (on c) b)
 (= (on b) e)
 (= (on e) a)
)))
